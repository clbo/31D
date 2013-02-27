using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_insert_Click(object sender, EventArgs e)
    {
        // opret forbindelse til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString());
        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        // SQL strengen
        cmd.CommandText = "INSERT INTO kontakt (k_navn, k_email, k_emne, k_besked) VALUES (@navn, @email, @emne, @besked)";

        // Tilføj parametrer (input fra TextBoxe fra .aspx siden) til din SQL streng ovenover
        cmd.Parameters.Add("@navn", SqlDbType.NVarChar).Value = TextBox_navn.Text;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = TextBox_email.Text;
        cmd.Parameters.Add("@emne", SqlDbType.NVarChar).Value = TextBox_emne.Text;
        cmd.Parameters.Add("@besked", SqlDbType.Text).Value = TextBox_besked.Text;

        // Åben for forbindelsen til databasen
        conn.Open();

        // Udfør SQL komandoen
        cmd.ExecuteNonQuery();

        // Luk for forbindelsen til databasen
        conn.Close();
    }
}