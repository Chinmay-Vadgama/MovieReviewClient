<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MovieReviewClient.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .GridView1{
        align-self:center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
     Welcome <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </form>
</asp:Content>

