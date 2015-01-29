unit BD.Utils;

interface

uses System.Classes, Generics.Collections, OXmlPDOM, Data.DB,
  Spring.Collections, System.TypInfo;

type
  TMapList = TDictionary<String, String>;

  THandler = class(TObject)
    class function NewObjectList<T: class>: IList<T>;
    class procedure SetDatabaseFields(AObject: TObject;
      ADataSet: TDataSet; const Mapping: TMapList); static;
    class procedure MergeIntoDatabase(AObject: TObject; ADataSet: TDataSet;
      const Mapping: TMapList; KeyField: String); static;
  end;


implementation

{ THandler }

class function THandler.NewObjectList<T>: IList<T>;
begin
  Result := TCollections.CreateObjectList<T>;
end;

class procedure THandler.SetDatabaseFields(AObject: TObject;
  ADataSet: TDataSet; const Mapping: TMapList);
var
  Key: String;
begin
  //Her bør det støttes notasjon for sub-objecter
  for Key in Mapping.Keys do
    ADataSet.FieldByName(Mapping.Items[Key]).AsVariant :=
      GetPropValue(AObject, Key);
end;

class procedure THandler.MergeIntoDatabase(AObject: TObject;
  ADataSet: TDataSet; const Mapping: TMapList; KeyField: String);
var
  Key, PropName: String;
begin
  for Key in Mapping.Keys do
    if Mapping.Items[Key] = KeyField then begin
      PropName := Key;
      Break;
    end;

  if ADataSet.Locate(KeyField, GetPropValue(AObject, PropName)  , []) then
    ADataSet.Edit
  else
    ADataSet.Insert;

  SetDataBaseFields(AObject, ADataSet, Mapping);
  ADataSet.Post;
end;

end.
