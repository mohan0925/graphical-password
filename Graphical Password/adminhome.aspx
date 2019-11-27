<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

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
        <td align="center" style="font-size: x-large; font-weight: bold">
            WELCOME TO ADMIN HOME&nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <asp:Image ID="Image3" runat="server" Height="307px" 
                ImageUrl="~/images/admin.jpg" Width="719px" style="margin-left: 0px" />
        </td>
    </tr>
</table>
</asp:Content>