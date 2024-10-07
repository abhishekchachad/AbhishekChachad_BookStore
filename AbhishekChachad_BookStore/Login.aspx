<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AbhishekChachad_BookStore.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title>Login Page</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container mt-4" style="height: 72vh">
            <h2>Login</h2>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" placeholder="Enter First Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" placeholder="Enter Last Name"></asp:TextBox>
            </div>
            <div class="text-center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary mx-2" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary mx-2" OnClick="btnCancel_Click" />
            </div>
        </div>
    </form>
</asp:Content>
