<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" %>

<%@import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        string Username = "";
        if (Request.Cookies["userInfo"] != null)
            Username = Request.Cookies["userInfo"].Values["usern"];

        //-------------------------------------------------------------
        // get pass
        string strSelect = "SELECT * FROM Guest "
                + " WHERE UserName = '" + Username + "'";

        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();

        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
        {

            string oldPass = (string)reader.GetValue(6);

            if (oldPass == txtOldPass.Text)
            {
                string strUpdate = "Update Guest "
            + " SET Password = '" + txtPassword.Text + "'"
            + " WHERE UserName = '" + Username + "'";

                SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);
                conn.Close();

                conn.Open();
                cmdUpdate.ExecuteNonQuery();
                conn.Close();

                lblMsg.Text = "Your Password Has Been Successfully Reset!!";
                lnkLogin.Visible = true;
            }

            else
                lblMsg.Text = "Wronge Old Password!!";

        }


    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }
        

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10
        {
            height: 24px;
        }
        .auto-style11
        {
            height: 24px;
            width: 186px;
        }
        .auto-style12
        {
        }
        .auto-style13
        {
            height: 24px;
            width: 264px;
        }
        .auto-style14
        {
            width: 264px;
        }
        .auto-style15
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#000066" Text="Reset Password:"></asp:Label>
    <br />
    <br />
    <table class="auto-style5">
        <tr>
            <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Old Password"></asp:Label>
                </td>
            <td class="auto-style13">
                    <asp:TextBox ID="txtOldPass" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="222px" TextMode="Password"></asp:TextBox>
                </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="New Password:"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="222px" TextMode="Password"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Retype New Password:"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="txtConfPass" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="222px" TextMode="Password"></asp:TextBox>
                </td>
            <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfPass" 
                        ErrorMessage="No Matching !!" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="#CC0000"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                    <asp:Button ID="btnSubmit" runat="server" Font-Names="Arial Black" 
                        Font-Size="Medium" ForeColor="#000066" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3">
    
        <asp:Label ID="lblMsg" runat="server" Font-Names="Monotype Corsiva" 
            Font-Size="X-Large" ForeColor="#CC0066"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkLogin" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" onclick="lnkLogin_Click" Visible="False" >Click Here to Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

