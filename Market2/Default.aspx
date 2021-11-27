<%@ Page Title="Default" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Market2.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Header -->
        <header id="header" class="alt">
            <span class="logo">
                <img src="images/logo.svg" alt="" /></span>
            <h1>Shop</h1>
            <p>
                The Best Shop For You
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
                            <h2>Product</h2>
                        </header>
                        <p></p>
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <div class="porto">
                                    <h5>
                                        <%# Eval("Title") %>
                                    </h5>
                                    <div style="text-align: center">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImage") %>' Height="200px" Width="400px" />
                                    </div>
                                    <p>
                                        <%# Eval("Description") %>
                                    </p>
                                    Date Of Release:
         <span><%# Eval("Date") %></span>
                                    <span style="padding-left: 25px">Price:</span>
                                    <span><%# Eval("Price") %></span>
                                    <span style="padding-right: 130px">
                                        <a href='<%# "DetailsProducts.aspx?Id=" + Eval("ID") %>' target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="\images\Pay.png" Height="25px" Width="150px" /></span>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <div style="padding-left: 500px">
                            <asp:DataPager ID="DataPager1" PageSize="5" PagedControlID="ListView1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ShowNextPageButton="false" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" />
                                </Fields>
                            </asp:DataPager>
                        </div>

                    </div>
                    <%--                  <span class="image">
                        <img src="images/pic01.jpg" alt="" /></span>--%>
                </div>
            </section>
        </div>
    </div>

    <!-- First Section -->
    <%--            <section id="first" class="main special">
                <header class="major">
                    <h2></h2>
                </header>
                <ul class="features">
                    <li>
                        <span class="icon major style1 fa-code"></span>
                        <h3></h3>
                        <p></p>
                    </li>
                    <li>
                        <span class="icon major style3 fa-copy"></span>
                        <h3></h3>
                        <p></p>
                    </li>
                    <li>
                        <span class="icon major style5 fa-diamond"></span>
                        <h3></h3>
                        <p>.</p>
                    </li>
                </ul>
                <footer class="major">
                    <ul class="actions">
                        <li><a href=# class="button"></a></li>
                    </ul>
                </footer>
            </section>--%>

    <!-- Second Section -->
    <%--            <section id="second" class="main special">
                <header class="major">
                    <h2></h2>
                    <p>
                        <br />
                    </p>
                </header>
                <ul class="statistics">
                    <li class="style1">
                        <span class="icon fa-code-fork"></span>
                        <strong></strong>
                    </li>
                    <li class="style2">
                        <span class="icon fa-folder-open-o"></span>
                        <strong></strong>
                    </li>
                    <li class="style3">
                        <span class="icon fa-signal"></span>
                        <strong></strong>
                    </li>
                    <li class="style4">
                        <span class="icon fa-laptop"></span>
                        <strong></strong> 
                    </li>
                    <li class="style5">
                        <span class="icon fa-diamond"></span>
                        <strong></strong>
                    </li>
                </ul>
                <p class="content"></p>
                <footer class="major">
                    <ul class="actions">
                        <li><a href=# class="button"></a></li>
                    </ul>
                </footer>
            </section>--%>

    <!-- Get Started -->
    <%--            <section id="cta" class="main special">
                <header class="major">
                    <h2></h2>
                    <p>
                    </p>
                </header>
                <footer class="major">
                    <ul class="actions">
                        <li><a href=# class="button special"></a></li>
                        <li><a href=# class="button"></a></li>
                    </ul>
                </footer>
            </section>
            <a style="visibility: hidden;" href="https://mrcode.ir" target="_blank">آموزش طراحی سایت</a>
        </div>--%>

    <!-- Footer -->
    <%--  <footer id="footer">
            <section>
                <h2></h2>
                <p></p>
                <ul class="actions">
                    <li><a href="generic.html" class="button"></a></li>
                </ul>
            </section>
            <section>
                <h2></h2>
                <dl class="alt">
                    <dt></dt>
                    <dd></dd>
                    <dt></dt>
                    <dd></dd>
                    <dt></dt>
                    <dd><a href="#"></a></dd>
                </dl>
                <ul class="icons">
                    <li><a href="#" class="icon fa-twitter alt"><span class="label">Twitter</span></a></li>
                    <li><a href="#" class="icon fa-facebook alt"><span class="label">Facebook</span></a></li>
                    <li><a href="#" class="icon fa-instagram alt"><span class="label">Instagram</span></a></li>
                    <li><a href="#" class="icon fa-github alt"><span class="label">GitHub</span></a></li>
                    <li><a href="#" class="icon fa-dribbble alt"><span class="label">Dribbble</span></a></li>
                </ul>
            </section>
            <p class="copyright">&copy; <a href="#" target="_blank">MrCode.ir</a>.</p>
        </footer>
    </div>--%>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="assets/js/main.js"></script>
</asp:Content>
