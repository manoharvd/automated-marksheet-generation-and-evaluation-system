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
         <table border="1" bordercolor="red" style="font-family:Times New Roman; font-size:19px; font-weight:bolder;"><tr><td align="center">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RegNo" 
                 DataSourceID="SqlDataSource1" Height="153px" 
                 style="color: #000066; background-color: #FFCCCC" Width="724px">
                 <Columns>
                     <asp:BoundField DataField="RegNo" HeaderText="RegNo" ReadOnly="True" 
                         SortExpression="RegNo" />
                     <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                     <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                     <asp:BoundField DataField="Address" HeaderText="Address" 
                         SortExpression="Address" />
                     <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                         SortExpression="ContactNo" />
                     <asp:BoundField DataField="Branch" HeaderText="Branch" 
                         SortExpression="Branch" />
                     <asp:BoundField DataField="Semester" HeaderText="Semester" 
                         SortExpression="Semester" />
                     <asp:BoundField DataField="Description" HeaderText="Description" 
                         SortExpression="Description" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
      </td></tr></table>
            <p style="position:absolute; top:8%; left:60%;"><img src="images/Student4.jpg" width="80%" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>