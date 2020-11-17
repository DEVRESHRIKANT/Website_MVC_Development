using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
//using Excel = Microsoft.Office.Interop.Visio;
using Microsoft.CSharp;
using System.Text;
namespace DEVRE
{
    public partial class FileUploads : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string strFileName = FileUpload1.FileName;
            string[] strSep = FileUpload1.FileName.Split('.');
            int arrLength = strSep.Length - 1;
            string strExt = strSep[arrLength].ToString().ToUpper(); //Save the uploaded file to the folder
            string strPathToUpload = Server.MapPath("Datadir");  //Map-path to the folder where html to be saved
            string strPathToConvert = Server.MapPath("WordToHtml");
            object FileName = strPathToUpload + "\\" + FileUpload1.FileName;
            object FileToSave = strPathToConvert + "\\" + FileUpload1.FileName + ".htm";
 
    
        }
        protected void btnDisplay_Click(object sender, EventArgs e)
        {
           // // Start Uploaded Image Preview Display works
            //Session["ImageBytes"] = FileUpload1.FileBytes;
            //Image1.ImageUrl = "~/ImageHandler.ashx";
         //   // End Uploaded Image Preview
          
            
            
            //int File_Id = 2;
            //if (Request.QueryString["File_Id"] != null)
            //{
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();
           
            //string strQuery = "select FileName, ContentType, FileData from tbl_Files where File_Id=@id";
                string strQuery = "select FileName, ContentType, FileData from tbl_Files where File_Id=1";

                SqlCommand cmd = new SqlCommand(strQuery);
                //SqlDataReader dr = cmd.ExecuteReader();
                //grdImage1.DataSource = dr;
                //grdImage1.DataBind();                    

        //        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["FileData"]);
        //        DataTable dt = GetData(cmd);
        //        if (dt != null)
        //        {
                    
        //            Byte[] bytes = (Byte[])dt.Rows[0]["FileData"];
        //            Response.Buffer = true;
        //            Response.BufferOutput = true; 
        //            Response.Charset = "";
        //            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //            Response.ContentType = dt.Rows[0]["ContentType"].ToString();
        //            Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["FileName"].ToString());
        //            Response.CacheControl = "public";
        //            Response.ContentEncoding = System.Text.Encoding.GetEncoding(1251);
        //            Response.OutputStream.Write(bytes, 0, bytes.Length);

        //            Response.BinaryWrite(bytes);                    
        //           grdImage1.BackImageUrl = dt.Rows[0]["ContentType"].ToString();                    
        //            Response.Flush();
        //            Response.End();
        //        }
        //    }
        }
        //protected void ToHTML(object sender, EventArgs e)
        //{
        //    switch (fileInfo.Extension.ToLower())
        //    {
        //        case ".doc":
        //        case ".docx":
        //            result = WordToHTML(refSourceFilePath, refTargetDirectory);
        //            break;
        //        case ".xls":
        //        case ".xlsx":
        //            result = ExcelToHTML(refSourceFilePath.ToString(), refTargetDirectory.ToString());
        //            break;
        //        case ".ppt":
        //        case ".pptx":
        //            result = PowerPointToHTML(refSourceFilePath.ToString(), refTargetDirectory.ToString());
        //            break;
        //        case ".vsd":
        //        case ".vsdx":
        //            result = VisioToHTML(refSourceFilePath.ToString(), refTargetDirectory.ToString());
        //            break;

        //        default:
        //            throw new Exception(fileInfo.Extension.ToLower() + " files are not supported");
        //    }
        //}
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Read the file and convert it to Byte Array
            string filePath = FileUpload1.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;

            //Set the contenttype based on File Extension
            switch (ext)
            {
                case ".doc":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".docx":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".xls":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".xlsx":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
                case ".pdf":
                    contenttype = "application/pdf";
                    break;
            }
            if (contenttype != String.Empty)
            {

                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            
                //insert the file into database
                string strQuery = "insert into tbl_Files(FileName, ContentType, FileData)" +
                   " values (@Name, @ContentType, @Data)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
                  = contenttype;
                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                InsertUpdateData(cmd);
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "File Uploaded Successfully";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "File format not recognised." +
                  " Upload Image/Word/PDF/Excel formats";
            }

        }

        private DataTable GetData(SqlCommand cmd)
        {
            DataTable dt = new DataTable();
            SqlConnection sqlConn = new SqlConnection();
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();
           
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConn;
            try
            {
                sqlConn.Open();
                sda.SelectCommand = cmd;
                sda.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
            finally
            {
                sqlConn.Close();
                sda.Dispose();
                sqlConn.Dispose();
            }
        }

        //private void download(DataTable dt)
        //{
        //    Byte[] bytes = (Byte[])dt.Rows[0]["FileData"];
        //    Response.Buffer = true;
        //    Response.Charset = "";
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    Response.ContentType = dt.Rows[1]["ContentType"].ToString();
        //Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["FileName"].ToString());
        //    Response.BinaryWrite(bytes);
        //    Response.Flush();
        //    Response.End();
        //}

        private Boolean InsertUpdateData(SqlCommand cmd)
        {
            SqlConnection sqlConn = new SqlConnection();
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConn;
            try
            {
                sqlConn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                return false;
            }
            finally
            {
                sqlConn.Close();
                sqlConn.Dispose();
            }

        }
        //public string ReadPdfFile(string fileName)
        //{
        //    StringBuilder text = new StringBuilder();

        //    if (File.Exists(fileName))
        //    {
        //        PdfReader pdfReader = new PdfReader(fileName);

        //        for (int page = 1; page <= pdfReader.NumberOfPages; page++)
        //        {
        //            ITextExtractionStrategy strategy = new SimpleTextExtractionStrategy();
        //            string currentText = PdfTextExtractor.GetTextFromPage(pdfReader, page, strategy);

        //            currentText = Encoding.UTF8.GetString(ASCIIEncoding.Convert(Encoding.Default, Encoding.UTF8, Encoding.Default.GetBytes(currentText)));
        //            text.Append(currentText);
        //        }
        //        pdfReader.Close();
        //    }
        //    return text.ToString();
        //}

    }
}