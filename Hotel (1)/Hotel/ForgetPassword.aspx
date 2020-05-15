<%@ Page Language="C#"   %>
<%@ Import Namespace="System.Data.SqlClient" %>



<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        string username = "";
        if (Request.Cookies["userInfo"] != null)
            username = Request.Cookies["userInfo"].Values["usern"];

        string strUpdate = "Update Guest "
            + " SET Email = '" + txtEmail.Text + "'"
            + " Password = '" + txtPassword.Text + "'"
            + " WHERE UserName = '" + username + "'";

        SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);

        conn.Open();
        cmdUpdate.ExecuteNonQuery();

        conn.Close();

        lblMsg.Text = "Your Password Has Been Successfully Reset!!";
        lnkLogin.Visible = true;
    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 187px;
        }
        .style3
        {
            width: 187px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 273px;
        }
        .style6
        {
            height: 26px;
            width: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#000066" Text="Please, Enter Your Email:"></asp:Label>
    </p>
        <p>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Email Address:"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="222px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="#000066" Text="Password"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="222px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style6">
                </td>
                <td class="style4">
                </td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnSubmit" runat="server" Font-Names="Arial Black" 
                        Font-Size="Medium" ForeColor="#000066" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <div>
    
        <asp:Label ID="lblMsg" runat="server" Font-Names="Monotype Corsiva" 
            Font-Size="X-Large" ForeColor="#CC0066"></asp:Label>
    
    &nbsp;<asp:LinkButton ID="lnkLogin" runat="server" Font-Names="Arial" 
            Font-Size="Medium" ForeColor="#000066" onclick="lnkLogin_Click" 
            Visible="False">Click Here to Log In</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
