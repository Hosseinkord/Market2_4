<%@ Page Title="Users" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Market2.Users" %>

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
            <p>Users</p>
        </header>

        <!-- Main -->
        <div id="main">

            <!-- Content -->
            <section id="content" class="main">
                <span>UserName
                    <asp:TextBox ID="TxtUserName" runat="server" Width="400px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtUserName" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                    Password
                    <asp:TextBox ID="TxtPassword" runat="server" Width="400px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtPassword" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                    Email
                    <asp:TextBox ID="TxtEmail" runat="server" Width="400px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>

                    NickName
                    <asp:TextBox ID="TxtNickName" runat="server" Width="400px" Height="25px"></asp:TextBox>

                    Role
                <asp:DropDownList ID="TxtRole" runat="server" Width="120px" Height="40px">
                    <asp:ListItem Value="1">Manager</asp:ListItem>
                    <asp:ListItem Value="2">Author</asp:ListItem>
                    <asp:ListItem Value="3">User</asp:ListItem>
                </asp:DropDownList>
                    <br />
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" Width="45px" Height="45px" BackColor="mediumseagreen" OnClick="BtnRegister_Click1" />
                </span>
                <br />
                <h4 style="text-align: center">All Users</h4>

                <span>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                            <asp:ButtonField CommandName="cmd_del" HeaderText="Delete" Text="Delete" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Market2.Properties.Settings.MarketDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_Users]"></asp:SqlDataSource>
                </span>
            </section>


        </div>
</asp:Content>
