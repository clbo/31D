using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Drawing;
using System.Drawing.Drawing2D;

public partial class upload_Resize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_upload_Click(object sender, EventArgs e)
    {
        // folderen hvor billedet skal uploades - gemmes i variablen "upload_folder"
        string upload_folder = "Images/Uploads/Original/";

        // gem originalfilen i mappen
        FileUpload1.SaveAs(Server.MapPath("~/") + upload_folder + FileUpload1.FileName);

        // Kald metoden MakeThumb for at lave en thumbnail og gemme den i en mappe på serveren
        // Parametrene i metoden MakeThumb() er:
        // 1. FileUpload1.FileName = Filnavnet - (feks. claus.jpg)
        // 2. upload_folder = Navnet på den mappe originalen er uploadet til - (feks. Original)
        // 3. bredde = bredde på thumbnail i px (feks. 120)
        // 4. thumbuploadfolder = Hvor skal thubnailen uploades til (feks. /Images/Thumb/)
        MakeThumb(FileUpload1.FileName, upload_folder, 120, "/Images/Uploads/Thumbs/");

        // Din SQL INSERT kode skriver du her
    }

    /// <summary>
    /// Opret et Thumb, baseret på en fil i en mappe
    /// </summary>
    /// <param name="Filename">Hvad hedder filen</param>
    /// <param name="UploadFolder">Hvor er originalen uploadet til</param>
    /// <param name="bredde">Hvad er bredden på den thumbnail du vil lave</param>
    /// <param name="thumbuploadfolder">Hvilken mappe skal thumbnailen uploads til</param>
    private void MakeThumb(string Filename, string UploadFolder, int bredde, string thumbuploadfolder)
    {
        // find det uploadede image
        System.Drawing.Image OriginalImg = System.Drawing.Image.FromFile(Server.MapPath("~/") + UploadFolder + Filename);
        // "UploadFolder" og "Filename" er parametre ... se mellem paranteserne () efter metodenavnet "MakeThumb" ovenover

        // find højde og bredde på image
        int originalWidth = OriginalImg.Width;
        int originalHeight = OriginalImg.Height;

        // bestem den nye bredde på det thumbnail som skal laves
        int newWidth = bredde; // "bredde" er et parameter .. se mellem paranteserne () efter metodenavnet MakeThumb ovenover

        // beregn den nye højde på thumbnailbilledet
        double ratio = newWidth / (double)originalWidth;
        int newHeight = Convert.ToInt32(ratio * originalHeight);

        Bitmap Thumb = new Bitmap(newWidth, newHeight, PixelFormat.Format24bppRgb);
        Thumb.SetResolution(OriginalImg.HorizontalResolution, OriginalImg.VerticalResolution);

        // Hvis billedet indeholder nogen form for transperans 
        //(mere eller mindre gennemsigtig, eller en gennemsigtig baggrund) bliver det gjort her
        Thumb.MakeTransparent();

        // opret det nye billede
        Graphics ThumbMaker = Graphics.FromImage(Thumb);
        ThumbMaker.InterpolationMode = InterpolationMode.HighQualityBicubic;

        ThumbMaker.DrawImage(OriginalImg,
            new Rectangle(0, 0, newWidth, newHeight),
            new Rectangle(0, 0, originalWidth, originalHeight),
            GraphicsUnit.Pixel);

        // encoding
        ImageCodecInfo encoder;
        string fileExt = System.IO.Path.GetExtension(Filename);
        switch (fileExt)
        {
            case ".png":
                encoder = GetEncoderInfo("image/png");
                break;

            case ".gif":
                encoder = GetEncoderInfo("image/gif");
                break;

            default:
                // default til JPG 
                encoder = GetEncoderInfo("image/jpeg");
                break;
        }

        EncoderParameters encoderParameters = new EncoderParameters(1);
        encoderParameters.Param[0] = new EncoderParameter(Encoder.Quality, 100L);

        // gem thumbnail i mappen /Images/Uploads/Thumbs/
        Thumb.Save(Server.MapPath("~") + thumbuploadfolder + Filename, encoder, encoderParameters);
        // "thumbuploadfolder" og "Filename" er parametre ... se mellem paranteserne () efter metodenavnet "MakeThumb" ovenover

        // Fjern originalbilledet, thumbnail mm, fra computerhukommelsen
        OriginalImg.Dispose();
        ThumbMaker.Dispose();
        Thumb.Dispose();

    }

    private static ImageCodecInfo GetEncoderInfo(String mimeType)
    {
        ImageCodecInfo[] encoders = ImageCodecInfo.GetImageEncoders();
        for (int i = 0; i < encoders.Length; i++)
        {
            if (encoders[i].MimeType == mimeType)
            {
                return encoders[i];
            }
        }
        return null;
    }

}
