<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_registr.aspx.cs" Inherits="prj_tes_p1.User_registr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main_body">

            <div class="header_pnl">
                <p class="text_header"> فرم ثبت نام</p>
            </div>

            <div class="row_pnl">
                <label>شماره تلفن</label>
                <asp:TextBox Class="txt_style" ID="Txt_phone" runat="server"></asp:TextBox>
            </div>

            <div class="row_pnl">
                <label>نام کاربری</label>
                <asp:TextBox Class="txt_style" ID="Txt_username" runat="server"></asp:TextBox>
            </div>

            <div class="row_pnl">
                <label>رمز</label>
                <asp:TextBox Class="txt_style" ID="Txt_password" runat="server"></asp:TextBox>
            </div>

            <div class="row_pnl">
                <label>نام</label>
                <asp:TextBox Class="txt_style" ID="Txt_name" runat="server"></asp:TextBox>
            </div>

            <div class="row_pnl">
                <label>فامیلی</label>
                <asp:TextBox Class="txt_style" ID="Txt_family" runat="server"></asp:TextBox>
            </div>
            <div class="row_pnl">
                <label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_prj_proConnectionString %>" ProviderName="<%$ ConnectionStrings:db_prj_proConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                </label>
                <asp:Button Class="btn_confirm" ID="Btn_confirmregister" runat="server" Text="تایید" OnClick="Button1_Click" />
            </div>

        </div>
    </form>
</body>
</html>
<style>
    body{
        direction:rtl;
    }
       .main_body {
          margin-right: 35%;
          margin-top: 50px;
          width: 400px;
          height: 670px;
          border: 1px solid #8a8694;
          border-radius:35px;
        }
      .header_pnl {
         height: 71px;
         border-bottom: 4px solid #2C2C2C;
         background-color: #2C2C2C;
         color: white;
         margin-top: -25px;
         padding-top: ;
         border-top-right-radius: 35px;
         border-top-left-radius: 35px;
       }
       .row_pnl {
          margin-top: 25px;
          margin-right: 20px;
          display: inline-grid;
          font-size: 16px;
          color:#1E1E1E;
        }
       .txt_style {
         margin-top: 13px;
         width: 350px;
         height: 30px;
         border-radius: 10px;
         border: 0.3px solid #d4d1dc;
            }
     .btn_confirm {
        width: 350px;
        height: 50px;
        border-radius: 10px;
        margin-top: 27px;
        border: 1px solid;
        background-color: #2C2C2C;
        color: white;
        font-size: 17px;
            }
     .text_header{
          text-align: center;
          font-size: 25px;
          padding-top:18px;
        }

</style>
 <script src="Scripts/jquery-3.7.0.js"></script>
<script>    
    $(".btn_confirm").mousemove(function () {
        $(".btn_confirm").css('background', 'rgb(25, 47, 116)')
    })
    $(".btn_confirm").mouseleave(function () {
        $(".btn_confirm").css('background', '#2C2C2C')
    })
  
</script>


