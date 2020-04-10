<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1._default"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 197px;
            height: 69px;
        }
    .auto-style7 {
        width: 177px;
        height: 81px;
    }
    .auto-style8 {
        width: 197px;
        height: 81px;
    }
    .auto-style13 {
        width: 197px;
        height: 36px;
    }
    .auto-style14 {
        width: 177px;
        height: 36px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="registration">  
                    <tr>  
                        <td class="auto-style13">Name :</td>  
                        <td class="auto-style14">  
                            <asp:TextBox ID="TextBox1" runat="server" Width="271px"></asp:TextBox>  
                        </td>  
  
                   </tr>  
                    <tr>  
                        <td class="auto-style13">Password</td>  
                         <td class="auto-style14"> <asp:TextBox ID="TextBox2" runat="server" Width="271px"></asp:TextBox></td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style13">Confirm Password</td>  
                        <td class="auto-style14">  
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="271px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style13">City</td>  
                        <td class="auto-style14">  
                            <asp:TextBox ID="TextBox5" runat="server" Width="271px"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style8">Gender</td>  
                        <td class="auto-style7">  
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                                <asp:ListItem>Male</asp:ListItem>  
                                <asp:ListItem>Female</asp:ListItem>  
                            </asp:RadioButtonList>  
                        </td>  
                   </tr>  
                    <tr>  
                        <td class="auto-style13">Email</td>  
                        <td class="auto-style14">  
                            <asp:TextBox ID="TextBox4" runat="server" Width="271px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style2">  
                            <asp:Button ID="Button1" runat="server" Text="Submit" />  
                        </td>  
                    </tr>  
                </table>
        </div>
</asp:Content>
