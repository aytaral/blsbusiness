unit BD.Utils;

interface

uses System.Classes, System.Generics.Defaults, Generics.Collections, OXmlPDOM, Data.DB,
  Spring.Collections, System.TypInfo;

type
  TMapList = TDictionary<String, String>;

  THandler = class(TObject)
    class function NewObjectList<T: class>: IList<T>;
    class procedure SetDatabaseFields(AObject: TObject; ADataSet: TDataSet;
      const Mapping: TMapList); static;
    class procedure MergeIntoDatabase(AObject: TObject; ADataSet: TDataSet;
      const Mapping: TMapList; KeyField: String); static;
    class function LoadFromXML<T: class>(ANode: PXMLNode; const Mapping: TMapList): T;
  end;

implementation

{ THandler }

class function THandler.NewObjectList<T>: IList<T>;
begin
  Result := TCollections.CreateObjectList<T>;
end;

class procedure THandler.SetDatabaseFields(AObject: TObject; ADataSet: TDataSet;
  const Mapping: TMapList);
var
  Key, SubKey: String;
  Obj: TObject;
  Found: Boolean;
begin
  // Her bør det støttes notasjon for sub-objecter
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
begin
  Result := nil;

//  Obj :=


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
