<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie koko = new HttpCookie("userInfo");
        koko.Expires = DateTime.Now.AddDays(-1);

        Response.Redirect("~/RoseHome.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

