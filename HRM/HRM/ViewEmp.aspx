<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmp.aspx.cs" Inherits="HRM.ViewEmp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #e8dddc;
        }
        .but
        {
            font-size:20px;
            background-color:black;
            color:White;
            padding:12.5px;
            margin-left:1400px;
            position:absolute;
            
            }
        .div
        {
            background-color:Black;
            color:White;
            display:flex;
            width:100%;
            margin-bottom:10px;
            justify-content:center;
            
        }
        .h1
        {
            font-size:20px;
            }
         .but:hover
         {
             cursor:pointer;
             }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div">
    <h1 class="h1">EMPLOYEES TABLE</h1>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Cancel" class="but"/>
    </div>
    <asp:GridView ID="GridView1" runat="server" ></asp:GridView>
    </form>
</body>
</html>
