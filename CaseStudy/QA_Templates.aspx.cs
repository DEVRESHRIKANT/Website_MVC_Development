using System;
using System.Net;
using System.Text;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Word = Microsoft.Office.Interop.Word;
using Excel = Microsoft.Office.Interop.Excel;
using WordApp = Microsoft.Office.Interop.Word.Application;
using ExcelApp = Microsoft.Office.Interop.Excel.Application;


namespace DEVRE
{
    public partial class QA_Templates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string pdfPath = Server.MapPath("~/SomePDFFile.pdf");
            //WebClient client = new WebClient();
            //Byte[] buffer = client.DownloadData(pdfPath);
            //Response.ContentType = "application/pdf";
            

            //Response.BinaryWrite(buffer);    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            // Start of Try1
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.Charset = "";
            HttpContext.Current.Response.ContentType = "application/msword";
            string strFileName = "GenerateDocument" + ".doc";
            HttpContext.Current.Response.AddHeader("Content-Disposition", "inline;filename=" + strFileName);
            StringBuilder strHTMLContent = new StringBuilder();
            //strHTMLContent.Append(txtTest1.Content);
            
            HttpContext.Current.Response.Write(strHTMLContent);
            HttpContext.Current.Response.End();
            HttpContext.Current.Response.Flush();            
            // End of Try1

            //Start Try2
            //string pdfPath = Server.MapPath("~/test1.pdf");
            //WebClient client = new WebClient();
            //Byte[] buffer = client.DownloadData(pdfPath);
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-length", buffer.Length.ToString());            
            //Response.BinaryWrite(buffer);    
            // End Try 2

            //Start Try 3 - Working
            //Microsoft.Office.Interop.Word.Application WordApp = new Microsoft.Office.Interop.Word.Application();
            //object ExcelPath = Server.MapPath("~/Docs/QA/test1.doc");
            ////object file = "C:\Projects\Shree\Docs\QA\Software_QA_Testing_Templates";
            //object objFalse = false;
            //object objTrue = true;
            //object missing = System.Reflection.Missing.Value;
            //object emptyData = string.Empty;
            //WordApp.Visible = true;
            //Microsoft.Office.Interop.Word.Document aDoc = WordApp.Documents.Open(ref ExcelPath, ref objFalse, ref objFalse,
            //        ref objFalse, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref objTrue,
            //        ref missing, ref missing, ref missing);
            //aDoc.Activate();
            // Start Try3


            // Start Try 4
            //Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
            //object ExcelPath = Server.MapPath("~/Docs/QA/Software_QA_Testing_Templates");
            ////object file = "C:\Projects\Shree\Docs\QA\Software_QA_Testing_Templates.Excel";
            //object objFalse = false;
            //object objTrue = true;
            //object missing = System.Reflection.Missing.Value;
            //object emptyData = string.Empty;
            //ExcelApp.Visible = true;
            //Microsoft.Office.Interop.Excel.Worksheet aExcel = ExcelApp.Worksheets.Application.WorkbookOpen(ref ExcelPath, ref objFalse, ref objFalse,
            //        ref objFalse, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref objTrue,
            //        ref missing, ref missing, ref missing);
            //aExcel.Activate();
            //End Try 4
        }
    }
}