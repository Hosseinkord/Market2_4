<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DetailsProducts.aspx.cs" Inherits="Market2.DetailsProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="DetailProducts" runat="server">


            <!-- Wrapper -->
            <div id="wrapper">

                <!-- Header -->
                <header id="header" class="alt">
                    <span class="logo">
                        <img src="images/logo.svg" alt="" /></span>
                    <h1>DetailsProducts</h1>
                    <p>
                        Chossen Product
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

                                <div class="porto">
                                    <h5>
                                        <asp:Label ID="LblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>>    
                                    </h5>
                                    <asp:ListView ID="ListView1" runat="server">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImage") %>' Height="200px" Width="400px" />
                                            </div>
                                            <p>
                                                <%# Eval("Description") %>
                                            </p>
                                            Date Of Release:
         <span><%# Eval("Date") %></span>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <span>
                                        <asp:Label ID="LblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    </span>
                                </div>
                                <br />
                                <asp:Button ID="BtnAddBasket" runat="server" Text="Add To Basket" OnClick="BtnAddBasket_Click" />
                                <asp:Button ID="BtnBasket" runat="server" Text="See The BAsket" OnClick="BtnBasket_Click1" />

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </asp:View>

        <asp:View ID="VBasket" runat="server">


            <!-- Wrapper -->
            <div id="wrapper">

                <!-- Header -->
                <header id="header" class="alt">
                    <span class="logo">
                        <img src="images/logo.svg" alt="" /></span>
                    <h1>Yours Basket</h1>
                    <p>
                        Basket
                    </p>
                </header>


                <!-- Main -->
                <div id="main">

                    <!-- Introduction -->
                    <section id="intro" class="main">
                        <div class="spotlight">
                            <div class="content">
                                <header class="major">
                                    <h2>Basket</h2>
                                </header>
                                <p></p>

                                <div class="porto">

                                    <table id="Basket" style="width: 100%">

                                        <tr>
                                            <th>Name Of Product
                                            </th>
                                            <th>Price
                                            </th>
                                            <th style="text-align: center">Delete
                                            </th>
                                        </tr>

                                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="LblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>

                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                    </td>
                                                    <td style="text-align: center">
                                                        <asp:Button ID="BtnDelete" runat="server" Text="Delete" CommandArgument='<%# Eval("Id") %>' />
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                    <br />
                                    <br />
                                    <asp:Label ID="LblPriceFinally" runat="server" Text="PriceFinally"></asp:Label>
                                    <table style="width: 100%; text-align: center">
                                        <tr>
                                            <td>Name And Family :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtNameAndFamily" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TxtNameAndFamily" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Email :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Tel :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtTel" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtTel" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>PostCode :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtPostCode" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtPostCode" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Address :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtAddress" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Button ID="BtnPayment" runat="server" Text="Payment" OnClick="BtnPayment_Click" />
                                            </td>

                                        </tr>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>
