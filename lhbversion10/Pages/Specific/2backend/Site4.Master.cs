using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._2backend
{
    public partial class Site4 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Validate v = new Validate();
            int[] a = { 3,4 };
            HttpCookie c = Request.Cookies["userInfo"];
            if (c != null)
            {
                v.PageAcc(a, Convert.ToInt32(c["Ac"].ToString()));
            }
            else { Server.Transfer("~/Login.aspx"); }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("/Pages/Shared/Login.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("/Pages/Shared/Profile.aspx");
        }
    }
}