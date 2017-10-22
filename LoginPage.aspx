<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="LoginPage" %>

<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
    <title>Medicare - Login Page.</title>
</asp:Content>

<asp:Content ID="login_form" runat="server" ContentPlaceHolderID="main">
    <div class="row">
        <div class="col-12 text-center">
            Username: <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_username" ControlToValidate="Username" runat="server" ErrorMessage="Username field empty."></asp:RequiredFieldValidator>
            <br />

            Password: <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Username" runat="server" ErrorMessage="Username field empty."></asp:RequiredFieldValidator>
            <br />
        </div>
        <div class="col-12 text-center">
            <asp:Button ID="btn" runat="server" Text="Login" OnClick="btn_Click"/>            
        </div>
    </div>

</asp:Content>