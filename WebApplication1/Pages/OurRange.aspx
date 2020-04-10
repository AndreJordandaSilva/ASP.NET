<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OurRange.aspx.cs" Inherits="WebApplication1._default"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">       
         <div class="card">
           <a  href="/Pages/Sofas.aspx" data-toggle="tooltip" data-placement="top" title="Sofas">
            <img class="card-img-top" src="/Images/Sofa.jpg">
            <div class="card-body text-center">
            <p class="card-text">Sofas</p>
            </div> 
           </a>                                   
          </div> 

        <div class="card">
            <a  href="/Pages/Bedrooms.aspx" data-toggle="tooltip" data-placement="top" title="Bedrooms">
              <img class="card-img-top" src="/Images/Bedroom.jpg">
               <div class="card-body text-center">
                <p class="card-text">Bedrooms</p>
              </div> 
            </a>                                   
        </div> 
    </div>        
   
</asp:Content>
