<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        //create connection objects
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Data.mdf;Integrated Security=True";


        //create sql insert statement
        String strinsert = "INSERT INTO Dstu "
            + " VALUES(' " + txtFname.Text + "','"
            + txtLname.Text + "','"
            + txtPhone.Text + "','"
            + txtId.Text + "','"
            + Dfauclty.SelectedValue + "','"
            + txtusername.Text + "','"
            + txtpassword.Text + "','"
            + rblgender.SelectedValue + "','"
            + txtemail.Text + "','"
            +DDtype1.SelectedValue + "')";

        //create sql command 
        SqlCommand cmdinsert = new SqlCommand(strinsert, conn);
        try
        {
            conn.Open();
            cmdinsert.ExecuteNonQuery();
            conn.Close();


            if (FUPic.HasFile)
               FUPic.SaveAs(Server.MapPath("UserPic") + "\\" + txtusername.Text + ".jpg");
            
            
            Ibmsg.Text = "Welcome " + txtusername.Text + " Your Account Has Been Successfully Created!!";


        }

        catch (SqlException err)
        {
            if (err.Number == 2627)
                Ibmsg.Text = "Username already exists, Please Choose Another!!";
            else
                Ibmsg.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            Ibmsg.Text = "Sorry, System Error, You may Try later!!";
        }



    }

    protected void DDtype1_SelectedIndexChanged(object sender, EventArgs e)
    {

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
        }
        .auto-style3 {
            width: 296px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 1477px;
        }
        .auto-style5 {
            width: 296px;
            height: 50px;
        }
        .auto-style6 {
            height: 50px;
            width: 1477px;
        }
        .auto-style7 {
            width: 1477px;
        }
        .auto-style8 {
            width: 742px;
        }
        .auto-style9 {
            height: 50px;
            width: 742px;
        }
        .auto-style10 {
            height: 23px;
            width: 742px;
        }
        .auto-style11 {
            width: 1346px;
        }
        .auto-style12 {
            height: 50px;
            width: 1346px;
        }
        .auto-style13 {
            height: 23px;
            width: 1346px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">
                    <asp:Label ID="Label11" runat="server" Font-Names="Algerian" Font-Size="XX-Large" Text="Student Information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                    <br />
     <font face="arial" color="olive" size="-1"> For Example : Mariem or Abdel Rahman or mariem </font>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Your First Name is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="First letter is in upper case " ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                    <br />
     <font face="arial" color="olive" size="-1"> For Example : Mariem or Abdel Rahman or mariem </font>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Your Last Name is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="First letter is in upper case " ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Phone number :"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="ID :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtId" ErrorMessage="Your ID is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Fauclty :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="Dfauclty" runat="server">
                        <asp:ListItem Value="1">Business</asp:ListItem>
                        <asp:ListItem Value="2">Computer science</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    <br />
     <font face="arial" color="olive" size="-1"> For Example : Mariem or Abdel Rahman or mariem </font>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtusername" ErrorMessage="Your UserName is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="Like the example" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="Your Password is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpassword0" ErrorMessage="First letter is in upper case followed by numbers" ValidationExpression="[A-Z]\w{8,15}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Comfirm password"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtpassword0" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword0" ErrorMessage="not matched"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="gender" runat="server" Text="gender"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:RadioButtonList ID="rblgender" runat="server">
                        <asp:ListItem Value="f">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="email"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <br />
     <font face="arial" color="olive" size="-1"> For Example : name@yahoo.com </font>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="Your Email is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Email form" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Upload Pictuer"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FUPic" runat="server" Font-Names="Arial" Font-Size="Medium" />
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Username1" runat="server" Font-Names="Footlight MT Light" Font-Size="Large" Text="User Type:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DDtype1" runat="server" OnSelectedIndexChanged="DDtype1_SelectedIndexChanged">
                        <asp:ListItem Value="1">Admin</asp:ListItem>
                        <asp:ListItem Value="2">Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Ibmsg" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
