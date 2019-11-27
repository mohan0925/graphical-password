<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 24px;
        }
        .style5
        {
            height: 24px;
            width: 231px;
        }
        .style6
        {
            width: 231px;
        }
        .style7
        {
            height: 28px;
        }
        .style8
        {
            width: 231px;
            height: 28px;
        }
        .style9
        {
            height: 24px;
            width: 341px;
        }
        .style10
        {
            width: 341px;
        }
        .style11
        {
            height: 28px;
            width: 341px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3">
        <tr>
            <td align="center" colspan="6" style="font-size: xx-large; font-weight: bold">
                Services</td>
        </tr>
        <tr>
            <td class="style9" style="font-size: large; font-weight: bold" align="center">
                Catering</td>
            <td class="style4" style="font-size: large; font-weight: bold" align="center">
                Decoration Desining</td>
            <td class="style4" style="font-size: large; font-weight: bold" align="center">
                Entertainment</td>
            <td class="style4" style="font-size: large; font-weight: bold" align="center">
                Makeup</td>
            <td class="style5" style="font-size: large; font-weight: bold" align="center">
                Photography</td>
            <td class="style4" style="font-size: large; font-weight: bold" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Image ID="Image8" runat="server" Height="144px" 
                    ImageUrl="~/images/catering.jpg" Width="307px" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="150px" 
                    ImageUrl="~/images/dec2.jpg" Width="200px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="150px" 
                    ImageUrl="~/images/entertainment.jpg" Width="200px" />
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" Height="150px" 
                    ImageUrl="~/images/makeup.jpg" Width="200px" />
            </td>
            <td class="style6">
                <asp:Image ID="Image6" runat="server" Height="150px" 
                    ImageUrl="~/images/photo1s.jpg" Width="200px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style11">
                Description:</td>
            <td style="font-weight: bold" class="style7">
                Description</td>
            <td style="font-weight: bold" class="style7">
                Description</td>
            <td style="font-weight: bold" class="style7">
                Description</td>
            <td style="font-weight: bold" class="style8">
                Description</td>
            <td style="font-weight: bold" class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Catering</b><span 
                    style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>is the<span 
                    class="Apple-converted-space">&nbsp;business&nbsp;</span>of providing food service at 
                a remote site or a site such as a<span class="Apple-converted-space">&nbsp;hotel
                </span>, public house (pub), or other location. Catering has evolved to become 
                an<span class="Apple-converted-space">&nbsp;artisanal&nbsp;</span>affair. Caterers now 
                create an experience that involves the senses.</span><br />
                <br />
                <br />
            </td>
            <td>
                fd fdfsdf dsfsd f<br />
                dfjkljdklflkd lfkld<br />
                fjkldf lkdfjdjfklj<br />
                <br />
                <br />
            </td>
            <td>
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <br />
            </td>
            <td>
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <br />
            </td>
            <td class="style6">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/cateringviewmore.aspx">Viewmore</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server">viewmore</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server">Viewmore</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server">Viewmore</asp:HyperLink>
            </td>
            <td class="style6">
                <asp:HyperLink ID="HyperLink5" runat="server">Viewmore</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>