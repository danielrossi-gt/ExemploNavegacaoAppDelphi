unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.TabControl, FMX.Layouts, FMX.MultiView, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    tabLogin: TTabItem;
    tabMain: TTabItem;
    tabLancamentos: TTabItem;
    ActionList: TActionList;
    actMain: TChangeTabAction;
    actLancamentos: TChangeTabAction;
    ToolBar1: TToolBar;
    btnMenu: TSpeedButton;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ToolBar2: TToolBar;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  actMain.ExecuteTarget(Self);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TabControl1.ActiveTab := tabLogin;
  TabControl1.TabPosition := TTabPosition.None;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  actMain.ExecuteTarget(Self);
  MultiView1.HideMaster;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  actLancamentos.ExecuteTarget(Self);
  MultiView1.HideMaster;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  actMain.ExecuteTarget(Self);
end;

end.
