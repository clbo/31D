using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_opret_nuhed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button__opret_Click(object sender, EventArgs e)
    {
        // opret forbindelse til databasen

        // FELTET MELLEM [] SKAL ÆNDRES SÅ DET PASSER TIL NAVNET PÅ DIN CONNECTIONSTRING - KAN FINDES I WEB.CONFIG FILEN
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        // SQL strengen
        cmd.CommandText = "INSERT INTO news (n_title, n_date, n_tekst, n_picture) VALUES (@titel, @dato, @tekst, @img)";

        // Tilføj parametrer (input fra brugeren / TextBox fra .aspx siden) til din SQL streng
        cmd.Parameters.Add("@titel", SqlDbType.NVarChar).Value = TextBox_titel.Text;
        cmd.Parameters.Add("@dato", SqlDbType.DateTime).Value = DateTime.Now;
        cmd.Parameters.Add("@tekst", SqlDbType.NVarChar).Value = TextBox_tekst.Text;
        cmd.Parameters.Add("@img", SqlDbType.NVarChar).Value = FileUpload_nyhed.FileName;
        

        // Åben for forbindelsen til databasen
        conn.Open();

        // Udfør SQL komandoen
        cmd.ExecuteNonQuery();

        // Luk for forbindelsen til databasen
        conn.Close();

        // Besked til brugeren om at beskeden er modtaget
        Label_besked.Text = "<div class='span8'><div class='alert alert-success'>Nyheden er blevet oprettet</div></div>";
    
    }
}