<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewusers.aspx.cs" Inherits="viewusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 80%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td align="center" style="font-weight: bold; font-size: x-large">
            VIEW USERS&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="rid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Height="228px" Width="631px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="rid" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" 
                        SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" 
                        SortExpression="lastname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="username" HeaderText="username" 
                        SortExpression="username" />
                    <asp:BoundField DataField="images" HeaderText="images" 
                        SortExpression="images" />
                    <asp:BoundField DataField="imagenames" HeaderText="imagenames" 
                        SortExpression="imagenames" />
                    <asp:BoundField DataField="imagepoint" HeaderText="imagepoint" 
                        SortExpression="imagepoint" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" 
                        SortExpression="regdate" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:graphicalpasswordsConnectionString %>" 
                DeleteCommand="DELETE FROM [registrations] WHERE [rid] = @rid" 
                InsertCommand="INSERT INTO [registrations] ([firstname], [lastname], [email], [phoneno], [username], [images], [imagenames], [imagepoint], [regdate]) VALUES (@firstname, @lastname, @email, @phoneno, @username, @images, @imagenames, @imagepoint, @regdate)" 
                SelectCommand="SELECT * FROM [registrations]" 
                UpdateCommand="UPDATE [registrations] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [phoneno] = @phoneno, [username] = @username, [images] = @images, [imagenames] = @imagenames, [imagepoint] = @imagepoint, [regdate] = @regdate WHERE [rid] = @rid">
                <DeleteParameters>
                    <asp:Parameter Name="rid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phoneno" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="images" Type="Int32" />
                    <asp:Parameter Name="imagenames" Type="String" />
                    <asp:Parameter Name="imagepoint" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phoneno" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="images" Type="Int32" />
                    <asp:Parameter Name="imagenames" Type="String" />
                    <asp:Parameter Name="imagepoint" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                    <asp:Parameter Name="rid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>