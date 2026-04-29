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
     .style2
     {
         width: 40%;
         border: 1px solid #0000FF;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="3" class="style1">
            <tr>
                <td style="text-align: center">
                  Staff Details
                   </td>
            </tr>
        </table>
         <a href="Index.aspx">Back</a>
        
        
    <div class="footer">
  <p>Student MarksSheet Generation</p>
</div>

    </div>
    <table align="left" style="font-family:Times New Roman; font-size:22px; font-weight:bolder;" cellpadding="14" class="style2">
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
                Contact No</td>
            <td>
        
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
            </td>
        </tr>
        <tr>
            <td>
                Dept</td>
            <td>
        
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
            </td>
        </tr>
        <tr>
            <td>
                Designation </td>
            <td>
        
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
            </td>
        </tr>
        <tr>
            <td>
                Exp</td>
            <td>
        
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="Maroon" 
                BorderWidth="1px" Height="24px" Width="220px"></asp:TextBox>
        
            </td>
        </tr>
        <tr>
            <td>
                JoinDate</td>
            <td>
        
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Maroon" 
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
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="StaffID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
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
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [staff] WHERE [StaffID] = @StaffID" 
            InsertCommand="INSERT INTO [staff] ([Name], [ContactNo], [Dept], [Designation], [Exp], [JoinDate]) VALUES (@Name, @ContactNo, @Dept, @Designation, @Exp, @JoinDate)" 
            SelectCommand="SELECT * FROM [staff]" 
            UpdateCommand="UPDATE [staff] SET [Name] = @Name, [ContactNo] = @ContactNo, [Dept] = @Dept, [Designation] = @Designation, [Exp] = @Exp, [JoinDate] = @JoinDate WHERE [StaffID] = @StaffID">
            <DeleteParameters>
                <asp:Parameter Name="StaffID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Dept" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Exp" Type="String" />
                <asp:Parameter Name="JoinDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Dept" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Exp" Type="String" />
                <asp:Parameter Name="JoinDate" Type="String" />
                <asp:Parameter Name="StaffID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>



