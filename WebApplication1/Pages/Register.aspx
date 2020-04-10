<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:hiddenfield id="hfUserID" runat="server" />
        <table class="registration">
            <tr>
                <td class="auto-style1">
                    <asp:label text="First Name" runat="server" />
                </td>
                <td colspan="2" class="auto-style1">
                    <asp:textbox id="FirstName" runat="server" />
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="First" runat="server" 
                       ControlToValidate="FirstName" ErrorMessage="Enter your name" Text="*" Display="Dynamic" SetFocusOnError="True" ></asp:RequiredFieldValidator>                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Last Name" runat="server" />
                </td>
                <td colspan="2">
                    <asp:textbox id="LastName" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="Last" runat="server" 
                       ControlToValidate="LastName" ErrorMessage="Enter your Last Name" Text="*" Display="Dynamic" SetFocusOnError="True" ></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="UserName" runat="server" />
                </td>
                <td colspan="2">
                    <asp:textbox id="UserName" runat="server" />
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ControlToValidate="UserName" ErrorMessage="Please enter an UserName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Email" runat="server" />
                </td>
                <td colspan="2">
                    <asp:textbox id="Email" runat="server" TextMode="Email" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ControlToValidate="Email" ErrorMessage="Enter a valid Email" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Password" runat="server" />
                </td>
                <td colspan="2">
                    <asp:textbox id="Password" runat="server" TextMode="Password" />
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ControlToValidate="Password" ErrorMessage="Enter a valid Password." SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Phone" runat="server" textmode="" />
                </td>
                <td colspan="2">
                    <asp:textbox id="Phone" runat="server" TextMode="Phone" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="*" ControlToValidate="Phone" ErrorMessage="Enter a valid Phone." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td></td>
                <td colspan="2">
                    <asp:button id="Button1" runat="server" onclick="Button1_Click" text="Register" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:label text="" id="SuccessMessage" runat="server" forecolor="Green" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:label text="" id="ErrorMessage" runat="server" forecolor="Red" />
                </td>
            </tr>
        </table>
        <asp:validationsummary id="ValidationSummary1" runat="server"
            displaymode="BulletList" showsummary="true" headertext="Errors:" />
    
</asp:Content>

