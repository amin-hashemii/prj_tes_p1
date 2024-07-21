<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_products.aspx.cs" Inherits="prj_tes_p1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <div class="d_search">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <asp:Image ID="Image1" runat="server" ImageUrl="" />
                </div>
                
            </header>

        </div>
    </form>
</body>
</html>

<style>
    body{
        direction:rtl;
    }
    header{
        height:60px;
        border-bottom:1px solid black;
    }
</style>
