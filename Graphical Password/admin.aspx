<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 291px;
        width: 638px;
    }
        .style7
        {
            width: 100%;
        }
        .style8
        {
    }
    .style9
    {
        height: 37px;
    }
    .style10
    {
        height: 321px;
    }
    .style11
    {
        height: 59px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style6" bgcolor="#99CCFF">
        <tr>
            <td align="center" class="style9" style="font-weight: bold; font-size: x-large">
                Admin Login</td>
        </tr>
        <tr>
            <td align="center" class="style10">
                <br />
                <table class="style7">
                    <tr>
                        <td align="right" class="style8" style="font-weight: bold">
                            Username</td>
                        <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="211px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style8" style="font-weight: bold">
                            Password</td>
                        <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11" colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Login" OnClick="Button1_Click1" />
                            </td>
                    </tr>
                    <tr>
                        <td class="style8" colspan="2">
                            <br />
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>