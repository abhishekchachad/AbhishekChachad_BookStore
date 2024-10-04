<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AbhishekChachad_BookStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Welcome to Abhishek's BookStore</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="BootStrap/jquery-1.9.1.min.js"></script>
    <script src="BootStrap/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="Images/Logo.png" width="90" />
                </a>
            </div>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="jumbotron text-center">
            <h1 runat="server" ID="lblWelcome"></h1>
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
    <footer class="footer-custom mt-5">
        <p>&copy; 2024 Copyrights reserved by Abhishek Chachad</p>
        <p><a href="#">Terms of Service</a> | <a href="#">Privacy Policy</a></p>
    </footer>
</body>
</html>
