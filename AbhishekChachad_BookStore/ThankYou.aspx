<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AbhishekChachad_BookStore.ThankYou" %>



<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title>Thank You Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container text-center">
            <header class="jumbotron text-center">
                <h1>Thank You for Shopping</h1>
            </header>
            <asp:LinkButton runat="server" PostBackUrl="~/Default.aspx">Go to Home page</asp:LinkButton>
        </div>
    </form>
</asp:Content>
