<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #000080;
            font-family:Times New Roman;
            font-size:35px; font-weight:bolder; 
            font-style:normal;
           color:White;
            background-color:#3333cc;
        }
        .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: red;
   color: white;
   text-align: center;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="3" class="style1">
            <tr>
                <td style="text-align: center">
                   Results Details
                   </td>
            </tr>
        </table>
        <a href="Index.aspx">Back</a>
        <br />
        <table cellpadding="9" border="1" bordercolor="red" align="right" style="font-family:Times New Roman; font-size:24px; font-variant:normal; color:DarkBlue; font-weight:bolder;"><tr><td align="center">
        
            Register No</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
        </td></tr><tr><td align="center">
        
                Name</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                Kannada</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                English</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                Hindi</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                Maths</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                Science</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox7" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                SocialScience</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox8" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center">
        
                Description</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox9" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
                </td></tr><tr><td align="center" colspan="2">
        
                <asp:Button ID="Button1" runat="server" BorderColor="#000066" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="12pt" Text="Submit" Width="67px" 
                    onclick="Button1_Click" />
        
                <asp:Button ID="Button2" runat="server" BorderColor="#000066" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="12pt" Text="Reset" Width="69px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr></table>
            <br />
           <table align="center"><tr><td align="center">
            
                &nbsp;</td></tr></table>
                <p style="position:absolute; top:20%; left:5%;"><img src="../images/results1.jpg" width="80%" border="1" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>