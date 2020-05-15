<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
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
        .auto-style3 {
            width: 399px;
            height: 84px;
        }
        .auto-style4 {
            height: 84px;
            width: 868px;
            text-align: center;
        }        
        .auto-style5 {
            width: 727px;
            height: 84px;
        }
        .auto-style6 {
            width: 344px;
            height: 84px;
        }
       .Book {              padding: 14px 30px !important;            font-size: 22px !important;            bordeR: 1px solid transparent;            border-radius: 30px;            line-height: 1.33333;            color: #fff;            background-color: lightskyblue;                         position: absolute;            top: 50%;            left: 50%;            -ms-transform: translate(-50%, -50%);            transform: translate(-50%, -50%);             
     
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-position: center center; background-size: cover;
 background-image: url('image/Lake.jpg'); height:800px " >
    <div>
    
        
    </div>
         <center>
    
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="HoloLens MDL2 Assets" Font-Size="Large" ForeColor="White" NavigateUrl="~/Trrip in hotel.aspx">Trip in Our Hotel</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="HoloLens MDL2 Assets" Font-Size="Large" ForeColor="White" NavigateUrl="~/SignIn.aspx">Sign In</asp:HyperLink>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="HoloLens MDL2 Assets" Font-Size="Large" ForeColor="White" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" BorderColor="White" BorderStyle="None" Font-Names="Harrington" Font-Size="XX-Large" ForeColor="White" style="margin-left: 0px" Text=" Rosé Hotels" Width="806px" ></asp:Label>
                </td>
            </tr>
        </table>
             <div class="Book">
    <center>
        
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Booking.aspx" ForeColor="White">Book Now</asp:HyperLink>
  </center>
                 </div>
    </form>
</body>
</html>
