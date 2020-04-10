using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1.MasterPpge
{
    public partial class MasterPpge : System.Web.UI.MasterPage
    {

        public DateTime loLastModified;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.IO.FileInfo loFile = new System.IO.FileInfo(Server.MapPath(Request.Url.AbsolutePath));
            loLastModified = loFile.LastWriteTime;
        }      

    }
}