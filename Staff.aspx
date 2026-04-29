<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

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
    <div style="color: #000066">
    
        <table cellpadding="3" class="style1">
            <tr>
                <td style="text-align: center">
                  Staff Details
                   </td>
            </tr>
        </table>
         <a href="Index.aspx">Back</a>
         <table border="1" bordercolor="red" style="font-family:Times New Roman; font-size:19px; font-weight:bolder;"><tr><td align="center">
          
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="StaffID" DataSourceID="SqlDataSource1" Height="134px" 
                 style="color: #000066; background-color: #FFFFCC" Width="632px">
                 <Columns>
                     <asp:BoundField DataField="StaffID" HeaderText="StaffID" InsertVisible="False" 
                         ReadOnly="True" SortExpression="StaffID" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                         SortExpression="ContactNo" />
                     <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
                     <asp:BoundField DataField="Designation" HeaderText="Designation" 
                         SortExpression="Designation" />
                     <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                     <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" 
                         SortExpression="JoinDate" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
          
      </td></tr></table>
      <p style="position:absolute; top:8%; left:60%;"><img src="images/staff4.jpg" width="70%" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>
