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
        <table cellpadding="10" border="1" bordercolor="red" align="center" style="font-family:Times New Roman; font-size:24px; font-variant:normal; color:DarkBlue; font-weight:bolder;"><tr><td align="center">
        
            Enter the Register No</td>
        <td align="center">
        
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="22px" Width="220px"></asp:TextBox>
        
        </td></tr><tr><td align="center" colspan="2">
        
                <asp:Button ID="Button1" runat="server" BorderColor="#000066" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="12pt" Text="Enter Here" Width="114px" />
                </td>
            </tr></table>
            <br />
           <table align="center"><tr><td align="center">
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" DataKeyNames="RegNo" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="RegNo" HeaderText="RegNo" ReadOnly="True" 
                            SortExpression="RegNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Kan" HeaderText="Kan" SortExpression="Kan" />
                        <asp:BoundField DataField="Eng" HeaderText="Eng" 
                            SortExpression="Eng" />
                        <asp:BoundField DataField="Hindi" HeaderText="Hindi" 
                            SortExpression="Hindi" />
                        <asp:BoundField DataField="Maths" HeaderText="Maths" 
                            SortExpression="Maths" />
                        <asp:BoundField DataField="Science" HeaderText="Science" 
                            SortExpression="Science" />
                        <asp:BoundField DataField="socialScience" HeaderText="socialScience" 
                            SortExpression="socialScience" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Markssheets] WHERE ([RegNo] = @RegNo)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="RegNo" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td></tr></table>
               <p style="position:absolute; top:13%; left:1%;"><img src="images/results2.jpeg" 
                      border="2"  style="height: 214px; width: 40%"  /></p>
    <div class="footer">
  <p>Automated marksheet generation and evaluation system</p>
</div>

    </div>
    </form>
</body>
</html>