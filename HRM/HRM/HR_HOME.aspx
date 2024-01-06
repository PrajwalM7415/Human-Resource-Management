<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_HOME.aspx.cs" Inherits="HRM.HR_HOME" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="Home1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="topnav">
          <a class="active" href="#home">Home</a>
          <asp:Button ID="Button5" runat="server" Text="Logout" CssClass="button" onclick="Button5_Click" />
        </div>
        <div class="div1">

            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add Employee" class="BUT1"/>&nbsp;&nbsp;<br /><br />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update Employee" class="BUT1" /><br /><br />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Remove Employee" class="BUT1"/>
            <asp:Button ID="Button1" runat="server"  Text="View Employee" class="BUT1" 
                onclick="Button1_Click"/>

        </div>
    </form>
</body>
</html>
