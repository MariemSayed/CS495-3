<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
            width: 465px;
        }
        .auto-style4 {
            width: 465px;
            height: 50px;
        }
        .auto-style5 {
            height: 50px;
        }
        .auto-style6 {
            width: 465px;
            height: 49px;
        }
        .auto-style7 {
            height: 49px;
            text-decoration: underline;
        }
        .auto-style9 {
            height: 49px;
            }
        .auto-style11 {
            height: 49px;
            width: 314px;
        }
        .auto-style12 {
            width: 314px;
        }
        .auto-style13 {
            height: 50px;
            width: 314px;
        }
        .auto-style14 {
            text-decoration: underline;
        }
        .auto-style15 {
            width: 465px;
            height: 96px;
        }
        .auto-style16 {
            width: 314px;
            height: 96px;
        }
        .auto-style17 {
            height: 96px;
        }
        .auto-style18 {
            text-decoration: underline;
            height: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">New Student Information</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Firstname" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                    <br />
                   <font face="arial" color="olive" size="-1"> For Example : Mariem or Abdel Rahman</font>
                </td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="v1" runat="server" ControlToValidate="Fname" ErrorMessage="First Name is Missing !!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Fname" ErrorMessage="InValid First name format" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" CssClass="auto-style14"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lastname" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="v2" runat="server" ControlToValidate="Lname" ErrorMessage="Last Name is Missing !!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Lname" ErrorMessage="InValid Last name format" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" CssClass="auto-style14"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Tele" runat="server" Text="Phone number:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox><br />
                    <font face="arial" color="olive" size="-1"> For Example : 0122 1234567</font>

                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Invalid phone num format" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="email" runat="server" Text="E-mail:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="mail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="v3" runat="server" ControlToValidate="mail" ErrorMessage="Email Address is Missing !!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mail" ErrorMessage="InValid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style14"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Con" runat="server" Text="Country :"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="country" runat="server">
                        <asp:ListItem Value="1">Egypt</asp:ListItem>
                        <asp:ListItem Value="2">Spain</asp:ListItem>
                        <asp:ListItem Value="3">italy</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="sex" runat="server" Text="Gender  :"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:RadioButtonList ID="gender" runat="server" Height="16px" Width="408px">
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="collagee" runat="server" Text="College :"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="fauclty" runat="server">
                        <asp:ListItem Value="1">CS</asp:ListItem>
                        <asp:ListItem Value="2">Pharmacy</asp:ListItem>
                        <asp:ListItem Value="3">Business</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="pass" runat="server" Text="PassWord:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="163px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="v4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage=" 8 character  and  16 at most" ValidationExpression="\w{8,16}" CssClass="auto-style14"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label9" runat="server" Text="Comfirm:"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtPassword0" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="163px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword0" ErrorMessage="No Matching Please RETYPE"></asp:CompareValidator>
                </td>
                <td class="auto-style18">
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="idd" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="v5" runat="server" ControlToValidate="id" ErrorMessage="ID is Missing !"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="msg" runat="server" Text="Message" BackColor="White" BorderColor="#CCFFFF" ForeColor="#3399FF"></asp:Label>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
