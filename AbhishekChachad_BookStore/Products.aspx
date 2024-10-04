<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AbhishekChachad_BookStore.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
                <a class="navbar-brand" href="Default.aspx">
                    <img src="Images/Logo.png" width="90" />
                </a>
            </div>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="active"><a href="#">Products</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    <div class="container">
        <header class="jumbotron"><h1>Products</h1></header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">

                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label class="col-sm-5">Please select a product:</label>
                            <div class="col-sm-6">
                                <asp:DropDownList ID="ddlBooks" DataSourceID="SqlDataSource1" DataTextField="Title" AutoPostBack="True" DataValueField="BookID" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [BookID], [Title], [Author], [PublishedDate], [GenreID], [Price], [BookImage] FROM [Books] ORDER BY [PublishedDate]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <h4>
                                    <asp:Label ID="lblName" runat="server"></asp:Label></h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblShortDescription" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblLongDescription" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblUnitPrice" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <asp:Image ID="imgBook" CssClass="bookImage" runat="server" />
                    </div>
                </div>

                <div class="row">
                    <%-- row 2 --%>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-1">Quantity:</label>
                            <div class="col-sm-3">
                                <asp:TextBox ID="txtQuantity" runat="server"
                                    CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                                    runat="server" ControlToValidate="txtQuantity" Display="Dynamic"
                                    ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger"
                                    ControlToValidate="txtQuantity" Display="Dynamic"
                                    ErrorMessage="Quantity must range from 1 to 500."
                                    MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CssClass="btn" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnCart" runat="server" Text="Go to Cart"
                                    PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn" />
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </div>
    <footer class="footer-custom mt-5">
        <p>&copy; 2024 Copyrights reserved by Abhishek Chachad</p>
        <p><a href="#">Terms of Service</a> | <a href="#">Privacy Policy</a></p>
    </footer>
</body>
</html>
