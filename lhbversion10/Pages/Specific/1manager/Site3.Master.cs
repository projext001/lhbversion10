using System;
using System.Collections.Generic;
using System.Linq;
using Helper;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Validate v = new Validate();
            int[] a = { 2 };
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