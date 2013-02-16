using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_slet_nyhed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // DELETE
        // opret forbindelsen til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString());

        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //Sql sætningen
        cmd.CommandText = "DELETE FROM news WHERE n_id = @id";

        // Parametrene @brugernavn og @password i sql sætningen ovenover tilføjes
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["newsid"];

        // åben forbindelsen til databasen
        conn.Open();

        // Udfør sql komandoen
        cmd.ExecuteNonQuery();

        // luk forbindelsen til databasen
        conn.Close();

        Label_besked.Text = "<div class='span8'><div class='alert alert-success'>Nyheden er slettet</div></div>";

    }
}