<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AbhishekChachad_BookStore.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title>My Cart Page</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
