<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reports1.aspx.cs" Inherits="reports1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .style1
        {
            width: 69%;
            border: 2px solid #000080;
            height: 359px;
        }
        .style2
        {
            color: #000066;
        }
        .style3
        {
            font-weight: bold;
            text-align: left;
            background-color: #FFFFCC;
        }
        .style4
        {
            color: #000066;
            font-weight: bold;
            text-align: left;
            background-color: #FFFFCC;
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
    
        <table  cellpadding="10" cellspacing="1 border="1" align="center" bordercolor="red" bgcolor="#0033cc" width="100%" style="font-family:Times New Roman; font-size:32px; font-variant:normal; font-weight:bolder; color:White;">
     <tr><td align="center">Student Reports Card Generate Form </td>
     
     </tr>
        </table>
    <hr color="green" size="1" />
     <table  cellpadding="12" cellspacing="1" border="1" align="center" bordercolor="red" width="35%" style="font-family:Times New Roman; font-size:20px; font-variant:normal; font-weight:bolder; color:DarkBlue;">
     <tr><td align="center">Enter the Reg No</td>
     <td align="center">
         <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
         </td>
     </tr>
     <tr>
     <td align="center" colspan="2">
         <asp:Button ID="Button3" runat="server" Text="Search Here" Width="100px" 
             onclick="Button3_Click" />
         </td>
     </tr>
        </table>
            <hr color="green" size="1" />
        </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
   
        <table align="center" cellspacing="1" class="style1">
            <tr>
                <td class="style4">
                    RegNo</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Name</td>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Kan</td>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Eng</td>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Hindi</td>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Maths</td>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Science</td>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    SocailScience</td>
                <td class="style3">
                    <asp:Label ID="Label8" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Description</td>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Label" CssClass="style2"></asp:Label>
                </td>
            </tr>
    </table>
     </asp:Panel>
     <p align="center">
     
         <asp:Button ID="Button4" runat="server" Text="Download Reports " 
             Width="176px" onclick="Button4_Click" />
     
     </p>
     <a href="Index.aspx">Back</a>
     <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </form>
</body>
</html>
