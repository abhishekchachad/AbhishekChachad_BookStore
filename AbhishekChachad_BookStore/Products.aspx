<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AbhishekChachad_BookStore.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title>Products Page</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <header class="jumbotron">
            <h1>Products</h1>
        </header>
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
                                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnCart" runat="server" Text="Go to Cart"
                                    PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn btn-warning" />
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </div>
</asp:Content>
