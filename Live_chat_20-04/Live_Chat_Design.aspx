<%@ Page Title="" Language="C#" MasterPageFile="~/Live_Chat_Master.master" AutoEventWireup="true" CodeFile="Live_Chat_Design.aspx.cs" Inherits="Live_Chat_Design" %>

<script runat="server">

  
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sides">
      <div class="image1">

      </div>
      <div class="image2">

      </div>
      <div class="image3">



      </div>

  </div>  <div class=""><div class="slide">
      </div>
        <div class="login_mail"><div class="log_email">
        <input id="email" type="text" placeholder="Your email address" runat="server"  /></div>
        <br /><div class="log_pass">
                <asp:TextBox ID="passwords" runat="server" TextMode="Password"></asp:TextBox>
         <input id="password1" runat="server" type="hidden" placeholder="Your password" /></div><br />
             <div class="login_Reg">
        <input type="button" id="Registar" value="Login" onclick="LiveChat()" />
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Set account" />
                
                 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                
        <br /><div class="for_got_pss"><label></label>
        <a href="Live_chat_Registration.aspx" onclick="for_got_Psw()" id="for_got_p"> </a>
     </div>
</div></div></div>
<script type="text/javascript">
    function LiveChat() {
        location.href = 'Live_Chat.aspx';
    }
    function LiveRegistar() {
        location.href = 'Live_chat_Registration.aspx';
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
    
</asp:Content>

