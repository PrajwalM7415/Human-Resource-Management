<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="HRM.LOGIN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Login.css">
</head>
<body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>HR-LOGIN</h3>
            <p>Please enter your credentials to login.</p>
          </div>
        </div>
        <form class="login-form" id="form1" runat="server">
            <asp:TextBox ID="TextBox3" runat="server" placeholder="HR ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="HR ID is Mandatory" ForeColor="Red" 
                Height="16px" SetFocusOnError="True" Width="250px"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="PASSWORD" type="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Password is Mandatory" 
                ForeColor="Red" Height="25px" SetFocusOnError="True" Width="250px"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="Button3" runat="server" Text="LOGIN" onclick="Button1_Click" class="but"/>&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="CANCEL" class="but"/><br /><br />
        </form>
      </div>
    </div>
</body>

</html>


