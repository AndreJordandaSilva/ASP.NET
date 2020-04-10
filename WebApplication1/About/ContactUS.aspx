<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="WebApplication1.About.ContactUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="registration">  
                    <tr>  
                        <td>  
                            <asp:Label ID="Label1" runat="server" Text="Enquiry"></asp:Label>
                        </td>  
  
                   </tr>  
                    <tr>  
                         <td class="auto-style3"> 
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">  
                            <asp:ListItem Text="Select" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Looking for an item" Value="Looking for an item"></asp:ListItem>  
                            <asp:ListItem Text="Where is my order" Value="Where is my order"></asp:ListItem>  
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>  
                        </asp:DropDownList> 
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">  
                            <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">  
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        </td>  
                   </tr>  
                    <tr>  
                        <td class="auto-style3">  
                            <asp:TextBox ID="TextBox4" runat="server" Width="299px"></asp:TextBox>
                        </td>  
                   </tr>  
                    <tr>  
                        <td class="auto-style3">  
                            <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                        </td>  
                   </tr>  
                    <tr>  
                        <td class="auto-style11">  
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style12">  
                            <asp:Label ID="Label4" runat="server" Text="Request"></asp:Label>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style11">  
                            <asp:TextBox ID="TextBox3" runat="server" Height="140px" Width="300px"></asp:TextBox>
                        </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style11">  
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                            
                        </td>  
                    </tr>
            </table>
        </div>
</asp:Content>
