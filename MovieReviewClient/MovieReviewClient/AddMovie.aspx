<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="MovieReviewClient.AddMovie1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            .page-header {
                text-align:center;

            }
            .form-horizontal {
                font-size: 30px;
                text-align:center;
            }
            .row .form-horizontal {
                border-right: 1px double;
            }          
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header" >
        <h1>Add New Movie</h1>    
    </div>
    <div class="row">
    <div class="form-horizontal col-md-7">      
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="l1" runat="server" text="Name of Movie" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="movie" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="Label4" runat="server" text="Category" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="category" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="Label1" runat="server" text="Director" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="director" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="Label2" runat="server" text="Actors" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="actors" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="Label3" runat="server" text="Rating" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="rating" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:label id="Label5" runat="server" text="Year" />
            </div>
            <div class="col-sm-6">
                <asp:dropdownlist id="year" runat="server"></asp:dropdownlist>
                
            </div>    
        </div>
            
        
        
        
       
        <div class="form-group">           
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="AddMovie" runat="server" Text="Register" ForeColor="Black" OnClick="Register_Click" /></div>
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset"  ForeColor="Black"/></div>
        </div>
    </div>
    <div class="col-md-5">   
        <p style="text-align:center; font-size:30px"; > Image for Movie</p>
        <asp:FileUpload ID="FileUpload1" runat="server"/>
         
    </div> 
        </div>
</asp:Content>
