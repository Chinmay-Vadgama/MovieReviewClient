<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MovieReviewClient.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .form 
        {
            text-align:center;
           
            width: 75%;
            font-size: 30px;
            color: white;
            padding-bottom:150px;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
       <div class="form" >
           <br />
           Select the Type:<asp:DropDownList ID="LoginType" runat="server" Width="361px" ForeColor="Black" class="form-control">
                        <asp:ListItem Text="User"></asp:ListItem>
                        <asp:ListItem Text="Admin"></asp:ListItem>
                        
                    </asp:DropDownList>
           <br />
           <div class="User_login form-horizontal">
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="l1" runat="server" Text="Email" />
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="TextBox1" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="p_label" runat="server" Text="Password" />
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="TextBox2" TextMode="Password" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-5">
                            <asp:Button ID="Button1" CssClass="btn-primary " runat="server" Text="Login" OnClick="Button1_Click"/>
                        </div>
                    </div>
                    <br/>
                    <asp:Label ID="login_error" CssClass="alert-info" ForeColor="#ff3300" runat="server" Visible="False"></asp:Label>
                </div>
            </div>
        </br>
  
           <br />
           <asp:Label ID="Label1" runat="server" ></asp:Label>
           <asp:Label ID="Label2" runat="server" ></asp:Label>
    
        </form>
   
</asp:Content>
