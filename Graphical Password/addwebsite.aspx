<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addwebsite.aspx.cs" Inherits="addwebsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            height: 124px;
            width: 1321px;
        }
        .auto-style1 {
            height: 90px;
        }
        
#menu {
    zoom:1;
}
#menu {
    width: 1300px;
    margin: 60px auto;
    border: 1px solid #222;
    background-color: #111;
    background-image: linear-gradient(black,red);
    border-radius: 10px;
    box-shadow: 0 1px 1px #777;
}
#menu, #menu ul {
    margin: 0;
    padding: 0;
    list-style: none;
}
#menu li {
    float: left;
    border-right: 1px solid #222;
    box-shadow: 1px 0 0 #444;
    position: relative;
    top: 0px;
    left: 0px;
    height: 47px;
}

#menu a {
    float: left;
    padding: 12px 30px;
    color: white;
    text-transform: uppercase;
    font: bold 12px Arial, Helvetica;
    text-decoration: none;
    text-shadow: 0 1px 0 #000;
    height: 15px;
    width: 100px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
<table bgcolor="white" class="auto-style2">
<tr>
<td class="style3"><h1>
    <asp:Image ID="Image1" runat="server" Height="79px" 
        ImageUrl="~/images/graphic.jpg" Width="108px" />
    </h1></td>
<td class="style1"><h1 class="auto-style1">&nbsp;<asp:Image ID="Image2" runat="server" 
        Height="91px" ImageUrl="~/images/titleimage1.png" Width="606px" />
    </h1>
    <td class="style3">&nbsp;</td></tr>
</table>
<div id="ai" >
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Blue"  Text="ADD A WEBSITE URL"></asp:Label>
        &nbsp;</p>
    </div>
        <asp:TextBox ID="TextBox1" runat="server" Height="108px" OnTextChanged="TextBox1_TextChanged" Width="584px"></asp:TextBox>
        
        
        <asp:RegularExpressionValidator 
EnableClientScript="false" 
ID="validatorUrl" 
runat="server"
ValidationExpression="(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"
ControlToValidate="TextBox1" 
SetFocusOnError="true" 
ErrorMessage="* Url not valid!" />


        <br/><br/>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>
</body>
</html>
