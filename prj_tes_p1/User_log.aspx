<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_log.aspx.cs" Inherits="prj_tes_p1.User_log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div class="main_body">

      <div class="header_pnl">
          <p class="text_header"> فرم ورود </p>
      </div>

      <div class="row_pnl">
          <label>شماره تلفن</label>
          <asp:TextBox Class="txt_style" ID="Txt_username" runat="server"></asp:TextBox>
      </div>

      <div class="row_pnl">
          <label>رمز</label>
          <asp:TextBox Class="txt_style" ID="Txt_password" runat="server"></asp:TextBox>
      </div>
      <div class="row_pnl">
          <asp:Button ID="Btn_login"  Class="btn_confirm" runat="server" Text="ورود" OnClick="Button1_Click" />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_prj_proConnectionString2 %>" ProviderName="<%$ ConnectionStrings:db_prj_proConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
          <asp:Button ID="Btn_register" class="btn_register" runat="server" Text="ثبت نام" PostBackUrl="~/User_registr.aspx" />
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div>


                   
                  </div>
        </div>
        <p>
            &nbsp;</p>
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
 .btn_register{
         width: 350px;
    height: 50px;
    border-radius: 10px;
    margin-top: 13px;
    border: 1px solid;
    background-color: #2C2C2C;
    color: white;
    font-size: 17px;
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
    $(".btn_register").mousemove(function () {
        $(".btn_register").css('background', 'rgb(25, 47, 116)')
    })
    $(".btn_register").mouseleave(function () {
        $(".btn_register").css('background', '#2C2C2C')
    })
  
</script>