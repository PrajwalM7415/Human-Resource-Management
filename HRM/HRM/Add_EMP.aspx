<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_EMP.aspx.cs" Inherits="HRM.Add_EMP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Add2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <div class="card_title">
                    <h1>ADD EMPLOYEE</h1>
                    
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                        ControlToValidate="TextBox6" ErrorMessage="* incorrect email" ForeColor="Red"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;
                <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
                        ControlToValidate="TextBox9" ErrorMessage="* invalid Phno"  
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator> 

                    <div class="form">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Employee Name" type="Text"></asp:TextBox> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Employee Id" type="Text"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Department" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Designation"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="PhNo" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Email"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />GENDER :<asp:RadioButton ID="RadioButton1" runat="server" Text="MALE" GroupName="Gender"/>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="FEMALE" 
                        GroupName="Gender"/> <br />  
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Date Of Join" type="date"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Availed Leaves" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox11" runat="server" placeholder="Total Leaves" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox12" runat="server" placeholder="Salary" type="number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" class="button"/>  
                    <asp:Button ID="Button2" runat="server" Text="CANCEL" onclick="Button2_Click" 
                        class="a" CausesValidation="False"/><br />
                    <br />
                </div>
            </div>
      </div>
    </form>
</body>
</html>






