<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrontPage.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="FrontPage" %>

<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
    <title>Medicare - One stop for all your medicines. </title>
</asp:Content>

<asp:Content ID="data" ContentPlaceHolderID="main" runat="server">
    <asp:Button ID="odlist" runat="server" Text="Order List" />
    <asp:Button ID="Sales" runat="server" Text="Sales List" />
</asp:Content>