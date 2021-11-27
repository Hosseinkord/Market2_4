<%@ Page Title="Look Outs" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Look-outs.aspx.cs" Inherits="Market2.Look_outs" %>

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
            <p>Look-Outs</p>
        </header>

        <!-- Main -->
        <div id="main">

            <!-- Content -->
            <section id="content" class="main">
                                    <h4 style="text-align: center">All Commands</h4>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title" />
                        <asp:BoundField DataField="Message" HeaderText="Message" ReadOnly="True" SortExpression="Message" />
                        <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                        <asp:ButtonField CommandName="cmd_del" HeaderText="Delete" Text="Delete" />
                    </Columns>
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Market2.DataClasses1DataContext" EntityTypeName="" Select="new (Id, Name, Email, Title, Message, Date)" TableName="tbl_Comments"></asp:LinqDataSource>
<%--                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <span>
                            <p style="text-align: left">
                                Name:
                    <%# Eval("Name") %>
                                <br />
                                <br />
                                Email:
                    <%# Eval("Email") %>
                                <br />
                                <br />

                                Title:
                    <%# Eval("Title") %>
                                <br />
                                <br />

                                Message:
                    <%# Eval("Message") %>
                                <br />
                                <br />

                                Date:
                    <%# Eval("Date") %>
                                <br />
                                <br />
                            </p>
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                        </span>
                    </ItemTemplate>
                </asp:ListView>--%>
            </section>

        </div>

        <!-- Footer -->
        <%--        <footer id="footer">
            <section>
                <h2>درباره استلر</h2>
                <p>این دو کارشناس به دنبال محصولات جدید و کارا بودند و می‌خواستند کالاهای مصرفی کاملاً نوینی روانه بازار کنند. برای این کار تکنولوژی مورد نیازشان را خود ابداع کردند. این ایده بعدها یکی از اصولی بود که آنها و همین طور مدیران سال‌های اخیر سونی، از آن پیروی می‌کردند، شرکتی که همواره خواسته همه ...</p>
                <ul class="actions">
                    <li><a href="generic.html" class="button">کسب اطلاعات بیشتر</a></li>
                </ul>
            </section>
            <section>
                <h2>ارتباط با ما</h2>
                <dl class="alt">
                    <dt>آدرس</dt>
                    <dd>بزرگراه اینترنت، خروجی اینترنت شرق، خیابان پهن باند، کوچه سایت شما، پلاک پروتکل امن</dd>
                    <dt>تلفن</dt>
                    <dd>(000) 000-0000 x 0000</dd>
                    <dt>ایمیل</dt>
                    <dd><a href="#">information@untitled.tld</a></dd>
                </dl>
                <ul class="icons">
                    <li><a href="#" class="icon fa-twitter alt"><span class="label">Twitter</span></a></li>
                    <li><a href="#" class="icon fa-facebook alt"><span class="label">Facebook</span></a></li>
                    <li><a href="#" class="icon fa-instagram alt"><span class="label">Instagram</span></a></li>
                    <li><a href="#" class="icon fa-github alt"><span class="label">GitHub</span></a></li>
                    <li><a href="#" class="icon fa-dribbble alt"><span class="label">Dribbble</span></a></li>
                </ul>
            </section>
            <p class="copyright">&copy; کلیه حقوق برای این سایت محفوظ است. ویرایش و پارسی سازی قالب: <a href="https://mrcode.ir" target="_blank">MrCode.ir</a>.</p>
        </footer>--%>
    </div>
</asp:Content>
