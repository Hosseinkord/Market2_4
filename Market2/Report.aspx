<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Market2.Report" %>
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
                <h3>Report</h3>
                <p>
                    <asp:Label ID="LblShopper" runat="server" Text="Shopper"></asp:Label>
                    <asp:TextBox ID="TxtShopper" runat="server"></asp:TextBox></p>
                <asp:Button ID="BtnShow" runat="server" Text="Show" OnClick="BtnShow_Click" /></section>
        </div>
    </div>


</asp:Content>
