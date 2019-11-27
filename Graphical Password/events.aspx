<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="events.aspx.cs" Inherits="events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
    {
        height: 71px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3">
        <tr>
            <td align="center" colspan="4" style="font-size: xx-large; font-weight: bold">
                Events<br />
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: larger; font-weight: bold">
                WEDDING<br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="150px" 
                    ImageUrl="~/images/dec2.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                RECEPTIONS<br />
                <br />
                <asp:Image ID="Image4" runat="server" Height="150px" 
                    ImageUrl="~/images/dec3.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                ENGAGEMENT<br />
                <br />
                <asp:Image ID="Image5" runat="server" Height="150px" 
                    ImageUrl="~/images/dec4.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                MEHENDI<br />
                <br />
                <asp:Image ID="Image6" runat="server" Height="150px" 
                    ImageUrl="~/images/m2.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
        </tr>
        <tr>
            <td align="center" class="style4">
                fd fdfsdf dsfsd f<br />
                dfjkljdklflkd lfkld<br />
                fjkldf lkdfjdjfklj<br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server">viewmore</asp:HyperLink>
                <br />
            </td>
            <td align="center" class="style4">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server">Viewmore</asp:HyperLink>
            </td>
            <td align="center" class="style4">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server">Viewmore</asp:HyperLink>
                <br />
            </td>
            <td align="center" class="style4">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server">Viewmore</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: larger; font-weight: bold">
                BIRTHDAY PARTY<br />
                <br />
                <asp:Image ID="Image7" runat="server" Height="150px" 
                    ImageUrl="~/images/dec5.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                ANNIVERSARY<br />
                <br />
                <asp:Image ID="Image8" runat="server" Height="150px" 
                    ImageUrl="~/images/dec6.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                NAMING CEREMONIES<br />
                <br />
                <asp:Image ID="Image9" runat="server" Height="150px" 
                    ImageUrl="~/images/dec1.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                GET TOGETHER<br />
                <asp:Image ID="Image10" runat="server" Height="150px" 
                    ImageUrl="~/images/dec3.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            </tr>
        <tr>
            <td align="center">
                fd fdfsdf dsfsd f<br />
                dfjkljdklflkd lfkld<br />
                fjkldf lkdfjdjfklj<br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server">viewmore</asp:HyperLink>
                <br />
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server">viewmore</asp:HyperLink>
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink7" runat="server">viewmore</asp:HyperLink>
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink8" runat="server">viewmore</asp:HyperLink>
            </td>
            </tr>
        <tr>
            <td align="center" style="font-size: larger; font-weight: bold">
                CORPORATE EVENTS<br />
                <asp:Image ID="Image11" runat="server" Height="150px" 
                    ImageUrl="~/images/c1.jpg" Width="200px" />
                <br />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                INAGURATION<br />
                <asp:Image ID="Image12" runat="server" Height="150px" 
                    ImageUrl="~/images/in.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                HALF SAREES<br />
                <asp:Image ID="Image13" runat="server" Height="150px" 
                    ImageUrl="~/images/dec2.jpg" Width="200px" />
            </td>
            <td align="center" style="font-size: larger; font-weight: bold">
                OTHER EVENTS<br />
                <asp:Image ID="Image14" runat="server" Height="150px" 
                    ImageUrl="~/images/dec4.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            <td style="font-weight: bold" align="center">
                Description</td>
            </tr>
        <tr>
            <td align="center">
                fd fdfsdf dsfsd f<br />
                dfjkljdklflkd lfkld<br />
                fjkldf lkdfjdjfklj<br />
                <br />
                <asp:HyperLink ID="HyperLink9" runat="server">viewmore</asp:HyperLink>
                <br />
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink10" runat="server">viewmore</asp:HyperLink>
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink11" runat="server">viewmore</asp:HyperLink>
            </td>
            <td align="center">
                djfkld jfjkldfkld<br />
                fkldkf jkldjklf<br />
                klfjdkljf kld<br />
                <br />
                <asp:HyperLink ID="HyperLink12" runat="server">viewmore</asp:HyperLink>
            </td>
            </tr>
    </table>
</asp:Content>