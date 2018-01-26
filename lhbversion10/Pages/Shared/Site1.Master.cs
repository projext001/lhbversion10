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
                Image1.Visible = false;
            }
            else { Image2.Visible = false; }
        }
    }
}