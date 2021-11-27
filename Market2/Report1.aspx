<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report1.aspx.cs" Inherits="Market2.Report1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width: 100%;">
            <tr>
                <td colspan="3">
                    <h3 class="auto-style1">Reporters</h3>
                </td>
            </tr>
            <tr>
                <td>PostCode:<asp:Label ID="LblPostCode" runat="server" Text="LblPostCode"></asp:Label>
                </td>
                <td>Tel:<asp:Label ID="LblTel" runat="server" Text="LblTel"></asp:Label>
                </td>
                <td>Name:<asp:Label ID="LblName" runat="server" Text="LblName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3"><strong>Buys</strong></td>
            </tr>
            <asp:ListView ID="ListView1" runat="server">
              <ItemTemplate>
                <tr>
                <td>Title:
                    <%# Eval("Name") %>
                </td>
                <td>Price:
                                        <%# Eval("Price") %>
                </td>
            </tr>
                  </ItemTemplate>
                </asp:ListView>
        </table>

        <br /><br />
            <asp:Button ID="BtnPrint" BorderColor="Red"  runat="server" Text="Print" OnClientClick="javascript:window.print();"/>

    </form>
</body>
</html>
