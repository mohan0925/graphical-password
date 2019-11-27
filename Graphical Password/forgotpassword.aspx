<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 362px;
        width: 638px;
    }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 335px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style6">
        <tr>
            <td align="center">
                <asp:Image ID="Image3" runat="server" Height="154px" 
                    ImageUrl="~/images/forgotimage.jpg" Width="328px" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <br />
                <br />
                <table class="style7">
                    <tr>
                        <td align="right" class="style8" style="font-weight: bold">
                            Email</td>
                        <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="211px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style8">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td align="left">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Get Password" OnClick="Button1_Click1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>