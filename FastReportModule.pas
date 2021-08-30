unit FastReportModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_Desgn, FR_IBXDB, FR_DCtrl, FR_E_CSV, FR_E_TXT, FR_E_HTM,
  frRtfExp, FR_Class, frOLEExl, FR_E_HTML2, frexpimg, FR_E_RTF, FR_OLE,
  FR_DSet, FR_DBSet, FR_Rich, FR_RRect, FR_ChBox, FR_Shape, FR_Chart,
  FR_BarC, FR_PTabl, FR_Cross;

type
  TMBSFrModule = class(TForm)
    frOLEExcelExport1: TfrOLEExcelExport;
    frRtfAdvExport1: TfrRtfAdvExport;
    frHTMExport1: TfrHTMExport;
    frCSVExport1: TfrCSVExport;
    frDialogControls1: TfrDialogControls;
    frIBXComponents1: TfrIBXComponents;
    frDesigner1: TfrDesigner;
    frRTFExport1: TfrRTFExport;
    frTextExport1: TfrTextExport;
    frJPEGExport1: TfrJPEGExport;
    frTIFFExport1: TfrTIFFExport;
    frHTML2Export1: TfrHTML2Export;
    frBarCodeObject1: TfrBarCodeObject;
    frChartObject1: TfrChartObject;
    frShapeObject1: TfrShapeObject;
    frCheckBoxObject1: TfrCheckBoxObject;
    frRoundRectObject1: TfrRoundRectObject;
    frRichObject1: TfrRichObject;
    frDBDataSet1: TfrDBDataSet;
    frOLEObject1: TfrOLEObject;
    frCrossObject1: TfrCrossObject;
    frPrintGrid1: TfrPrintGrid;
    frPrintTable1: TfrPrintTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MBSFrModule: TMBSFrModule;

implementation

{$R *.dfm}

end.
