using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1.Pages
{
    public partial class Bedrooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName2"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/Bedrooms.aspx");
            }
        }
    }
}