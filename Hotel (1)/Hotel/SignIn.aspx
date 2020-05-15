<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient"%>
<!DOCTYPE html>

<script runat="server">
  
  
    protected void login_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        // Create SQL SELECT Statement
        string strSelect = "SELECT * FROM Guest "
            + " WHERE UserName = '" + txtUsername.Text + "'"
            + " AND Password = '" + txtpassword.Text + "'";
   
            

        // Create SQL Command
        SqlCommand cmdSELECT = new SqlCommand(strSelect, conn);
        

        SqlDataReader reader;
   
        conn.Open();
        reader = cmdSELECT.ExecuteReader();
       

        if (reader.Read())
        {
            HttpCookie Cook = new HttpCookie("userInfo");
            Cook.Values.Add("usern", txtUsername.Text);
            Cook.Values.Add("passw", txtpassword.Text);
            Cook.Expires = DateTime.Now.AddDays(2);
            Response.Cookies.Add(Cook);

            if (portal.SelectedValue == "Guest")

                Response.Redirect("~/userhome.aspx");


            else if (portal.SelectedValue == "Admin")
                Response.Redirect("~/adminhome.aspx");

            else
                Response.Redirect("~/Staffhome.aspx");
        }

        else
            msg.Text = "Incorrect UserName OR Password";
        conn.Close(); 
    }

    protected void portal_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 90%;
            margin-left: 389px;
            margin-right: 0px;
          
        }
        .auto-style2 {
            width: 297px;
        }
        


        .auto-style3 {
            width: 297px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        


    </style>
</head>
<body>

    <form id="form1" runat="server" style="background-position: center; background-size: cover;
 background-image: url('image/hotelpic.jpg'); height:624px" >
 
    
        <table class="auto-style1"  >
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Harrington" Font-Size="100px" ForeColor="White" Text="Sign In"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#000066"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#000066" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White" Text="Choose User"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="portal" runat="server" Width="158px" OnSelectedIndexChanged="portal_SelectedIndexChanged" Font-Size="X-Large">
                        <asp:ListItem>Guest</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="login" runat="server" Text="Login" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="#009900" OnClick="login_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" NavigateUrl="~/ForgetPassword.aspx">Forget Password</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="msg" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
   
        <CENTER style="height: 85px"  >
<FONT FACE="Arial" COLOR="White" size = "-1">
Powered BY FUE Team Spring 2020 &copy; 2020 <A href="" style="COLOR:White">contact webmaster</A>
</FONT>
</CENTER>
    </form>
</body>
</html>
