<%@ Page Title="Setting" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Market2.Settings" %>

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
            <p>Settings</p>
        </header>

        <!-- Main -->
        <div id="main">

            <!-- Content -->
            <section id="content" class="main">

                <p>
                    Tilte
                    <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
                    <br />
                    Footer
                    <asp:TextBox ID="TxtFooter" runat="server"></asp:TextBox>
                    <br />
                    Aboutus
                    <asp:TextBox ID="TxtAboutus" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    Tel1
                    <asp:TextBox ID="TxtTel1" runat="server"></asp:TextBox>
                    <br />
                    Tel2
                    <asp:TextBox ID="TxtTel2" runat="server"></asp:TextBox>
                    <br />
                    Email
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    <br />
                    Contactus
                    <asp:TextBox ID="TxtContactus" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    Address
                    <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                </p>
                <br />
                <asp:Button ID="BtnRelease" runat="server" Text="Release"  Width="45px" Height="45px" BackColor="mediumseagreen" OnClick="BtnRelease_Click"/>



                <%--   <span class="image main">
                    <img src="images/pic04.jpg" alt="" /></span>

                <h2>Settings</h2>
                <p>چهار سال بعد، در ۱۹۵۷ که ایبوکا و موریتا شروع به فروش اولین رادیوهای ترانزیستوری جیبی در دنیا کردند، به دنبال نامی جدید و مناسب برای شرکتشان می‌گشتند. لذا یکی از کلمات رایج در آن زمان یعنی (به انگلیسی: Sonny) به معنای پسر بچه را با عبارت (به لاتین: Sonus) که از ریشه (به انگلیسی: Sound) بود، ترکیب کردند و از آن کلمه سونی (به انگلیسی: Sony) را پدید آوردند، که در هر زبانی به راحتی قابل تلفظ کردن و خوانده شدن است. این ترکیب گویای گروهی از جوانان است، که انرژی و علاقه بسیاری برای ارائه تولیدات و ایده‌های جدید دارند.</p>
                <p>با نام‌گذاری جدید، شرکت به تجارت با ایالات متحده آمریکا متمایل شد. ایبوکا و موریتا دریافتند، که در دراز مدت مهم‌ترین بازار آنها به ویژه در بخش ابداعات جدید، ایالات متحده خواهد بود. آنها به این نتیجه رسیدند که هر کس بتواند در آنجا نفوذ کند، می‌تواند در تمام دنیا فعالیت‌های خود را گسترش دهد. اواخر دهه ۱۹۵۰ بسیاری از شرکت‌های دیگر ژاپنی مثل تویوتا نیز به همین نتیجه رسیدند، ولی می‌توان سونی را تنها شرکت ژاپنی دانست، که حاضر شد تمام سیاست‌های خویش را مبتنی بر مقتضیات تجارت در ایالات متحده، شکل دهد.</p>
                <h2>و عنوانی دیگر در اینجا</h2>
                <p>از دهه ۱۹۵۰ میلادی، فعالیت‌های سونی تولید محصولاتی ازجمله تلویزیون، دستگاه‌های رادیویی با ابعاد مختلف (واکمن یکی از اختراعات شرکت توکیویی و محصول سال ۱۹۷۹ سونی به عنوان اولین دستگاه پخش موسیقی قابل حمل در جهان، اولین دستگاه کاست خوان و امروز پخش کننده دستگاه‌های ام‌پی‌تری دی‌وی‌دی و دیسک بلو-ری و دستگاه‌های ویدئویی مثل دستگاه‌های ضبط ویدئو و ویدئو کاست‌های مربوط (ازجمله سیستم نه چندان موفق بتامکس که در سال ۱۹۷۶ خلق شد و خیلی زود با فرمت وی‌اچ‌اس شرکت پاناسونیک جایگزین شد) انواع دستگاه‌های ال. دی، وی. سی. دی، دی. وی. دی، ام. دی و حتی یو. ام. دی (سیستم اوپتیک طراحی شده سونی برای پی. اس. پی پلی استیشن) و دوربین‌های تصویربرداری(cyber Shot)، دوربین‌های عکاسی دیجیتال(ALFA)و کامپیوترهای شخصی(VAIO)و به تازگی گوشی های هوشمند(XPERIA)که شناخته شده ترین آن‌ها هستند، را شامل می‌شوند.</p>
            </section>
            <a style="visibility: hidden;" href="https://mrcode.ir" target="_blank">آموزش طراحی سایت</a>
        </div>

        <!-- Footer -->
        <footer id="footer">
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
            </section>
            <%--            <p class="copyright">&copy; کلیه حقوق برای این سایت محفوظ است. ویرایش و پارسی سازی قالب: <a href="https://mrcode.ir" target="_blank">MrCode.ir</a>.</p>
        </footer>--%>
        </div>
        </div>
</asp:Content>
