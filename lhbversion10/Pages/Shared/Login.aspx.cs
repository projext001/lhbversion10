using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Shared
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Validate v = new Validate();
            HttpCookie c = Request.Cookies["userInfo"];
            if (c != null)
            {
                Server.Transfer("~/Pages/Shared/Home.aspx");
            }
        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            Validate v = new Validate();
            String id = user.Text.ToString();
            String key = pass.Text.ToString();
            v.LoginSys(id,key);
        }
    }
}