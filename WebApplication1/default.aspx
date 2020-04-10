<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 > Welcome to Koala Furniture </h1>

    <p style="line-height: 1.5;">
        Koala Furniture is Australia's Best Value Sofas and Bedding storey. You can now shop and buy furniture online! View our sofas, and bedroom furniture Package Deals!
        Our porduct are built to last. With 3 years standars warranty on all products and 30 days change of mind return guarantee.
        We also have the lowest prices and offer a range of delivery options. Browese our range of Sofas and Bedrooms now to buy Aussie made comfort at a budget that suits everyone.
    </p>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table>
                  <tr>  
                        <td>
                            <asp:Label Text="UserName" runat="server" />
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="UserName" runat="server"/>    
                            <asp:Label Text="*" runat="server" ForeColor="Red" />
                        </td>
                    </tr> 
                    <tr>  
                        <td>
                            <asp:Label Text="Password" runat="server" />
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="Password" runat="server"/>     
                            <asp:Label Text="*" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>  
                        <td>
                            <asp:Label Text="isAdmin" runat="server" Visible="false"/>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="isAdmin" runat="server" Text="1" Visible="false"/>     
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Log Out" />
                        </td>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
                        </td>  
                    </tr> 
                    <tr>  
                       <td>
                           
                       </td>
                        <td colspan="2"> 
                             <asp:CheckBox ID="Admin" runat="server" Text="Admin" AutoPostBack="true"
                                OnCheckedChanged="Admin_CheckedChanged" />
                       </td>  
                    </tr> 
                    <tr>  
                       <td></td>
                        <td colspan="2"> 
                            <asp:Label Text ="" ID="SuccessMessage" runat="server" ForeColor="Green"/> 
                       </td>  
                    </tr>
                    <tr>  
                       <td></td>
                        <td colspan="2"> 
                            <asp:Label Text ="" ID="ErrorMessage" runat="server" ForeColor="Red"/> 
                       </td>  
                    </tr> 

    </table>
</asp:Content>
