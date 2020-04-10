<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="sofaID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    salePrice:
                    <asp:Label ID="salePriceLabel" runat="server" Text='<%# Eval("salePrice") %>' />
                    <br />
                    image:
                    <asp:Image ID="image" runat="server" Width="100px" Height="120px" ImageUrl='<%# Eval("image", "~/Images/SofaLarge/{0}") %>' style="padding-left:40px"/>
                    <br />
                    sofaID:
                    <asp:Label ID="sofaIDLabel" runat="server" Text='<%# Eval("sofaID") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [salePrice], [image], [sofaID] FROM [Sofa]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
