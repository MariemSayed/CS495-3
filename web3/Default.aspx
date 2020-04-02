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
                    <asp:Label ID="n" runat="server" Text="Full name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="p" runat="server" Text="Phone NUM:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="email" runat="server" Text="E=mail:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="mail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="c" runat="server" Text="Country :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="country" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                    <asp:RadioButtonList ID="gender" runat="server" Height="16px" Width="408px">
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="b" runat="server" Text="Bus :"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="bus" runat="server" Text="YES" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="co" runat="server" Text="College :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="college" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
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
                    <asp:Label ID="pa" runat="server" Text="PassWord:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="Comfirm:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="mail1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="i" runat="server" Text="ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
