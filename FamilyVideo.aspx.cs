using System;
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

public partial class FamilyVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        
    public bool ThumbnailCallback()
    {
        return false;
    }

    protected void btnImageUpload_Click(object sender, EventArgs e)
    {
        // Initialize variables

        string sSavePath;
        string sThumbExtension;
        int intThumbWidth;
        int intThumbHeight;

        // Set constant values

        sSavePath = "Images/";
        sThumbExtension = "_thumb";
        intThumbWidth = 160;
        intThumbHeight = 120;

        // If file field isn’t empty

        if (FileUpload.PostedFile != null)
        {
            // Check file size (mustn’t be 0)

            HttpPostedFile myFile = FileUpload.PostedFile;
            int nFileLen = myFile.ContentLength;
            if (nFileLen == 0)
            {
                lblOutput.Text = "No file was uploaded.";
                return;
            }

            // Check file extension (must be JPG)

            if (System.IO.Path.GetExtension(myFile.FileName).ToLower() != ".jpg")
            {
                lblOutput.Text = "The file must have an extension of JPG";
                return;
            }

            // Read file into a data stream

            byte[] myData = new Byte[nFileLen];
            myFile.InputStream.Read(myData, 0, nFileLen);

            // Make sure a duplicate file doesn’t exist.  If it does, keep on appending an 

            // incremental numeric until it is unique

            string sFilename = System.IO.Path.GetFileName(myFile.FileName);
            int file_append = 0;
            while (System.IO.File.Exists(Server.MapPath(sSavePath + sFilename)))
            {
                file_append++;
                sFilename = System.IO.Path.GetFileNameWithoutExtension(myFile.FileName)
                                 + file_append.ToString() + ".jpg";
            }

            // Save the stream to disk

            System.IO.FileStream newFile
                    = new System.IO.FileStream(Server.MapPath(sSavePath + sFilename),
                                               System.IO.FileMode.Create);
            newFile.Write(myData, 0, myData.Length);
            newFile.Close();

            // Check whether the file is really a JPEG by opening it

            System.Drawing.Image.GetThumbnailImageAbort myCallBack =
                           new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback);
            Bitmap myBitmap;
            try
            {
                myBitmap = new Bitmap(Server.MapPath(sSavePath + sFilename));

                // If jpg file is a jpeg, create a thumbnail filename that is unique.

                file_append = 0;
                string sThumbFile = System.IO.Path.GetFileNameWithoutExtension(myFile.FileName)
                                                         + sThumbExtension + ".jpg";
                while (System.IO.File.Exists(Server.MapPath(sSavePath + sThumbFile)))
                {
                    file_append++;
                    sThumbFile = System.IO.Path.GetFileNameWithoutExtension(myFile.FileName) +
                                   file_append.ToString() + sThumbExtension + ".jpg";
                }

                // Save thumbnail and output it onto the webpage

                System.Drawing.Image myThumbnail
                        = myBitmap.GetThumbnailImage(intThumbWidth,
                                                     intThumbHeight, myCallBack, IntPtr.Zero);
                myThumbnail.Save(Server.MapPath(sSavePath + sThumbFile));
                imgPicture.ImageUrl = sSavePath + sThumbFile;

                // Displaying success information

                lblOutput.Text = "File uploaded successfully!";

                // Destroy objects

                myThumbnail.Dispose();
                myBitmap.Dispose();
            }
            catch (ArgumentException errArgument)
            {
                // The file wasn't a valid jpg file

                lblOutput.Text = "The file wasn't a valid jpg file.";
                System.IO.File.Delete(Server.MapPath(sSavePath + sFilename));
            }
        }
    }
}
