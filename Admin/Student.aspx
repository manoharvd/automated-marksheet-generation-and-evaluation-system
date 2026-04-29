<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

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
     .style2
     {
         width: 35%;
         border: 1px solid #008080;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table  cellpadding="3" class="style1">
            <tr>
                <td style="text-align: center">
                  Student  Details
                   </td>
            </tr>
        </table>
         <a href="Index.aspx">Back</a>
        
        
    <div class="footer">
  <p>Student MarksSheet Generation</p>
</div>
<br />
        <table align="right" cellpadding="10" class="style2">
            <tr>
                <td>
                    RegNo</td>
                <td>
        
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    First Name</td>
                <td>
        
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Last Name</td>
                <td>
        
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Address</td>
                <td>
        
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Contact No</td>
                <td>
        
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Branch</td>
                <td>
        
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Semester</td>
                <td>
        
            <asp:TextBox ID="TextBox7" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td>
                    Description</td>
                <td>
        
            <asp:TextBox ID="TextBox8" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
        
                <asp:Button ID="Button1" runat="server" BorderColor="#000066" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="12pt" Text="Submit" Width="81px" 
                        onclick="Button1_Click" />
        
                <asp:Button ID="Button2" runat="server" BorderColor="#000066" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="12pt" Text="Reset" Width="81px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <p style="position:absolute; top:14%; left:4%;"><img src="../images/student3.jpg" width="90%" border="1" /></p>
    </div>
    </form>
</body>
</html>