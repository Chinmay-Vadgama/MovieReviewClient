<%@ Page Title="" Async="true" EnableSessionState="True" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MovieReviewClient.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .GridView1{
        align-self:center;
    }
 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="movies carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="Images/halo5.jpg" />
    </div>

    <div class="item">
        <img src="Images/bs.jpg" />
    </div>

    <div class="item">
        <img src="Images/battlefield1.jpg" />
    </div>
      <img src="Images/Interstellar.jpg" />
    <div class="item">
     
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
Try it Yourself »

           <div class="Movies">    
                    <h2>
              <br/> <br/> <br/>
                <a href="#" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;"   >Explore the Tours!</a><br/><br/><br/>
                <p class="label-info">
                    Find the Information of the PC game of your Choice and review the same.</br>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                </p>
            </h2>
        
    </div>

    </form>
</asp:Content>

