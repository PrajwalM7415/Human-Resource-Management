<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="HRM.UpdateEmployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="Update1.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
            <div class="card">
                <div class="card_title">
                    <h1>UPDATE EMPLOYEE</h1>
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                        ControlToValidate="TextBox6" ErrorMessage="* incorrect email" ForeColor="Red"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;
                <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
                        ControlToValidate="TextBox9" ErrorMessage="* invalid Phno"  
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator> 
                <div class="form">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Employee Id" type="Text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button3" runat="server" Text="Find" onclick="Button3_Click" 
                        class="find" CausesValidation="False"/>  
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Employee Name" type="Text"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Department" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Designation"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="PhNo" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Email"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Availed Leaves" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox11" runat="server" placeholder="Total Leaves" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox12" runat="server" placeholder="Salary" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" Text="UPDATE" onclick="Button1_Click1" class="button" />
                    <asp:Button ID="Button2" runat="server" Text="CANCEL" onclick="Button2_Click"  
                        class="a" CausesValidation="False"/>
                  </div>
                </div>
            </div>
    </form>
</body>
</html>
