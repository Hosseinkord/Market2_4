<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Pays.aspx.cs" Inherits="Market2.Pays" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Wrapper -->
    <div id="wrapper">


        <nav id="nav">
            <ul>
                <li><a class="active">Counter</a></li>
                <li><a href="Posts.aspx">Posts</a></li>
                <li><a href="Look-outs.aspx">Look-outs</a></li>
                <li><a href="Users.aspx">Users</a></li>
                <li><a href="Settings.aspx">Settings</a></li>
                <li><a href="Pays.aspx">Pays</a></li>
                <li><a href="Default.aspx">Exit</a></li>
            </ul>
        </nav>



        <!-- Header -->
        <header id="header">
            <h1>Admin Panel</h1>
            <p>Pays</p>
        </header>

        <!-- Main -->
        <div id="main">

            <!-- Content -->
            <section id="content" class="main">
                <h4 style="text-align: center">All Pays</h4>

                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <span>
                            <p style="text-align: left">
                                NameAndFamily:
                    <%# Eval("NameAndFamily") %>
                                <br />
                                <br />
                                Email:
                    <%# Eval("Email") %>
                                <br />
                                <br />

                                Tel:
                    <%# Eval("Tel") %>
                                <br />
                                <br />

                                PostCode:
                    <%# Eval("PostCode") %>
                                <br />
                                <br />

                                Address:
                    <%# Eval("Address") %>
                                <br />
                                <br />

                                TransactionId:
                    <%# Eval("TransactionId") %>
                                <br />
                                <br />

                                Ip:
                    <%# Eval("Ip") %>
                                <br />
                                <br />

                                <a href='<%# "showproduct.aspx?id=" + Eval("id") %>' onclick="window.open(this.href, 'mywin',
'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;">خرید ها</a>
                        </span>
                    </ItemTemplate>
                </asp:ListView>
            </section>

        </div>
    </div>
</asp:Content>
