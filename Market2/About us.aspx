<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="About us.aspx.cs" Inherits="Market2.About_us" %>

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
                <h3>About Us</h3>
                <p>
                    <asp:Label ID="LblAboutUs" runat="server" Text="AboutUs"></asp:Label>
                </p>
            </section>
        </div>
    </div>
</asp:Content>
