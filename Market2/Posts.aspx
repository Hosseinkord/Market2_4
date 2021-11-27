<%@ Page Title="Posts" Language="C#" Debug="true" MasterPageFile="~/AdminPanel.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="Market2.Posts" %>

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
            <p>Posts</p>
        </header>

        <!-- Main -->
        <div id="main">

            <!-- Content -->
            <section id="content" class="main">
                <%--                <span class="image main">
                    <img src="images/pic04.jpg" alt="" /></span>--%>

                <!-- Posts -->


                <p>
                    Title
                    <asp:TextBox ID="TxtTitle" runat="server" Width="1000px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtTitle" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </p>


                <p>
                    Text
                <asp:TextBox ID="TxtText" runat="server" Width="1000px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                </p>
                <script>
                    CKEDITOR.replace("ContentPlaceHolder1_TxtText");
                </script>


                <asp:FileUpload ID="FileUpload1" runat="server" />

                <div>
                    Price<asp:TextBox ID="TxtPrice" runat="server" Width="200px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtPrice" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPrice" runat="server" ErrorMessage="Input Is Incorrect  :(" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </div>

                <br />
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Width="45px" Height="45px" BackColor="mediumseagreen" OnClick="BtnSubmit_Click" />

                <br />
                <br />
                <h4 style="text-align: center">The Last Posts</h4>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="LinqDataSource1" GridLines="None" ForeColor="Black" OnRowCommand="GridView1_RowCommand" Width="1000px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Date" HeaderText="Date of Release" SortExpression="Date" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

                        <asp:ButtonField CommandName="cmd_del" HeaderText="Delete" Text="Delete" />
                        <asp:ButtonField CommandName="cmd_upd" HeaderText="Update" Text="Update" />

                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Market2.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="tbl_Posts"></asp:LinqDataSource>

                <div class="space"></div>

                <!-- Posts -->
                <%--                <h2>Posts</h2>
                <p>چهار سال بعد، در ۱۹۵۷ که ایبوکا و موریتا شروع به فروش اولین رادیوهای ترانزیستوری جیبی در دنیا کردند، به دنبال نامی جدید و مناسب برای شرکتشان می‌گشتند. لذا یکی از کلمات رایج در آن زمان یعنی (به انگلیسی: Sonny) به معنای پسر بچه را با عبارت (به لاتین: Sonus) که از ریشه (به انگلیسی: Sound) بود، ترکیب کردند و از آن کلمه سونی (به انگلیسی: Sony) را پدید آوردند، که در هر زبانی به راحتی قابل تلفظ کردن و خوانده شدن است. این ترکیب گویای گروهی از جوانان است، که انرژی و علاقه بسیاری برای ارائه تولیدات و ایده‌های جدید دارند.</p>
                <p>با نام‌گذاری جدید، شرکت به تجارت با ایالات متحده آمریکا متمایل شد. ایبوکا و موریتا دریافتند، که در دراز مدت مهم‌ترین بازار آنها به ویژه در بخش ابداعات جدید، ایالات متحده خواهد بود. آنها به این نتیجه رسیدند که هر کس بتواند در آنجا نفوذ کند، می‌تواند در تمام دنیا فعالیت‌های خود را گسترش دهد. اواخر دهه ۱۹۵۰ بسیاری از شرکت‌های دیگر ژاپنی مثل تویوتا نیز به همین نتیجه رسیدند، ولی می‌توان سونی را تنها شرکت ژاپنی دانست، که حاضر شد تمام سیاست‌های خویش را مبتنی بر مقتضیات تجارت در ایالات متحده، شکل دهد.</p>
                <h2>و عنوانی دیگر در اینجا</h2>
                --%> <%--<p><p>--%>
            </section>
            <%--            <a style="visibility: hidden;" href="https://mrcode.ir" target="_blank">آموزش طراحی سایت</a>--%>
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
                </ul>--%>
        <%--</section>--%>
        <%--            <p class="copyright">&copy; کلیه حقوق برای این سایت محفوظ است. ویرایش و پارسی سازی قالب: <a href="https://mrcode.ir" target="_blank">MrCode.ir</a>.</p>--%>
        <%--        </footer>--%>
    </div>
</asp:Content>
