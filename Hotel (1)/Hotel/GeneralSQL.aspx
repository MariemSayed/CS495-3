<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">


    protected void btnexecut_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        SqlCommand cmdSelect = new SqlCommand(txtquery.Text, conn);

        DataTable tbl = new DataTable();

        conn.Open();
        tbl.Load(cmdSelect.ExecuteReader());

        Resultt.DataSource = tbl;

        Resultt.DataBind();

        conn.Close();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
    }
        .auto-style14 {
            width: 158px;
            height: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5" style="height: 422px; margin-bottom: 0px">
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label1" runat="server" Text="GENERAL SQL" Font-Size="XX-Large" ForeColor="White"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtquery" runat="server" Height="66px" TextMode="MultiLine" Width="357px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="2">
            <asp:Button ID="btnexecut" runat="server" OnClick="btnexecut_Click" Text="Execut" Height="40px" style="margin-top: 0px" Width="149px" />
            <asp:GridView ID="Resultt" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

