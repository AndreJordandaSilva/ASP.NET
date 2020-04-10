<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bedrooms.aspx.cs" Inherits="WebApplication1._default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <br />

    <br />

   <asp:DataList ID="DataList1" runat="server" DataKeyField="BedID" DataSourceID="SqlDataSource1" 

                BorderStyle="None" BorderWidth="3px" CellPadding="4" CellSpacing="5"

                Font-Names="Arial" Font-Size="Small"  RepeatColumns="3" RepeatDirection="Horizontal"

                Width="600px" HorizontalAlign="Center" >
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                <asp:Image ID="Image" runat="server" Width="100px" Height="120px" ImageUrl='<%# Bind("Image", "~/Images/Bedroom/{0}") %>' style="padding-left:40px"/><br />
           
                <b>Name:</b>

                <asp:Label ID="Bedname" runat="server" Text='<%# Eval("Bedname") %>'></asp:Label>

                <br />

                <b>Colour:</b>

                <asp:Label ID="Bedcolour" runat="server" Text='<%# Eval("Bedcolour") %>'></asp:Label>

                <br />

               <b> Material:</b>

                <asp:Label ID="Material" runat="server" Text=' <%# Eval("Material") %>'></asp:Label>

                <br />

                <b>Size:</b>

                <asp:Label ID="Bedsize" runat="server" Text='<%# Eval("Bedsize") %>'></asp:Label>

                <br />

                <b>Price:</b>

                <asp:Label ID="SalePrice" runat="server" Text='<%# Eval("SalePrice") %>'></asp:Label>

                <br />

             
        </ItemTemplate> 
    </asp:DataList>

   <%-- Filter - - WHERE (([Material] = @Material) AND ([BedSize] = @BedSize)) --%>
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Bedroom]" OldValuesParameterFormatString="original_{0}">
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">



    <asp:Label ID="Label1" runat="server" Text="Material"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Material" DataValueField="Material">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Material] FROM [Bedroom]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Size"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="BedSize" DataValueField="BedSize">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [BedSize] FROM [Bedroom]"></asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4" >
        <AlternatingItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemTemplate>
            
            <asp:Image ID="Image" runat="server" Width="100px" Height="120px" ImageUrl='<%# Bind("Image", "~/Images/Bedroom/{0}") %>' style="padding-left:40px"/><br />
            <br />
            Price:
            <asp:Label ID="SalePriceLabel" runat="server" Text='<%# Eval("SalePrice") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [SalePrice] FROM [Bedroom] WHERE (([Material] = @Material) AND ([BedSize] = @BedSize))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Material" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="BedSize" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



    </asp:Content>

