<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MovieReviewClient.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome" style="text-align:center">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
     <div class="Movies">    
                    <h2>
              <br/> <br/> <br/>
                <a href="#" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;"   >Explore the Tours!</a><br/><br/><br/>
                <p class="label-info">
                    Find The Movie of your choice and review it!!!

                </p>
            </h2>
        
    </div>
     <div class="Games">    
                    <h2>
              <br/> <br/> <br/>
                <a href="#" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;"   >Explore the Tours!</a><br/><br/><br/>
                <p class="label-info">
                    Explore the Best Games of your genre.

                </p>
            </h2>
        
    </div>
</asp:Content>
