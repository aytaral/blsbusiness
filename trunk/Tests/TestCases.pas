unit TestCases;

interface

uses
  DUnitX.TestFramework, Classes, BD.Handler, OXmlPDOM;

type

  TMyTestObject = class
  private
    FName: String;
    FAge: Integer;
    FSex: Char;
  published
    property Name: String read FName write FName;
    property Age: Integer read FAge write FAge;
    property Sex: Char read FSex write FSex;
  end;


  [TestFixture]
  TTestHandlerObject = class(TObject)
  private
    Xml: IXMLDocument;
    Map: TMapList;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestFylkeLoadFromXML;
    [Test]
    procedure TestFylkeLoadFromXMLAttribute;
  end;


implementation

procedure TTestHandlerObject.Setup;
begin
  Xml := TXMlDocument.Create();
  Xml.LoadFromXML('<P><PersonName Sex="M">Abc</PersonName><PersonAge>80</PersonAge></P>');
  Map := TMapList.Create();
end;

procedure TTestHandlerObject.TearDown;
begin
  Map.Free;
end;

procedure TTestHandlerObject.TestFylkeLoadFromXML;
var
  T: TMyTestObject;
begin
  Map.Clear;
  Map.Add('Age', 'PersonAge');
  T := THandler.LoadFromXML<TMyTestObject>(Xml.DocumentElement, Map);

  Assert.AreEqual(80, T.Age);
  if Assigned(T) then
    T.Free;
end;

procedure TTestHandlerObject.TestFylkeLoadFromXMLAttribute;
var
  T: TMyTestObject;
begin
  Map.Clear;
  Map.Add('Sex', 'PersonName.Sex');
  T := THandler.LoadFromXML<TMyTestObject>(Xml.DocumentElement, Map);

  Assert.AreEqual('M', T.Sex);
  if Assigned(T) then
    T.Free;
end;

initialization
  TDUnitX.RegisterTestFixture(TTestHandlerObject);
end.
