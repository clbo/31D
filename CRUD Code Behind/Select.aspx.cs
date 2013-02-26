using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // opret forbindelsen til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString());
        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //Sql sætningen
        cmd.CommandText = "SELECT * FROM news WHERE n_id = @id";
        // Parametrene @id i sql sætningen ovenover tilføjes
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