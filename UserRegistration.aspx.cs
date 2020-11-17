using System;
using System.IO;
using System.Collections.Generic;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Drawing.Imaging;
using Microsoft.CSharp;
using System.Text;
using System.Diagnostics;
using Microsoft.Office.Interop.Word;
//using Visio = Microsoft.Office.Interop.Visio;


namespace DEVRE
{
    public partial class UserRegistration : System.Web.UI.Page
    {

        public string Message = string.Empty;           // To store the Error or Message
 //       private Microsoft.Office.Interop.Word.Application Word;     // The Interop Object for Word
 //       private Microsoft.Office.Interop.Visio.Application Visio;     // The Interop Object for Word
        object Unknown = Type.Missing;                   // For passing Empty values
        public enum StatusType { SUCCESS, FAILED };     // To Specify Success or Failure Types
        public StatusType Status;                       // To know the Current Status

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // User Name List
                ShreeLibrary infoProc = new ShreeLibrary();
                ddlRoles.DataTextField = "RoleName";
                ddlRoles.DataValueField = "RoleId";
                ddlRoles.DataSource = infoProc.GetRoleId();
                ddlRoles.DataBind();
                ddlRoles.Items.Insert(0, "Select User Role");
                
                // Project Name List                
                ddlProjects.DataTextField = "ProjectName";
                ddlProjects.DataValueField = "ProjectId";
                ddlProjects.DataSource = infoProc.GetProjectId();
                ddlProjects.DataBind();
                ddlProjects.Items.Insert(0, "Select Project Name");

                // Buttons Visible / Disabled
                btnInsert.Visible = true;
                btnUpdate.Visible = true;
                btnDelete.Visible = true;

            }
        }

       // public string ImageName;
        protected void btnSave_Click(object sender, System.EventArgs e)
        {
            if (txtEmailAddress.Text != null && txtPassword.Text != null)
            {
                
         //       SqlConnection sqlConn = new SqlConnection();
                // Local Database Connection String    
                //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();

                // Production Database Connection String
                //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
                
                // For Production Database
                //String strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                // For Local Database
                String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                
        //        SqlConnection con = new SqlConnection(strConnString);
       //         SqlCommand sqlComm = new SqlCommand();
         
      //          sqlComm.CommandType = CommandType.StoredProcedure;
      //          sqlComm.CommandText = "ssp_InsertUsers";
    //            sqlComm.Connection = con;

              string sqlUserExist = "SELECT Count(*) FROM tbl_Users WHERE EmailAddress = '" + txtEmailAddress.Text + "'";        
              SqlConnection sqlConn = new SqlConnection(strConnString);
              SqlCommand sqlComm = new SqlCommand(sqlUserExist, sqlConn);
              sqlConn.Open();
                int UserCount = (int)sqlComm.ExecuteScalar();
                if (UserCount == 1)
                {
                    lblOutput.Text = "User already Exist, Select another name";
                    return;
                }
                else
                {
                    //   btnDisplay_Click();
                }


                // Image Path + FileName + Extension
                string imgfilePath = ImageFileUpload.PostedFile.FileName;
                string imgfilename = Path.GetFileName(imgfilePath);
                string strImageName = imgfilename;
                string ImageExt = Path.GetExtension(imgfilename);
                string strImagePathToUpload;

                // Document Path + FileName + Extension
                string profilePath = DocumentFileUpload.PostedFile.FileName;
                string profilename = Path.GetFileName(profilePath);
                string strDocumentName = profilename; // DocumentFileUpload.ToString(); //  documentUpload.Value;
                string DocumentExt = Path.GetExtension(profilename);


                // Document Path + FileName + Extension
                Microsoft.Office.Interop.Word.Application objWord = new Application(); 
                //This creates new object of Word.ApplicationClass
                //string strDocPathToUpload;
                //Path to upload files "Uploaded"
                string strPathToConvert;
                //Path to convert uploaded files and save
                object fltDocFormat = 10;
                //For filtered HTML Output
                object missing = System.Reflection.Missing.Value;
                //Is just to skeep the parameters which are passed as boject reference, these are seems to be optional parameters
                object readOnly = false;
                object isVisible = false;
                //The process has to be in invisible mode 


              //  byte byteStatus = 1;
                DateTime txtRegisterDate = DateTime.Today;
                DateTime txtModifiedDate = DateTime.Now;

                // Selected User
                string intRoleId = ddlRoles.SelectedValue;
                string txtRoleName = ddlRoles.SelectedItem.ToString();

                // Selected Project
                string intProjectId = ddlProjects.SelectedValue;
                string txtProjectName = ddlProjects.SelectedItem.ToString();

                //      string strLoginId = txtEmailAddress.Text;
                string strYourIp = HttpContext.Current.Request.UserHostAddress;

                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.CommandText = "ssp_InsertUser";

                //sqlComm.CommandText = "INSERT INTO tbl_Users(FirstName, LastName, Domain, Location, UserPassword, PhoneNumber, EmailAddress," +
                //    "ProjectId, WebsiteURL, RegisterDate, RoleId, Comments," +
                //    "Technology, ImageName, ProfileName, Status, ModifiedDate) VALUES('" + txtFirstName.Text + "', '" + txtLastName.Text + "','" + txtDomain.Text + "','" + txtLocation.Text +
                //    "','" + txtPassword.Text + "','" + txtUserPhone.Text + "','" + txtEmailAddress.Text + "','" + intProjectId + "','" + txtWebsiteURL.Text +
                //    "','" + txtRegisterDate.Date + "','" + intRoleId + "', '" + txtComments.Text + "', '" + txtTechnology.Text + "','" + strImageName + "','" + strDocumentName +
                //    "', '" + byteStatus + "', '" + txtModifiedDate + "')";

                sqlComm.Parameters.Add("@ProjectId", SqlDbType.Int).Value = ddlProjects.SelectedValue;
                sqlComm.Parameters.Add("@UserPassword", SqlDbType.Text).Value = txtPassword.Text;
                sqlComm.Parameters.Add("@UserName", SqlDbType.Text).Value = txtLastName.Text;
                sqlComm.Parameters.Add("@Location", SqlDbType.VarChar).Value = txtLocation.Text;
                sqlComm.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = txtUserPhone.Text;
                sqlComm.Parameters.Add("@EmailAddress", SqlDbType.Text).Value = txtEmailAddress.Text;
                sqlComm.Parameters.Add("@WebsiteURL", SqlDbType.Text).Value = txtWebsiteURL.Text;
                sqlComm.Parameters.Add("@RegisterDate", SqlDbType.DateTime).Value = DateTime.Now;
                sqlComm.Parameters.Add("@ModifiedDate", SqlDbType.DateTime).Value = DateTime.Now;
                sqlComm.Parameters.Add("@ProfileName", SqlDbType.VarChar).Value = profilename;
                sqlComm.Parameters.Add("@ImageName", SqlDbType.VarChar).Value = imgfilename;
                sqlComm.Parameters.Add("@RoleId", SqlDbType.Int).Value = ddlRoles.SelectedValue;
                sqlComm.Parameters.Add("@RoleName", SqlDbType.Text).Value = txtRoleName.ToString();
                sqlComm.Parameters.Add("@Domain", SqlDbType.VarChar).Value = txtDomain.Text;
                sqlComm.Parameters.Add("@Technology", SqlDbType.Text).Value = txtTechnology.Text;
                sqlComm.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                sqlComm.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;
                sqlComm.Parameters.Add("@LoginId", SqlDbType.Text).Value = txtEmailAddress.Text;
               
 //               sqlComm.Parameters.Add("@Comments", SqlDbType.Text).Value = txtComments.Text;
                sqlComm.Parameters.Add("@Status", SqlDbType.Bit).Value = true;
                
                sqlComm.ExecuteNonQuery();
                // Image File Upload 
                if ((ImageFileUpload.PostedFile != null) && (ImageFileUpload.PostedFile.ContentLength > 0))
                {
                    string strImageFileName = ImageFileUpload.FileName;
                    string[] strSep = ImageFileUpload.FileName.Split('.');
                    int arrLength = strSep.Length - 1;
                    string strExt = strSep[arrLength].ToString().ToUpper();
                    strImagePathToUpload = Server.MapPath(@"ImageData\");

                    //string fn = System.IO.Path.GetFileName(ImageFileUpload.PostedFile.FileName);
                    //string SaveLocation = Server.MapPath(@"ImageData\") + "\\" + fn;
                    try
                    {
                        object FileName = strImagePathToUpload + "\\" + ImageFileUpload.FileName;
                        ImageFileUpload.SaveAs(strImagePathToUpload + "\\" + ImageFileUpload.FileName);

                        //imgPicture.ImageUrl = imgfilePath;
                        //ImageFileUpload.PostedFile.SaveAs(SaveLocation);
                        //Response.Write("Image file has been Uploaded.");
                    }
                    catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
                else
                {
                    Response.Write("Please select a file to upload.");
                }
                // Profile Document Upload 
                if ((DocumentFileUpload.PostedFile != null) && (DocumentFileUpload.PostedFile.ContentLength > 0))
                {
                    try
                    {                                                                   
                        //To check the file extension if it is word document or something else                        
                        string strFileName = DocumentFileUpload.FileName;
                        string[] strSep = DocumentFileUpload.FileName.Split('.');
                        int arrLength = strSep.Length - 1;
                        string strExt = strSep[arrLength].ToString().ToUpper();
                        //Save the uploaded file to the folder

                        string dn = System.IO.Path.GetFileName(DocumentFileUpload.PostedFile.FileName);
                        string SaveLocation = Server.MapPath(@"ProfileData\") + "\\" + dn;

                        //strPathToUpload = Server.MapPath(@"ProfileData\");
                        //strPathToUpload = Server.MapPath("\\ProfileData");
                        //Map-path to the folder where html to be saved
                        strPathToConvert = Server.MapPath(@"ConvertedLocation\");
                        //object FileName = strPathToUpload + "\\" + DocumentFileUpload.FileName;
                        object FileName = SaveLocation + "\\" + DocumentFileUpload.FileName;
                        object FileToSave = strPathToConvert + "\\" + DocumentFileUpload.FileName + ".htm";
                        if (strExt.ToUpper().Equals("DOC"))
                        {
                            DocumentFileUpload.PostedFile.SaveAs(SaveLocation);
                            //DocumentFileUpload.SaveAs(strPathToUpload + "\\" + DocumentFileUpload.FileName);
                            //DocumentFileUpload.SaveAs(strPathToUpload + "\\" + DocumentFileUpload.FileName);
                            lblMessage.Text = "File uploaded successfully";
                            //open the file internally in word. In the method all the parameters should be passed by object reference
                            objWord.Documents.Open(ref FileName, ref readOnly, ref missing, ref missing, ref missing, ref missing,
                            ref missing, ref  missing, ref missing, ref missing, ref isVisible, ref missing, ref missing, ref missing,
                            ref missing, ref missing);
                            //Do the background activity
                            objWord.Visible = false;
                            Microsoft.Office.Interop.Word.Document oDoc = objWord.ActiveDocument;
                            oDoc.SaveAs(ref FileToSave, ref fltDocFormat, ref missing, ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing,
                            ref missing, ref missing);
                            lblMessage.Text = DocumentFileUpload.FileName + " converted to HTML successfully";
                        }
                        else
                        {
                            lblMessage.Text = "Invalid file selected!";
                        }

                        //Read the Html File as Byte Array and Display it on browser
                        imgDocument.Visible.ToString();

                        imgDocument.Visible = true;

                      //  imgDocument.Attributes.Add("src", FileToSave.ToString());  
                        imgDocument.InnerText = FileToSave.ToString();

                        //imgDocument.Attributes["src"] = FileToSave.ToString();

                        //byte[] bytes;
                        //using (FileStream fs = new FileStream(FileToSave.ToString(), FileMode.Open, FileAccess.Read))
                        //{
                        //    BinaryReader reader = new BinaryReader(fs);
                        //    bytes = reader.ReadBytes((int)fs.Length);
                        //    fs.Close();
                        //}
                        //Response.BinaryWrite(bytes);
                        //Response.Flush();   

                        
                        
                        //Close/quit word
                        //objWord.Quit(ref missing, ref missing, ref missing);
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
                sqlConn.Close();
                //divResult.InnerText = "User Name has Added Successfully";
                return;
            }
        }
        protected void btnUpdate_Click(object sender, System.EventArgs e)
        {
            // Clear Fields
            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtPassword.Text = null;
            txtLocation.Text = null;
            txtEmailAddress.Text = null;
            txtWebsiteURL.Text = null;
            txtUserPhone.Text = null;
            txtDomain.Text = null;
            txtTechnology.Text = null;
            txtComments.Text = null;
            // Disable Non-Mandatory Fields
            //btnInsert.Visible = false;           
            //btnDelete.Visible = false;
        }
        
        protected void btnCancel_Click(object sender, System.EventArgs e)
        {
            // Fill blank values for all fields.....			
            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtPassword.Text = null;
            txtLocation.Text = null;
            txtEmailAddress.Text = null;
            txtWebsiteURL.Text = null;
            txtUserPhone.Text = null;
            txtDomain.Text = null;
            txtTechnology.Text = null;
            txtComments.Text = null;
            //btnDelete.Visible = true;
            //btnUpdate.Visible = true;
            //btnInsert.Visible = true;
        }

      
      public void ConvertHTMLFromWord(object Source, object Target)
      {
          Application Word = new Microsoft.Office.Interop.Word.Application();
          if (Word == null)                         // Check for the prior instance of the OfficeWord Object
    //          Word = new Microsoft.Office.Interop.Word.Application();
    //      Application Word = new Microsoft.Office.Interop.Word.Application();

          try
          {
 //             Application Word = new Microsoft.Office.Interop.Word.Application();
              // To suppress window display the following code will help
              Word.Visible = false;
              Word.Application.Visible = false;
              Word.WindowState = Microsoft.Office.Interop.Word.WdWindowState.wdWindowStateMinimize;
              Word.Documents.Open(ref Source, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown);

              object format = Microsoft.Office.Interop.Word.WdSaveFormat.wdFormatHTML;

              Word.ActiveDocument.SaveAs(ref Target, ref format, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown, ref Unknown);

              Status = StatusType.SUCCESS;
              Message = Status.ToString();
          }
          catch (Exception e)
          {
              Message = "Error :" + e.Message.ToString().Trim();
          }
          finally
          {
              if (Word != null)
              {

                  Word.Documents.Close(ref Unknown, ref Unknown, ref Unknown);
                  Word.Quit(ref Unknown, ref Unknown, ref Unknown);
              }
          }
      }

        private void UploadPic(ref FileUpload fuObj, ref Label fuLbl, string fuName)
        {

            int fileSize = 5096000; string fileExt = ""; string pathAndFile = ""; lblMessage.Text = "";

            if (ImageFileUpload.PostedFile.ContentLength < fileSize)
            {

                fileExt = System.IO.Path.GetExtension(ImageFileUpload.FileName).ToLower();
                string txtID = DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.TimeOfDay.ToString();
                string txtLName = "Img";
                pathAndFile = "\\\\Server\\Folder\\";
                pathAndFile += txtID + "_" + txtLName + "_" + ImageFileUpload.FileName.ToLower();
                //FileName = pathAndFile;
                Session["FileName"] = txtID + "_" + txtLName + "_" + ImageFileUpload.FileName.ToLower(); ;
                if (fileExt == ".jpg")
                {

                    if (System.IO.File.Exists(pathAndFile))
                    {
                        lblMessage.Text = "Sorry Already Exists !!!";
                        return;
                    }
                    else
                    {
                        ImageFileUpload.SaveAs(pathAndFile);
                    }

                }
                else
                {
                    lblMessage.Text = "Error Only .jpg Allowed";
                    return;
                }

            }
            else
            {
                lblMessage.Text = "ERROR: The file is needs to be less than 4MB (4096 KB).";
            }

            lblMessage.Text = "Uploaded Successfully !! <br /> File Name :" + ImageFileUpload.FileName + "<br />  Content Type: " +
                              ImageFileUpload.PostedFile.ContentType + "<br /> Length : " + ImageFileUpload.PostedFile.ContentLength;

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtEmailAddress.Text != null && txtPassword.Text != null)
            {

                SqlConnection sqlConn = new SqlConnection();
                // Local Database Connection String    
                //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();

                // Production Database Connection String
                
                sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();
                string sqlUserExist = "SELECT Count(*) FROM tbl_Users WHERE EmailAddress = '" + txtEmailAddress.Text + "'";
                SqlCommand sqlComm = new SqlCommand(sqlUserExist, sqlConn);
                sqlConn.Open();
                int UserCount = (int)sqlComm.ExecuteScalar();
                if (UserCount == 1)
                {
                    lblOutput.Text = "User Found, Sure want to Delete";

                    
                }
                else
                {
                    lblOutput.Text = "User Doesn't Exist, Select another name";
                    return;
                }
            }
        }
        protected void btnImageUpload_Click(object sender, EventArgs e)
        {
            // Read the file and convert it to Byte Array
            string filePath = ImageFileUpload.PostedFile.FileName; 
            string filename = Path.GetFileName(filePath);
          //  ImageName = Path.GetFileName(filePath);
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

                // Upload Image
                Stream fsImage = ImageFileUpload.PostedFile.InputStream;
                BinaryReader brImage = new BinaryReader(fsImage);
                Byte[] bytesImage = brImage.ReadBytes((Int32)fsImage.Length);

                // Start Uploaded Image Preview Display works
                Session["ImageBytes"] = ImageFileUpload.FileBytes;
                imgPicture.ImageUrl = filePath;   // = imgPicture.Load;     // "/ImageHandler.ashx";
                // End Uploaded Image Preview



                //insert the file into database
                string strQuery = "";
                //string strQuery = "insert into tbl_UserImage(File_Name, Content_Type, File_Data)" +
                //   " values (@Name, @ContentType, @Data)";
                SqlCommand cmd = new SqlCommand(strQuery);

                //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = fsImage;
                //cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                //cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytesImage;
                cmd.Parameters.AddWithValue("@Name", filename.ToString());
                cmd.Parameters.AddWithValue("@ContentType", contenttype);                
                cmd.Parameters.AddWithValue("@Data", bytesImage); 
               
                InsertUpdateData(cmd);
                lblOutput.ForeColor = System.Drawing.Color.Green;
                lblOutput.Text = "Image Uploaded Successfully";
            }
            else
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "File format not recognised." +
                  " Upload Image/Word/PDF/Excel formats";
            }

        }
        //protected void Display_Click(object sender, EventArgs e)
        //{
        //    int File_Id = 1;
        //    if (Request.QueryString["File_Id"] != null)
        //    {
        //        SqlConnection sqlConn = new SqlConnection();
        //        sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();

        //        //  string strQuery = "select FileName, ContentType, FileData from tbl_Files where File_Id=@id";
        //        string strQuery = "";
        //        //string strQuery = "select File_Name, Content_Type, File_Data from UserImage_TB where File_Id=1";
        //        sqlConn.Open();
        //        SqlCommand cmd = new SqlCommand(strQuery);
        //        cmd.Connection = sqlConn;
        //        SqlDataReader dr = cmd.ExecuteReader();

        //        //GridView1.DataSource = dr;
        //        //          GridView1.DataBind();

        //        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["File_Data"]);
        //        System.Data.DataTable dt = GetData(cmd);
        //        if (dt != null)
        //        {


        //            Byte[] bytes = (Byte[])dt.Rows[0]["File_Data"];
        //            using (MemoryStream ms = new MemoryStream(bytes))
        //            {
        //                System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(ms);
        //            }


        //            Response.Buffer = true;
        //            Response.BufferOutput = true;
        //            Response.Charset = "";
        //            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //            Response.ContentType = dt.Rows[0]["Content_Type"].ToString();
        //            Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["File_Name"].ToString());
        //            Response.CacheControl = "public";
        //            Response.ContentEncoding = System.Text.Encoding.GetEncoding(1251);
        //            Response.OutputStream.Write(bytes, 0, bytes.Length);
        //            Response.BinaryWrite(bytes);
                    
        //            //GridView1.BackImageUrl = dt.Rows[0]["Content_Type"].ToString();
        //            //imgPicture.ImageUrl = Byte[] bytes;
        //            Response.Flush();
        //            Response.End();
        //        }
        //    }
        //}

        protected void btnTest_Click(object sender, EventArgs e)
        {
           // imgDocument.Attributes.Add("src", FileToSave.ToString());  
            //imgDocument.Attributes["src"] =  "/ConvertedLocation/CoverLetter.doc.htm";
        }

  //      protected void txtEmailAddress
        protected void btnDocumentUpload_Click(object sender, EventArgs e)
        {
            // Read the file and convert it to Byte Array
            string filePath = DocumentFileUpload.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ProfileName = Path.GetFileName(filePath);
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

                // Upload Image
                Stream fsImage = DocumentFileUpload.PostedFile.InputStream;
                BinaryReader brImage = new BinaryReader(fsImage);
                Byte[] bytesImage = brImage.ReadBytes((Int32)fsImage.Length);

                // Start Uploaded Document Preview Display works
                Session["DocumentBytes"] = DocumentFileUpload.FileBytes;
               // imgDocument.Attributes.Add("src","Profileame");  
             //   imgDocument.InnerHtml = filePath;
             //   imgPicture.ImageUrl = filePath;   // = imgPicture.Load;     // "/ImageHandler.ashx";
                // End Uploaded Image Preview



                //insert the file into database
                string strQuery = "";
                //string strQuery = "insert into tbl_UserImage(File_Name, Content_Type, File_Data)" +
                //   " values (@Name, @ContentType, @Data)";
                SqlCommand cmd = new SqlCommand(strQuery);

                //cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = fsImage;
                //cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                //cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytesImage;
                cmd.Parameters.AddWithValue("@Name", filename.ToString());
                cmd.Parameters.AddWithValue("@ContentType", contenttype);
                cmd.Parameters.AddWithValue("@Data", bytesImage);

                InsertUpdateData(cmd);
                lblOutput.ForeColor = System.Drawing.Color.Green;
                lblOutput.Text = "Document Uploaded Successfully";
            }
            else
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "File format not recognised." +
                  " Upload Image/Word/PDF/Excel formats";
            }

        }
        //private System.Data.DataTable GetData(SqlCommand cmd)
        //{
        //    System.Data.DataTable dt = new System.Data.DataTable();
        //    SqlConnection sqlConn = new SqlConnection();
        //    sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();

        //    SqlDataAdapter sda = new SqlDataAdapter();
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Connection = sqlConn;
        //    try
        //    {
        //        sqlConn.Open();
        //        sda.SelectCommand = cmd;
        //        sda.Fill(dt);
        //        return dt;
        //    }
        //    catch
        //    {
        //        return null;
        //    }
        //    finally
        //    {
        //        sqlConn.Close();
        //        sda.Dispose();
        //        sqlConn.Dispose();
        //    }
        //}


        private Boolean InsertUpdateData(SqlCommand cmd)
        {
            SqlConnection sqlConn = new SqlConnection();
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();            
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
    }
}