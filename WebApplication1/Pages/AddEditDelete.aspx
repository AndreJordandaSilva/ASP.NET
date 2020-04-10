<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="AddEditDelete.aspx.cs" Inherits="Pages_AddEditDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="add">
        <p>Edit Bed's Information</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" Width="821px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BedID" HeaderText="BedID" ReadOnly="True" SortExpression="BedID" />
            <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
            <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
            <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="BedID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="BedID" HeaderText="BedID" InsertVisible="False" ReadOnly="True" SortExpression="BedID" />
            <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
            <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
            <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
        <br />
        <br />
        <p>Edit Sofa's Information</p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="sofaID" DataSourceID="SqlDataSource2" Width="683px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sofaID" HeaderText="sofaID" InsertVisible="False" ReadOnly="True" SortExpression="sofaID" />
                <asp:BoundField DataField="sofaName" HeaderText="sofaName" SortExpression="sofaName" />
                <asp:BoundField DataField="sofaColour" HeaderText="sofaColour" SortExpression="sofaColour" />
                <asp:BoundField DataField="sofaHeight" HeaderText="sofaHeight" SortExpression="sofaHeight" />
                <asp:BoundField DataField="sofaDepth" HeaderText="sofaDepth" SortExpression="sofaDepth" />
                <asp:BoundField DataField="sofaLenght" HeaderText="sofaLenght" SortExpression="sofaLenght" />
                <asp:BoundField DataField="salePrice" HeaderText="salePrice" SortExpression="salePrice" />
                <asp:BoundField DataField="dealerPrice" HeaderText="dealerPrice" SortExpression="dealerPrice" />
                <asp:BoundField DataField="thumbnail" HeaderText="thumbnail" SortExpression="thumbnail" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sofa] WHERE [sofaID] = @sofaID" InsertCommand="INSERT INTO [Sofa] ([sofaName], [sofaColour], [sofaHeight], [sofaDepth], [sofaLenght], [salePrice], [dealerPrice], [thumbnail], [image]) VALUES (@sofaName, @sofaColour, @sofaHeight, @sofaDepth, @sofaLenght, @salePrice, @dealerPrice, @thumbnail, @image)" SelectCommand="SELECT * FROM [Sofa]" UpdateCommand="UPDATE [Sofa] SET [sofaName] = @sofaName, [sofaColour] = @sofaColour, [sofaHeight] = @sofaHeight, [sofaDepth] = @sofaDepth, [sofaLenght] = @sofaLenght, [salePrice] = @salePrice, [dealerPrice] = @dealerPrice, [thumbnail] = @thumbnail, [image] = @image WHERE [sofaID] = @sofaID">
            <DeleteParameters>
                <asp:Parameter Name="sofaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sofaName" Type="String" />
                <asp:Parameter Name="sofaColour" Type="String" />
                <asp:Parameter Name="sofaHeight" Type="String" />
                <asp:Parameter Name="sofaDepth" Type="String" />
                <asp:Parameter Name="sofaLenght" Type="String" />
                <asp:Parameter Name="salePrice" Type="String" />
                <asp:Parameter Name="dealerPrice" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sofaName" Type="String" />
                <asp:Parameter Name="sofaColour" Type="String" />
                <asp:Parameter Name="sofaHeight" Type="String" />
                <asp:Parameter Name="sofaDepth" Type="String" />
                <asp:Parameter Name="sofaLenght" Type="String" />
                <asp:Parameter Name="salePrice" Type="String" />
                <asp:Parameter Name="dealerPrice" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="sofaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="sofaID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="sofaID" HeaderText="sofaID" InsertVisible="False" ReadOnly="True" SortExpression="sofaID" />
                <asp:BoundField DataField="sofaName" HeaderText="sofaName" SortExpression="sofaName" />
                <asp:BoundField DataField="sofaColour" HeaderText="sofaColour" SortExpression="sofaColour" />
                <asp:BoundField DataField="sofaHeight" HeaderText="sofaHeight" SortExpression="sofaHeight" />
                <asp:BoundField DataField="sofaDepth" HeaderText="sofaDepth" SortExpression="sofaDepth" />
                <asp:BoundField DataField="sofaLenght" HeaderText="sofaLenght" SortExpression="sofaLenght" />
                <asp:BoundField DataField="salePrice" HeaderText="salePrice" SortExpression="salePrice" />
                <asp:BoundField DataField="dealerPrice" HeaderText="dealerPrice" SortExpression="dealerPrice" />
                <asp:BoundField DataField="thumbnail" HeaderText="thumbnail" SortExpression="thumbnail" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    <br />
    <br />
        <p>Edit User's Information</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:CheckBoxField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Form] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Form] ([First_Name], [Last_Name], [Username], [Email], [Password], [Phone], [isAdmin]) VALUES (@First_Name, @Last_Name, @Username, @Email, @Password, @Phone, @isAdmin)" SelectCommand="SELECT * FROM [Form]" UpdateCommand="UPDATE [Form] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Username] = @Username, [Email] = @Email, [Password] = @Password, [Phone] = @Phone, [isAdmin] = @isAdmin WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="isAdmin" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="isAdmin" Type="Boolean" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:CheckBoxField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bedroom] WHERE [BedID] = @original_BedID AND (([Bedname] = @original_Bedname) OR ([Bedname] IS NULL AND @original_Bedname IS NULL)) AND (([Bedcolour] = @original_Bedcolour) OR ([Bedcolour] IS NULL AND @original_Bedcolour IS NULL)) AND (([Material] = @original_Material) OR ([Material] IS NULL AND @original_Material IS NULL)) AND (([BedSize] = @original_BedSize) OR ([BedSize] IS NULL AND @original_BedSize IS NULL)) AND (([SalePrice] = @original_SalePrice) OR ([SalePrice] IS NULL AND @original_SalePrice IS NULL)) AND (([DealerPrice] = @original_DealerPrice) OR ([DealerPrice] IS NULL AND @original_DealerPrice IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" InsertCommand="INSERT INTO [Bedroom] ( [Bedname], [Bedcolour], [Material], [BedSize], [SalePrice], [DealerPrice], [Image]) VALUES ( @Bedname, @Bedcolour, @Material, @BedSize, @SalePrice, @DealerPrice, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bedroom]" UpdateCommand="UPDATE [Bedroom] SET [Bedname] = @Bedname, [Bedcolour] = @Bedcolour, [Material] = @Material, [BedSize] = @BedSize, [SalePrice] = @SalePrice, [DealerPrice] = @DealerPrice, [Image] = @Image WHERE [BedID] = @original_BedID AND (([Bedname] = @original_Bedname) OR ([Bedname] IS NULL AND @original_Bedname IS NULL)) AND (([Bedcolour] = @original_Bedcolour) OR ([Bedcolour] IS NULL AND @original_Bedcolour IS NULL)) AND (([Material] = @original_Material) OR ([Material] IS NULL AND @original_Material IS NULL)) AND (([BedSize] = @original_BedSize) OR ([BedSize] IS NULL AND @original_BedSize IS NULL)) AND (([SalePrice] = @original_SalePrice) OR ([SalePrice] IS NULL AND @original_SalePrice IS NULL)) AND (([DealerPrice] = @original_DealerPrice) OR ([DealerPrice] IS NULL AND @original_DealerPrice IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_BedID" Type="Int32" />
            <asp:Parameter Name="original_Bedname" Type="String" />
            <asp:Parameter Name="original_Bedcolour" Type="String" />
            <asp:Parameter Name="original_Material" Type="String" />
            <asp:Parameter Name="original_BedSize" Type="String" />
            <asp:Parameter Name="original_SalePrice" Type="String" />
            <asp:Parameter Name="original_DealerPrice" Type="String" />
            <asp:Parameter Name="original_Image" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BedID" Type="Int32" />
            <asp:Parameter Name="Bedname" Type="String" />
            <asp:Parameter Name="Bedcolour" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="BedSize" Type="String" />
            <asp:Parameter Name="SalePrice" Type="String" />
            <asp:Parameter Name="DealerPrice" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Bedname" Type="String" />
            <asp:Parameter Name="Bedcolour" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="BedSize" Type="String" />
            <asp:Parameter Name="SalePrice" Type="String" />
            <asp:Parameter Name="DealerPrice" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="original_BedID" Type="Int32" />
            <asp:Parameter Name="original_Bedname" Type="String" />
            <asp:Parameter Name="original_Bedcolour" Type="String" />
            <asp:Parameter Name="original_Material" Type="String" />
            <asp:Parameter Name="original_BedSize" Type="String" />
            <asp:Parameter Name="original_SalePrice" Type="String" />
            <asp:Parameter Name="original_DealerPrice" Type="String" />
            <asp:Parameter Name="original_Image" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>