<%@ Page Title="" Language="C#" MasterPageFile="~/Live_Chat_Master.master" AutoEventWireup="true" CodeFile="Live_Chat_Design.aspx.cs" Inherits="Live_Chat_Design" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div_Longin">
        <input id="email" type="text" placeholder="Your email address"  />
        <br />
         <input id="password" type="text" placeholder="Your password" /><br />
        <input type="button" id="login" value="Login" onclick="LiveChat()" />
        
        <br />
        <a href="Live_chat_Registration.aspx" onclick="for_got_Psw()" id="for_got_p"> I for got password</a>
        <label>Stay login</label>
</div>
<script type="text/javascript">
    function LiveChat() {
        location.href = 'email_php.php';
    }
    function for_got_Psw()

    {
        var emails = $('#email').val();
        var json = { 'sendmail': emails };
        console.log(json.sendmail);
        $.ajax({
            type: 'post',
            url: 'email_php.php',
            data:json.sendmail,
            success: function () { alert("success");}


        });
      
    }
</script>
    <footer class="div_login_ftr">wipro</footer>
</asp:Content>

