<%@ Page Title="" Language="C#" MasterPageFile="~/Live_Chat_Master.master" AutoEventWireup="true" CodeFile="Live_chat_Registration.aspx.cs" Inherits="Live_chat_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="slreg">

       <div class="reg_form">
           <div class="div_name">
            <label id="lbl_name">Name</label>
            <input type="text" id="txt_name" /></div>
           <div class="div_city">
            <label id="lbl_city">City</label>
            <input type="text" id="txt_city" /></div>
               <div class="div_email">
            <label id="lbl_email">Email</label>
            <input type="text" id="txt_email" /></div>
                   <div class="div_pass">
            <label id="lbl_pass">Password</label>
            <input type="text" id="txt_pass" /></div>
                       <div class="div_conf">
            <label id="lbl_conform">Conform</label>
            <input type="text" id="txt_conform" /></div>
           <div class="div_submit">
            <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="Submit" />
         </div>
        </div>

    </div>
</asp:Content>

