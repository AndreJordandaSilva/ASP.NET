<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sofas.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    


            <asp:DataList ID="DataList1" runat="server" DataKeyField="sofaID" DataSourceID="SqlDataSource1" 

                BorderStyle="None" BorderWidth="3px" CellPadding="4" CellSpacing="5"

                Font-Names="Arial" Font-Size="Small"  RepeatColumns="3" RepeatDirection="Horizontal"

                Width="600px" HorizontalAlign="Center" VerticalAlign="Middle" >
             <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
               <a href="javascript:Openpopup('SofaLarge.aspx?PId=<%# Eval("sofaID") %>')">
                <asp:Image ID="thumbnail" runat="server" Width="100px" Height="120px" ImageUrl='<%# Eval("thumbnail", "~/Images/Sofa/{0}") %>' style="padding-left:40px"/><br />
               </a>
                <b>Name:</b>

                <asp:Label ID="sofaName" runat="server" Text='<%# Eval("sofaName") %>'></asp:Label>

                <br />

                <b>Colour:</b>

                <asp:Label ID="sofaColour" runat="server" Text='<%# Eval("sofaColour") %>'></asp:Label>

                <br />

               <b> Height:</b>

                <asp:Label ID="sofaHeight" runat="server" Text=' <%# Eval("sofaHeight") %>'></asp:Label>

                <br />

                <b>Depth:</b>

                <asp:Label ID="sofaDepth" runat="server" Text='<%# Eval("sofaDepth") %>'></asp:Label>

                <br />

                <b>Lenght:</b>

                <asp:Label ID="sofaLenght" runat="server" Text='<%# Eval("sofaLenght") %>'></asp:Label>

                <br />

                <b>Price:</b>

                <asp:Label ID="sofaPrice" runat="server" Text='<%# Eval("salePrice") %>'></asp:Label>

                <br />

           
        </ItemTemplate>
    </asp:DataList>
    <%-- Filter - - WHERE ([salePrice] = @salePrice) --%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sofaName], [sofaID], [sofaHeight], [sofaColour], [sofaDepth], [salePrice], [sofaLenght], [dealerPrice], [thumbnail] FROM [Sofa] ">
    </asp:SqlDataSource>

    <script  type="text/javascript">function Openpopup(popurl)

{
winpops = window.open(popurl,"","width=340, height=300, left=45, top=15, scrollbars=yes, menubar=no,resizable=no,directories=no,location=no")

}

</script>



</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="salePrice" DataValueField="salePrice" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [salePrice] FROM [Sofa]"></asp:SqlDataSource>

    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
                    
            <asp:Image ID="image" runat="server" Width="100px" Height="120px" ImageUrl='<%# Eval("image", "~/Images/Sofalarge/{0}") %>' style="padding-left:40px"/><br />
            <br />
            Price:
            <asp:Label ID="salePriceLabel" runat="server" Text='<%# Eval("salePrice") %>' />
            <br />
        <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image], [salePrice] FROM [Sofa] WHERE ([salePrice] = @salePrice)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="salePrice" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

