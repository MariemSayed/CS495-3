<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" %>
<%@import Namespace="System.Data.SqlClient" %>
<script runat="server">

   
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        // Create SQL Insert Statement
        string strInsert = "INSERT INTO Room "
            + " VALUES('" + to.SelectedDate + "', '"
            + from.SelectedDate + "', '"
            + season.SelectedValue + "', '"
            + Droptype.SelectedValue + "', '"
            + num.Text + "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();

            msg.Text = "Your " + Droptype.SelectedValue + "  Has been Successfully booked!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                msg.Text = "Room Number already exists, Please Choose Another!!";
            else
                msg.Text = err.Message;
        }

        catch
        {
            msg.Text = "Sorry, System Error, You may Try later!!";
        }
    
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 28px;
            width: 419px;
        }
        .auto-style16 {
            width: 70px;
        }
        .auto-style17 {
            width: 147px;
        }
        .auto-style20 {
            width: 419px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="style7">
        <tr>
            <td class="auto-style17">
                    <asp:Label ID="Label15" runat="server" Text="To:" Font-Bold="True" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:Calendar ID="to" runat="server"></asp:Calendar>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>

            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label16" runat="server" Text="From:" Font-Bold="True" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:Calendar ID="from" runat="server"></asp:Calendar>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label17" runat="server" Text="Rooms Type" Font-Bold="True" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:DropDownList ID="Droptype" runat="server">
                        <asp:ListItem>Single Room</asp:ListItem>
                        <asp:ListItem>Double Room</asp:ListItem>
                        <asp:ListItem>Suite</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    </td>
             
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label18" runat="server" Text="Season" Font-Bold="True" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:DropDownList ID="season" runat="server">
                        <asp:ListItem>Low</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>High</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="roomnum" runat="server" Text="Room Number" Font-Bold="True" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="num" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style50" colspan="3">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Prise:"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="LowSingleRoom" HeaderText="LowSingleRoom" SortExpression="LowSingleRoom" />
                            <asp:BoundField DataField="LowDoubleRoom" HeaderText="LowDoubleRoom" SortExpression="LowDoubleRoom" />
                            <asp:BoundField DataField="LowSuiteRoom" HeaderText="LowSuiteRoom" SortExpression="LowSuiteRoom" />
                            <asp:BoundField DataField="MediumSingleRoom" HeaderText="MediumSingleRoom" SortExpression="MediumSingleRoom" />
                            <asp:BoundField DataField="MediumDoubleRoom" HeaderText="MediumDoubleRoom" SortExpression="MediumDoubleRoom" />
                            <asp:BoundField DataField="MediumSuiteRoom" HeaderText="MediumSuiteRoom" SortExpression="MediumSuiteRoom" />
                            <asp:BoundField DataField="HighSingleRoom" HeaderText="HighSingleRoom" SortExpression="HighSingleRoom" />
                            <asp:BoundField DataField="HighDoubleRoom" HeaderText="HighDoubleRoom" SortExpression="HighDoubleRoom" />
                            <asp:BoundField DataField="HighSuiteRoom" HeaderText="HighSuiteRoom" SortExpression="HighSuiteRoom" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PriseRoom]"></asp:SqlDataSource>
                </td>
            </tr>
        <tr>
            <td class="auto-style54" colspan="3">
                <asp:Label ID="msg" runat="server" ForeColor="White"></asp:Label>
            </td>
                       
        <tr>
            <td class="auto-style54" colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BOOK" />
            </td>
                       
    </table>

</asp:Content>

