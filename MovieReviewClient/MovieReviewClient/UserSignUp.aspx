<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="MovieReviewClient.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id ="form1" runat="server">
        <div class="UserSignUp form-horizontal">
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="l1" runat="server" Text="Email" />
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="Textbox1" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="p_label" runat="server" Text="Password" />
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="Textbox2" TextMode="Password" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="control-label col-sm-3">
                            <asp:Label ID="Label1" runat="server" Text="Re-enter Password" />
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="Textbox3" TextMode="Password" ForeColor="Black" class="form-control" runat="server" />
                        </div>
                    </div><asp:CompareValidator ID="cmp1" runat="server" ControlToValidate="TextBox3" ControlToCompare="TextBox2" ErrorMessage="password doesn't match" Type="String" Display="Dynamic"></asp:CompareValidator> 
                    <div class="form-group row">
                        <div class="control-label col-sm-5">
                            <asp:Button ID="Button1" CssClass="btn-primary " runat="server" Text="Login" OnClick="Button1_Click"/>
                            <br />
                        </div>
                    </div>
                    <br/>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="login_error" CssClass="alert-info" ForeColor="#ff3300" runat="server" Visible="False"></asp:Label>
                </div>
    </form>
    
</asp:Content>
