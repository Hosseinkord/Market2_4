<%@ Page Title="Login" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Market2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Wrapper -->
    <div id="wrapper">


        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a href="Home.aspx" class="active">Home</a></li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Products.aspx">Products</a></li>
                <li><a href="About us.aspx">About us</a></li>
                <li><a href="Contact us.aspx">Contact us</a></li>
            </ul>
        </nav>

        <!-- Main -->
        <div id="main">

            <!-- Introduction -->
            <section id="intro" class="main">
                <div class="spotlight">
                    <div class="content">
                        <header class="major">
                            <h2>Login</h2>
                        </header>
                        <asp:Label ID="LblUserName" runat="server" Text="UserName">
                            <asp:TextBox ID="TxtUserName" runat="server">

                            </asp:TextBox></asp:Label>

                        <asp:Label ID="LblPassword" runat="server" Text="Password">
                            <asp:TextBox ID="TxtPassword" runat="server">

                            </asp:TextBox></asp:Label>
                        <br /><br />
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                    </div>
                    </div>
            </section>

        </div>

    </div>
</asp:Content>
