using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TEST FROM KEA
        // opret forbindelsen til database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString());
        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        //Sql sætningen
        cmd.CommandText = "DELETE FROM news WHERE n_id = @id";
        // Parameteret @id i sql sætningen ovenover tilføjes
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["newsid"];
        // åben forbindelsen til databasen
        conn.Open();
        // Udfør sql komandoen
        cmd.ExecuteNonQuery();
        // luk forbindelsen til databasen
        conn.Close();

    }
}
