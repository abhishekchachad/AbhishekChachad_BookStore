<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AbhishekChachad_BookStore.Cart" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>My Cart Page</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
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
                <a class="navbar-brand" href="Default_277.aspx">
                    <img src="Images/Logo.png" width="90" />
                </a>
            </div>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li class="active"><a href="#">Cart</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    
    <div class="container">
    <form id="form1" runat="server">
        <header class="jumbotron">
            <h1>My Cart</h1>            
        </header>
            <div class="row">
                <div class="col-md-8">
                    <asp:ListBox ID="lstCart" runat="server" CssClass="form-control" Height="150px"></asp:ListBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="RemoveItemButton" OnClick="btnRemove_Click" runat="server" Text="Remove Item" CssClass="btn btn-danger mb-2 btn-block" />
                    <asp:Button ID="EmptyCartButton" OnClick="btnEmpty_Click" runat="server" Text="Empty Cart" CssClass="btn btn-warning mb-2 btn-block" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" PostBackUrl="~/Products.aspx" runat="server" Text="Continue Shopping" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCheckOut" PostBackUrl="~/Checkout.aspx" runat="server" Text="Check Out" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>
            </div>
    </form>
            </div>
    <footer class="footer-custom mt-5">
        <p>&copy; 2024 Copyrights reserved by Abhishek Chachad</p>
        <p><a href="#">Terms of Service</a> | <a href="#">Privacy Policy</a></p>
    </footer>
</body>
</html>
