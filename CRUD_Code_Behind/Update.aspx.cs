using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // SELECT fra Databasen og fyld i TextBoxe
    }

    protected void Button_update_Click(object sender, EventArgs e)
    {
        // opret forbindelsen til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        //Sql sætningen
        cmd.CommandText = "UPDATE news SET n_title = @title, n_tekst = @tekst WHERE n_id = @id";
        // Parametrene @id, @title og @tekst i sql sætningen ovenover tilføjes
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["newsid"];
        cmd.Parameters.Add("@title", SqlDbType.NVarChar).Value = TextBox_titel.Text;
        cmd.Parameters.Add("@tekst", SqlDbType.NVarChar).Value = TextBox_tekst.Text;
        // åben forbindelsen til databasen
        conn.Open();
        // Udfør sql komandoen
        cmd.ExecuteNonQuery();
        // luk forbindelsen til databasen
        conn.Close();

    }
}