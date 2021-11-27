<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="Market2.ShowProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        #Basket th {
            background-color: Highlight;
            color: forestgreen;
            font-weight: bold;
            padding: 2px 20px;
        }

        #Basket td {
            background-color: #C2E2Ed;
            padding: 2px 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; width: 500px; height: 300px; direction: rtl">
            <table id="Basket" style="width: 100%">
                <tr>
                    <th>Name Of Product
                    </th>
                    <th>Price
                    </th>
                </tr>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="LblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <a href="#" onclick="window.close(); return false;">بازگشت</a>
        </div>
    </form>
</body>
</html>
