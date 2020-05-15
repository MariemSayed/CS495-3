<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

         

            // Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            string strSelect = "SELECT * FROM Guest "
                + " WHERE UserName = '" + username + "'";

            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();
            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
            {
                fname.Text = (string)reader.GetValue(0);
                lname.Text = (string)reader.GetValue(1);
                Droptype.SelectedValue = (string)reader.GetValue(2);
                nationalityy.Text = (string)reader.GetValue(3);
                phone.Text = (string)reader.GetValue(4);
                numcreditcard.Text = (string)reader.GetValue(5);
                username.Text = (string)reader.GetValue(6);
                ggender.Text = (string)reader.GetValue(7);
                email.Text = (string)reader.GetValue(8);
               

            }
            conn.Close();
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        fname.Enabled = true;
        lname.Enabled = true;
        Droptype.Enabled = true;
        nationalityy.Enabled = true;
        phone.Enabled = true;
        numcreditcard.Enabled = true;
        username.Enabled = true;
        ggender.Enabled = true;
        email.Enabled = true;

        btnSave.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
      

        string strUpdate = "Update Guest "
            + " SET firstname = '" + fname.Text + "',"
            + " lastname = '" + lname.Text + "',"
            + " type = '" + Droptype.SelectedValue + "',"
            + " Nationality = '" + nationalityy.Text + "',"
            + " Phone = '" + phone.Text + "', "
             + " NumCreditCard = '" + numcreditcard.Text + "',"
              + " UserName = '" + username.Text + "', "
               + " Gender = '" + ggender.SelectedValue + "',"
                + " Email = '" + email.Text + "' "
            + " WHERE UserName = '" + Name.Text + "'";

        SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);

        conn.Open();
        cmdUpdate.ExecuteNonQuery();

        conn.Close();

        lblMsg.Text = "Your Account Has Been Successfully Updated!!";


    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 10px;
        }
        .style7 {
            height: 483px;
        }
        .auto-style17 {
            width: 355px;
            height: 21px;
        }
        .auto-style18 {
            width: 30%;
            height: 41px;
        }
        .auto-style19 {
            width: 460px;
            height: 41px;
        }
        .auto-style20 {
            height: 41px;
        }
        .auto-style21 {
            height: 42px;
        }
        .auto-style22 {
            width: 460px;
            height: 42px;
        }
        .auto-style23 {
            width: 355px;
            height: 42px;
        }
        .auto-style25 {
            width: 460px;
            height: 21px;
        }
        .auto-style26 {
            height: 21px;
        }
        .auto-style28 {
            width: 460px;
            height: 39px;
        }
        .auto-style29 {
            width: 355px;
            height: 39px;
        }
        .auto-style30 {
            height: 39px;
        }
        .auto-style31 {
            height: 34px;
        }
        .auto-style32 {
            width: 460px;
            height: 34px;
        }
        .auto-style33 {
            width: 355px;
            height: 34px;
        }
        .auto-style34 {
            height: 33px;
        }
        .auto-style35 {
            width: 460px;
            height: 33px;
        }
        .auto-style36 {
            width: 355px;
            height: 33px;
        }
        .auto-style37 {
            height: 18px;
        }
        .auto-style38 {
            width: 460px;
            height: 18px;
        }
        .auto-style39 {
            width: 355px;
            height: 18px;
        }
        .auto-style40 {
            width: 460px;
            height: 3px;
        }
        .auto-style41 {
            width: 355px;
            height: 3px;
        }
        .auto-style42 {
            height: 3px;
        }
        .auto-style47 {
            width: 30%;
            height: 42px;
        }
        .auto-style48 {
            width: 30%;
            height: 21px;
        }
        .auto-style49 {
            width: 30%;
            height: 39px;
        }
        .auto-style50 {
            width: 30%;
            height: 34px;
        }
        .auto-style51 {
            width: 30%;
            height: 33px;
        }
        .auto-style52 {
            width: 30%;
            height: 18px;
        }
        .auto-style53 {
            width: 30%;
            height: 3px;
        }
        .auto-style54 {
            width: 30%;
        }
        .auto-style55 {
            width: 460px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Enter User Name:" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White"></asp:Label>
     <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="589px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="NumCreditCard" HeaderText="NumCreditCard" SortExpression="NumCreditCard" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="typeuser" HeaderText="typeuser" SortExpression="typeuser" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [type], [Nationality], [Phone], [NumCreditCard], [UserName], [Gender], [Email], [typeuser] FROM [guest] WHERE ([FirstName] = @FirstName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Name" Name="FirstName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
     <table class="style7">
        <tr>
            <td class="auto-style47">
                    <asp:Label ID="Label15" runat="server" Text="First Name" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="fname" runat="server" Enabled="False"></asp:TextBox><br />
                    <font face="arial" color="White" size="-1"> For Example:Ahmed or Abdel Rahman</font> 
                </td>
                <td class="auto-style23">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="fname" ErrorMessage="Invalid First Name Format!!!" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style21">
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label16" runat="server" Text="Last Name" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="lname" runat="server" Enabled="False"></asp:TextBox><br />
                    <font face="arial" color="White" size="-1"> For Example:Ahmed or Abdel Rahman</font>
                </td>
                <td class="auto-style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Invalid Last Name Format!!!" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style20">
                </td>
            </tr>
            <tr>
                <td class="auto-style48">
                    <asp:Label ID="Label17" runat="server" Text="Type Of Guest" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:DropDownList ID="Droptype" runat="server" Enabled="False">
                        <asp:ListItem>Local</asp:ListItem>
                        <asp:ListItem>Foreigner</asp:ListItem>
                        <asp:ListItem>Group</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style49">
                    <asp:Label ID="Label18" runat="server" Text="Nationality" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:DropDownList ID="nationalityy" runat="server" Enabled="False">
                        <asp:ListItem>Egyption</asp:ListItem>
                        <asp:ListItem>French</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                        <asp:ListItem>Chinese</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>Italian</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style29">
                    </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style50">
                    <asp:Label ID="Label25" runat="server" Text="Credit Card Number" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="numcreditcard" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    </td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style48">
                    <asp:Label ID="Label19" runat="server" Text="Phone Number" ForeColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="phone" runat="server" Enabled="False"></asp:TextBox><br />
                    <font face="arial" color="midnightblue" size="-1"> For Example:0122 1234567</font>
                </td>
                <td class="auto-style17">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="phone" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0][1][0-2]\s\d{7}" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:Label ID="Label20" runat="server" Text="UserName" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="username" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style36">
                    &nbsp;</td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style52">
                    <asp:Label ID="Label21" runat="server" Text="Gender" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:RadioButtonList ID="ggender" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="203px" Font-Bold="True" ForeColor="White" Enabled="False">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style53">
                    <asp:Label ID="Label22" runat="server" Text="Email" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="email" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style42">
                    &nbsp;</td>
            </tr>
        <tr>
            <td class="auto-style54">
                <asp:Button ID="btnEdit" runat="server" Font-Names="Arial Black" 
                    Font-Size="Medium" ForeColor="#000066" Text="Edit" 
                    onclick="btnEdit_Click"  />
            </td>
            <td class="auto-style55">
                <asp:Button ID="btnSave" runat="server" Font-Names="Arial Black" 
                    Font-Size="Medium" onclick="btnSave_Click" Text="Save" Visible="False" />
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     <p>
        <asp:Label ID="lblMsg" runat="server" Font-Names="Monotype Corsiva" 
            Font-Size="X-Large" ForeColor="White"></asp:Label>
    </p>
</asp:Content>

