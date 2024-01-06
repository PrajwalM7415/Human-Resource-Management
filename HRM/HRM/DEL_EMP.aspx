<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEL_EMP.aspx.cs" Inherits="HRM.DEL_EMP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="delete.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="div">
            <h1 class="h1">DELETE EMPLOYEE DETAILS</h1> 
            <h3 class="h3">EMPLOYEE NAME :</h3><asp:TextBox ID="TextBox1" runat="server" class="text"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            <h3 class="h3">EMPLOYEE ID :</h3><asp:TextBox ID="TextBox2" runat="server" class="text"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="DELETE" class="but" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" class="but" 
                Text="CANCEL" CausesValidation="False" />
        </div>
    </form>
</body>
</html>
