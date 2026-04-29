<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
                    Welcome Admin&nbsp; Form</td>
            </tr>
        </table>
        <table cellpadding="14" cellspacing="01" border="02" bordercolor="#660033" width="" style="font-family:Arial Black; font-size:18px; font-style:normal; font-weight:900;  color:Black;">
    <tr><td align="center">
        UserName
    </td>
    <td align="center">
   
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#660066" 
            BorderWidth="3px" Font-Bold="True" Width="230px"></asp:TextBox>
    <tr><td align="center">
        Password</td>
    <td align="center">
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#660066" 
            BorderWidth="3px" Font-Bold="True" Width="230px"></asp:TextBox>
    <tr><td align="center" colspan="2">
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
            />
        <asp:Button ID="Button2" runat="server" Text="Reset" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
    </table>
    <p><img src="images/Admin2.png" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>

