﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page 
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        // create connection
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Student.mdf;Integrated Security=True";

        string strInsert = "INSERT INTO Student "
       + " VALUES('" + Fname.Text + "', '"
       + Lname.Text + "', '"
       + phone.Text + "', '"
       + mail.Text + "', '"
       + country.SelectedValue + "', '"
       + gender.SelectedValue + "', '"

       + fauclty.SelectedValue + "', '"
       + txtPassword.Text + "', '"
       + id.Text + "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, con);

        try
        {
            con.Open();
            cmdInsert.ExecuteNonQuery();
            con.Close();
            Button1.Text = "Welcome " + Fname.Text + " Your Account Has Been Successfully Created!!";
        }




        catch (SqlException err)
        {
            if (err.Number == 2627)
                Button1.Text = "Username already exists, Please Choose Another!!";
            else
                Button1.Text = "Problem in database";
        }

        catch
        {
            Button1.Text = "Sorry, System Error, You may Try later!!";
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}