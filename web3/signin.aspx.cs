using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Student.mdf;Integrated Security=True";

        // Create SQL SELECT Statement
        string strSelect = "SELECT * FROM Member "
            + " WHERE Username = '" + username.Text + "'"
            + " AND Password = '" + txtpassword.Text + "'";

        // Create SQL Command
        SqlCommand cmdSELECT = new SqlCommand(strSelect, conn);

        SqlDataReader reader;
        try
        {

            conn.Open();
            reader = cmdSELECT.ExecuteReader();
            conn.Close();
            lblMsg.Text = "hhhhahahahahahiiiiiii";
        }



        catch
        {
            lblMsg.Text = "Incorrect Username and/or Password!!";
        }
    }
}