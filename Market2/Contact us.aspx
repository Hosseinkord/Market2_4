<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact us.aspx.cs" Inherits="Market2.Contact_us" %>

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
                <h4>Contact us
                </h4>
                <div class="page">
                    <div class="contact">

                        <p>
                            <asp:Label ID="LblContactUs" runat="server" Text="ContactUS"></asp:Label>
                        </p>
                        <p>
                            Name 
                        <asp:TextBox ID="TxtName" runat="server" Width="1000px" Height="25px"></asp:TextBox>
                        </p>

                        <p>
                            Email 
                        <asp:TextBox ID="TxtEmail" runat="server" Width="1000px" Height="25px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>

                        </p>

                        <p>
                            Title 
                        <asp:TextBox ID="TxtTitle" runat="server" Width="1000px" Height="25px"></asp:TextBox>
                        </p>

                        <p>
                            Message 
                        <asp:TextBox ID="TxtMessage" runat="server" Width="1000px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtMessage" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </p>
                        <br />
                        <asp:Button ID="Send" runat="server" Text="send" Width="45px" Height="45px" BackColor="mediumseagreen" OnClick="Send_Click1" />
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
