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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">New Student Information</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="name" runat="server" Text="Full name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="phone" runat="server" Text="Phone NUM:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="mail" runat="server" Text="E=mail:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="country" runat="server" Text="Country :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="sex" runat="server" Text="Gender  :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="408px">
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="bus" runat="server" Text="Bus :"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="YES" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="college" runat="server" Text="College :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Medicine</asp:ListItem>
                        <asp:ListItem>dentistary</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>pharmacy</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="password" runat="server" Text="PassWord:"></asp:Label>
                </td>
                <td>
                    <input id="Password1" type="password" /></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="Comfirm:"></asp:Label>
                </td>
                <td>
                    <input id="Password2" type="password" /></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="id" runat="server" Text="ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
