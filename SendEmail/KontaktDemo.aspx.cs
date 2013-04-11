using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class KontaktDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_send_Click(object sender, EventArgs e)
    {
        //1. INSERT i Databasens Kontakttabel

        //2. Send MAil
        MailMessage mailtilmig = new MailMessage("FRA@rts.dk", "TIL@rts.dk");
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.unoeuro.com";
        mailtilmig.Subject = "emne";
        mailtilmig.Body = "Fra: " + TextBox_navn.Text + "<br>Email: <a href='mailto:'" + TextBox_email.Text + "'>" + TextBox_email.Text + "</a><p>" + TextBox_besked.Text + "</p>";
        mailtilmig.IsBodyHtml = true;
        client.Send(mailtilmig);

        // Meddelelse til brugeren
        Panel_kontakt_form.Visible = false;
        Label_tak.Text = "Tak " + TextBox_navn.Text + ",";
        Label_tak.Text += "<p>Vi har modtaget din besked:</p>";
        Label_tak.Text += "<p>\"<strong>" + TextBox_besked.Text + "\"</strong> </p>";
        Label_tak.Text += "<p>Vi sender dig et svar på din email: <a href='mailto:'" + TextBox_email.Text + "'>" +  TextBox_email.Text + "</a>, når vi har behandlet ordren.</p>";
 

    }
}