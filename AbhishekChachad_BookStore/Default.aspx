<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AbhishekChachad_BookStore.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title>Welcome to Abhishek's BookStore</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="jumbotron text-center">
            <h3 runat="server" id="lblWelcome"></h3>
        </div>
        <div class="jumbotron text-center">
            <h1>Welcome to Abhishek's BookStore!</h1>
            <p>Discover a wide collection of books, from bestsellers to classics, and everything in between.</p>
            <asp:Button ID="btnBrowseBooks" PostBackUrl="~/Products.aspx" runat="server" Text="View All Books" CssClass="btn btn-success btn-lg" />
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/BestSellers.jpg" alt="Books" class="img-responsive" />
                        <div class="caption">
                            <h3>Bestsellers</h3>
                            <p>Explore the most popular books that everyone is talking about.</p>
                            <p><a href="Products.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/NewArrivals.jpg" alt="New Arrivals" class="img-responsive" />
                        <div class="caption">
                            <h3>New Arrivals</h3>
                            <p>Check out the latest and greatest books just added to our collection.</p>
                            <p><a href="Products.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/Discounts.jpg" alt="Discounts" class="img-responsive" />
                        <div class="caption">
                            <h3>Special Discounts</h3>
                            <p>Don't miss out on our exclusive deals and offers on selected books.</p>
                            <p><a href="Products.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
