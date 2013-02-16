using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_rediger_nyhed_enkelt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // opret forbindelsen til databasen
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());

            // opret et SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //Sql sætningen
            cmd.CommandText = "SELECT * FROM news WHERE n_id = @id";

            // Parametrene @brugernavn og @password i sql sætningen ovenover tilføjes
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["newsid"];

            // åben forbindelsen til databasen
            conn.Open();

            // opret en SqlDataReader og navngiv den "reader"
            // SqlDataReader er en beholder eller tabel der indeholder en kopi af det der er udtrukket fra databasen
            SqlDataReader reader = cmd.ExecuteReader();

            // hvis nyheden findes i databasen, altså hvis der er noget i "reader"
            if (reader.Read())
            {
                // Fyld indhold i textboxe
                TextBox_titel.Text = reader["n_title"].ToString();
                TextBox_tekst.Text = reader["n_tekst"].ToString();
            }

            // luk forbindelsen til databasen
            conn.Close();
        }


    }
    protected void Button__rediger_Click(object sender, EventArgs e)
    {
        // UPDATE
	    // opret forbindelsen til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());

        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //Sql sætningen
        cmd.CommandText = "UPDATE news SET n_title = @title, n_tekst=@tekst WHERE n_id = @id";

        // Parametrene @brugernavn og @password i sql sætningen ovenover tilføjes
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["newsid"];
        cmd.Parameters.Add("@title", SqlDbType.NVarChar).Value = TextBox_titel.Text;
        cmd.Parameters.Add("@tekst", SqlDbType.NVarChar).Value = TextBox_tekst.Text;

        // åben forbindelsen til databasen
        conn.Open();

        // Udfør sql komandoen
        cmd.ExecuteNonQuery();

        // luk forbindelsen til databasen
        conn.Close();

        // Besked til brugeren om at beskeden er modtaget
        Label_besked.Text = "<div class='span8'><div class='alert alert-success'>Nyheden er redigeret</div></div>";
        


    }
}