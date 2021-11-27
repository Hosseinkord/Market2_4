<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="Market2.Basket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Header -->
        <header id="header" class="alt">
            <span class="logo">
                <img src="images/logo.svg" alt="" /></span>
            <h1>Basket</h1>
            <p>
                Your Baskets
            </p>
        </header>

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
                            <h2>Yours Basket</h2>
                        </header>
                        <table id="Basket" style="width: 100%">
                            <tr>
                                <th>Name Of Product
                                </th>
                                <th>Price
                                </th>
                                <th style="padding: 0px"></th>
                            </tr>

                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LblName" runat="server" Text='<%# Eval("Title") %>'></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="LblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="BtnDelete" runat="server" Text="Delete"  CommandArgument='<%# Eval("Id") %>'/>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>



                    </div>
                </div>
            </section>
        </div>
    </div>

</asp:Content>
