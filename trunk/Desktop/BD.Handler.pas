unit BD.Handler;

interface

uses System.Classes, System.Generics.Defaults, Generics.Collections, OXmlPDOM, Data.DB,
  Spring.Collections, System.TypInfo;

type
  TMapList = TDictionary<String, String>;

  THandler = class(TObject)
    class procedure SetDatabaseFields(AObject: TObject; ADataSet: TDataSet;
      const Mapping: TMapList); static;
    class procedure MergeIntoDatabase(AObject: TObject; ADataSet: TDataSet;
      const Mapping: TMapList; KeyField: String); static;
    class function LoadFromXML<T: class, constructor>(ANode: PXMLNode; const Mapping: TMapList): T;
  end;

implementation

{ THandler }

class procedure THandler.SetDatabaseFields(AObject: TObject; ADataSet: TDataSet;
  const Mapping: TMapList);
var
  Key, SubKey: String;
  Obj: TObject;
  Found: Boolean;
begin
  // Notasjon for å støtte sub-objecter
  for Key in Mapping.Keys do begin
    if Pos('.', Mapping.Items[Key]) = 0 then
      ADataSet.FieldByName(Key).AsVariant :=
        GetPropValue(AObject, Mapping.Items[Key])
    else begin
      // Drilldown to sub-object
      SubKey := Mapping.Items[Key];
      Obj := AObject;
      Found := True;
      while (Pos('.', SubKey) > 0) and (Found) do begin
        Obj := GetObjectProp(Obj, Copy(SubKey, 1, Pos('.', SubKey) - 1));
        Delete(SubKey, 1, Pos('.', SubKey));
        Found := (Obj <> nil);
      end;
      if Found then
        ADataSet.FieldByName(Key).AsVariant := GetPropValue(Obj, SubKey);
    end;
  end;
end;

class function THandler.LoadFromXML<T>(ANode: PXMLNode;
  const Mapping: TMapList): T;
var
  Obj: T;
  TmpNode: PXMLNode;
  Sub, Key: String;
begin
  Result := nil;
  Obj := T.Create;
  // Notasjon for å støtte attributter
  for Key in Mapping.Keys do
    if Pos('.', Mapping.Items[Key]) = 0 then begin
      if ANode.SelectNode(Mapping.Items[Key], TmpNode) then
        SetPropValue(Obj, Key, TmpNode.Text);
    end
    else begin
      Sub := Mapping.Items[Key];
      if ANode.SelectNode(Copy(Sub, 1, Pos('.', Sub) -1), TmpNode) then begin
        Delete(Sub, 1, Pos('.', Sub));
        SetPropValue(Obj, Key, TmpNode.Attributes[Sub]);
      end;
    end;
  Result := Obj;
end;

class procedure THandler.MergeIntoDatabase(AObject: TObject; ADataSet: TDataSet;
  const Mapping: TMapList; KeyField: String);
begin
  if ADataSet.Locate(KeyField, GetPropValue(AObject, Mapping.Items[KeyField]),
    []) then
    ADataSet.Edit
  else
    ADataSet.Insert;
  SetDatabaseFields(AObject, ADataSet, Mapping);
  ADataSet.Post;
end;

end.
