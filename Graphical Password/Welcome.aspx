<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
     <link href="Styles/menu.css" rel="stylesheet" type="text/css" />
   
    <style type="text/css">
        .auto-style1 {
            height: 90px;
        }
        .auto-style2 {
            height: 124px;
            width: 1321px;
        }
        .auto-style3 {
            height: 47px;
        
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
            height: 38px;
        }
        </style>
   
</head>    
<body style=" margin-top:20px;background-color:white;">
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
    <form id="form1" runat="server">
 <ul id="menu" class="auto-style3">
     
      <li><a href="home1.aspx">Bookmyevent</a></li>
      <li class="auto-style4"><a href="addwebsite.aspx">Addawebsite</a></li>
     
</ul>
    
    
    </form>
    </div>
    </body>
</html>