using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Shared
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Validate v = new Validate();
            HttpCookie c = Request.Cookies["userInfo"];
            if (c != null)
            {
                ImageButton1.Enabled = false; ImageButton1.Visible = false;                
            }
            else { ImageButton2.Enabled = false; ImageButton2.Visible = false;
            }
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