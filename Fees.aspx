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

         <a href="Index.aspx">Back</a>
          <table border="1" bordercolor="red" style="font-family:Times New Roman; font-size:20px; font-weight:bolder;"><tr><td align="center">
          
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FeesId" 
                  DataSourceID="SqlDataSource1" Height="163px" 
                  style="color: #000066; background-color: #DCDCCB" Width="431px">
                  <Columns>
                      <asp:BoundField DataField="FeesId" HeaderText="FeesId" InsertVisible="False" 
                          ReadOnly="True" SortExpression="FeesId" />
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:BoundField DataField="RegNo" HeaderText="RegNo" SortExpression="RegNo" />
                      <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                      <asp:BoundField DataField="TotalAmts" HeaderText="TotalAmts" 
                          SortExpression="TotalAmts" />
                      <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid" />
                  </Columns>
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
          
      </td></tr></table>
         <p style="position:absolute; top:8%; left:40%;"><img src="images/fees1.jpg" width="80%" /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>
