<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                Welcome To Login Page
                   </td>
            </tr>
        </table>
      <table border="1" bordercolor="red" style="font-family:Times New Roman; font-size:19px; font-weight:bolder;"><tr><td align="center">
          <asp:Login ID="Login1" runat="server" Height="252px" Width="363px" 
              CreateUserText="New User ??" CreateUserUrl="~/Register.aspx" 
              DestinationPageUrl="~/Index.aspx">
          </asp:Login>
      </td></tr></table>
      <p><img src="images/login1.jpg" style="width: 475px" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>