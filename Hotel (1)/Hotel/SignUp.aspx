<%@ Page Language="C#" %>
<%@import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

    protected void Save_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        // Create SQL Insert Statement
        string strInsert = "INSERT INTO Guest "
            + " VALUES('" + fname.Text + "', '"
            + lname.Text + "', '"
            + Droptype.SelectedValue + "', '"
            + nationalityy.SelectedValue + "', '"
            + phone.Text + "', '"
            + numcreditcard.Text + "', '"
            + password.Text + "', '"
            + username.Text + "', '"
           + ggender.SelectedValue + "', '" +
           email.Text + "', '" +
           Droptype1.SelectedValue + "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();

            Msg.Text = "Welcome " + fname.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                Msg.Text = "UserName already exists, Please Choose Another!!";
            else
                Msg.Text = err.Message;
        }

        catch
        {
            Msg.Text = "Sorry, System Error, You may Try later!!";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
               width: 57%;
            height: 80%;
            margin-left: 389px;
            margin-right: 40px;

        }
        .auto-style3 {
            width: 296px;
        }
        .auto-style6 {
            width: 296px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style11 {
            width: 894px;
        }
        .auto-style12 {
            width: 894px;
            height: 33px;
        }
        .auto-style13 {
            width: 334px;
        }
        .auto-style14 {
            width: 334px;
            height: 33px;
        }
        .auto-style27 {
            height: 91px;
        }
        .auto-style28 {
            width: 894px;
            height: 91px;
        }
        .auto-style29 {
            width: 334px;
            height: 67px;
        }
        .auto-style30 {
            width: 296px;
            height: 67px;
        }
        .auto-style31 {
            height: 67px;
        }
        .auto-style32 {
            width: 894px;
            height: 67px;
        }
        .auto-style33 {
            width: 334px;
            height: 78px;
        }
        .auto-style34 {
            width: 296px;
            height: 78px;
        }
        .auto-style35 {
            height: 78px;
        }
        .auto-style36 {
            width: 894px;
            height: 78px;
        }
        .auto-style37 {
            width: 334px;
            height: 49px;
        }
        .auto-style38 {
            width: 296px;
            height: 49px;
        }
        .auto-style39 {
            height: 49px;
        }
        .auto-style40 {
            width: 894px;
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-position: center; background-size: cover;
 background-image: url('image/hotel4.jpg');">

    
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style27">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Harrington" Font-Size="100px" Text="New Guest" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:Label ID="Label15" runat="server" Text="First Name" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox><br />
                    <font face="arial" color="White" size="-1"> For Example:Ahmed or Abdel Rahman</font> 
                </td>
                <td class="auto-style31">
                    <asp:RequiredFieldValidator ID="valreq1" runat="server" ControlToValidate="fname" ErrorMessage="First Name is Missing!!!" ForeColor="White" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style32">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="fname" ErrorMessage="Invalid First Name Format!!!" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label16" runat="server" Text="Last Name" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox><br />
                    <font face="arial" color="White" size="-1"> For Example:Ahmed or Abdel Rahman</font>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valreq2" runat="server" ControlToValidate="lname" ErrorMessage="Last Name is Missing!!!" ForeColor="White" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Invalid Last Name Format!!!" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label17" runat="server" Text="Type Of Guest" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:DropDownList ID="Droptype" runat="server">
                        <asp:ListItem>Local</asp:ListItem>
                        <asp:ListItem>Foreigner</asp:ListItem>
                        <asp:ListItem>Group</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style35">
                    </td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style37">
                    <asp:Label ID="Label18" runat="server" Text="Nationality" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:DropDownList ID="nationalityy" runat="server">
                        <asp:ListItem>Egyption</asp:ListItem>
                        <asp:ListItem>French</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                        <asp:ListItem>Chinese</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>Italian</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style39">
                    </td>
                <td class="auto-style40"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label25" runat="server" Text="Credit Card Number" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="numcreditcard" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label19" runat="server" Text="Phone Number" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox><br />
                    <font face="arial" color="White" size="-1"> For Example:0122 1234567</font>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="phone" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0][1][0-2]\s\d{7}" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label20" runat="server" Text="UserName" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valreq6" runat="server" ControlToValidate="username" ErrorMessage="User Name is Missing!!!" ForeColor="White" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label21" runat="server" Text="Gender" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="ggender" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="203px" Font-Bold="True" Font-Size="Large" ForeColor="White">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label22" runat="server" Text="Email" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valreq4" runat="server" ControlToValidate="email" ErrorMessage="Email Address is Missing!!!" ForeColor="White" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label23" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="valreq5" runat="server" ControlToValidate="password" ErrorMessage="Pasword  is Missing!!!" ForeColor="White" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="password" ErrorMessage="8 char at least and 16 char at most" ValidationExpression="\w{8,16}" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label24" runat="server" Text="Confirm Password" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="retypepassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="retypepassword" ErrorMessage="No Matching please,Reenter" ForeColor="White" Font-Bold="True"></asp:CompareValidator>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label26" runat="server" Text="User Type" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Droptype1" runat="server" Font-Bold="True">
                        <asp:ListItem>Guest</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Msg" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" Height="54px" Width="167px" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
      </table> 
      
        <CENTER  >
<FONT FACE="Arial" COLOR="White" size = "-1">
Powered BY FUE Team Spring 2020 &copy; 2020 <A href="" style="COLOR:White">contact webmaster</A>
</FONT>
</CENTER>
    </form>
</body>
</html>
