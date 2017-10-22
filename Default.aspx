<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>

<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
    <title>Medicare - Order Items. </title>
</asp:Content>

<asp:Content ID="data" ContentPlaceHolderID="main" runat="server">
    <asp:GridView ID="gv" runat="server"></asp:GridView>
    <asp:Label ID="debug" runat="server"></asp:Label>
</asp:Content>