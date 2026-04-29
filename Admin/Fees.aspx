<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>

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
         width: 37%;
         border: 1px solid #800080;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="3" class="style1">
            <tr>
                <td style="text-align: center">
                  Fees Details
                   </td>
            </tr>
        </table>
     
        <p> <a href="Index.aspx">Back</a></p>
         <table align="left" cellpadding="16"  style="font-family:Times New Roman; font-size:22px; font-weight:bolder;" class="style2">
          <tr>
              <td>
                  Name</td>
              <td>
        
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
              </td>
          </tr>
          <tr>
              <td>
                  RegNo</td>
              <td>
        
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
              </td>
          </tr>
          <tr>
              <td>
                  Semester</td>
              <td>
        
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
              </td>
          </tr>
          <tr>
              <td>
                  Total Amounts</td>
              <td>
        
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
              </td>
          </tr>
          <tr>
              <td>
                  Paid</td>
              <td>
        
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="Maroon" 
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
         <p style="position:absolute; top:70%;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" DataKeyNames="FeesId" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                         ShowSelectButton="True" />
                     <asp:BoundField DataField="FeesId" HeaderText="FeesId" InsertVisible="False" 
                         ReadOnly="True" SortExpression="FeesId" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="RegNo" HeaderText="RegNo" SortExpression="RegNo" />
                     <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                     <asp:BoundField DataField="TotalAmts" HeaderText="TotalAmts" 
                         SortExpression="TotalAmts" />
                     <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid" />
                 </Columns>
                 <FooterStyle BackColor="White" ForeColor="#000066" />
                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                 <RowStyle ForeColor="#000066" />
                 <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#007DBB" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#00547E" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 DeleteCommand="DELETE FROM [fees] WHERE [FeesId] = @FeesId" 
                 InsertCommand="INSERT INTO [fees] ([Name], [RegNo], [Sem], [TotalAmts], [Paid]) VALUES (@Name, @RegNo, @Sem, @TotalAmts, @Paid)" 
                 SelectCommand="SELECT * FROM [fees]" 
                 UpdateCommand="UPDATE [fees] SET [Name] = @Name, [RegNo] = @RegNo, [Sem] = @Sem, [TotalAmts] = @TotalAmts, [Paid] = @Paid WHERE [FeesId] = @FeesId">
                 <DeleteParameters>
                     <asp:Parameter Name="FeesId" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Name" Type="String" />
                     <asp:Parameter Name="RegNo" Type="String" />
                     <asp:Parameter Name="Sem" Type="String" />
                     <asp:Parameter Name="TotalAmts" Type="String" />
                     <asp:Parameter Name="Paid" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Name" Type="String" />
                     <asp:Parameter Name="RegNo" Type="String" />
                     <asp:Parameter Name="Sem" Type="String" />
                     <asp:Parameter Name="TotalAmts" Type="String" />
                     <asp:Parameter Name="Paid" Type="String" />
                     <asp:Parameter Name="FeesId" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
         </p>
    <div class="footer">
  <p>
      Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>
