<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="DisplayMovies.aspx.cs" Inherits="MovieReviewClient.DisplayMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <asp:Label ID="Label1" runat="server" Text="Search Movie:"/><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       
    </div>
</asp:Content>
