<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Data.mdf;Integrated Security=True";

        // Create SQL SELECT Statement
        string strSelect = "SELECT * FROM Dstu "
            + " WHERE userr = '" + Auser.Text + "'"
            + " AND passwordd = '" + Apassword.Text + "'";

        // Create SQL Command
        SqlCommand cmdSELECT = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();
        reader = cmdSELECT.ExecuteReader();


        if (reader.Read())
        {

            if (DDtype.SelectedValue == "1")
                Response.Redirect("~/Admin.aspx");
            else
                Response.Redirect("~/home.aspx");

        }
        else
            lblMsg.Text = "Incorrect Username and/or Password!!";

        conn.Close(); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 457px;
        }
        .auto-style3 {
            width: 457px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Algerian" Font-Size="XX-Large" Text="Sign in Form"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Username" runat="server" Font-Names="Footlight MT Light" Font-Size="Large" Text="User Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Auser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Username0" runat="server" Font-Names="Footlight MT Light" Font-Size="Large" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Apassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Username1" runat="server" Font-Names="Footlight MT Light" Font-Size="Large" Text="User Type:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDtype" runat="server">
                        <asp:ListItem Value="1">Admin</asp:ListItem>
                        <asp:ListItem Value="2">Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Names="Algerian" Font-Size="Medium" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server">Forget Password?</asp:LinkButton>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblMsg" runat="server" Font-Names="Footlight MT Light" Font-Size="Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
