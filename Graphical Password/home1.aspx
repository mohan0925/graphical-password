<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 22px;
        }
        .style5
        {
        }
        .style8
        {
            height: 22px;
            width: 477px;
        }
        .style9
        {
            width: 477px;
        }
        .style10
        {
            height: 22px;
            width: 448px;
        }
        .style11
        {
            width: 448px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table align="center" class="style3">
        <tr>
            <td>
                <table align="center" class="style3">
                    <tr>
                        <td align="center" class="style5" colspan="3" 
                            style="font-size: xx-large; font-weight: bold; color: #800080;">
                            WELCOME TO HOME PAGE</td>
                    </tr>
                    <tr>
                        <td align="center" class="style5" colspan="3" height="300">
                            <asp:Image ID="Image2" runat="server" Height="300px" 
                                ImageUrl="~/images/dec7.jpg" Width="900px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" style="font-weight: bold; font-size: larger" align="center">
                            </td>
                        <td class="style8" style="font-weight: bold; font-size: larger" align="center">
                            &nbsp;</td>
                        <td class="style4" style="font-weight: bold; font-size: larger" align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11" align="justify">
                            &nbsp;</td>
                        <td class="style9" align="justify">
                        </td>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>