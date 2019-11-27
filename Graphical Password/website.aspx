<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="website.aspx.cs" Inherits="_Default" %>

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
            <td align="center" style="font-weight: bold; font-size: x-large">WEBSITES TO BE ADDED</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="rid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Height="150px" Width="519px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="rid" HeaderText="rid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="rid" />
                        <asp:BoundField DataField="Website" HeaderText="Website" 
                        SortExpression="Website" />
                        
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
                DeleteCommand="DELETE FROM [website1] WHERE [rid] = @rid" 
                InsertCommand="INSERT INTO [website1] ( [website]) VALUES (@website)" 
                SelectCommand="SELECT * FROM [website1]" 
                UpdateCommand="UPDATE [website1] SET [website] = @website WHERE [rid] = @rid">
                    <DeleteParameters>
                        <asp:Parameter Name="rid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="website" Type="String" />
                        
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="website" Type="String" />
                        <asp:Parameter Name="rid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

