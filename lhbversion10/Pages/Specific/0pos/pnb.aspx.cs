using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Helper;
using System.Web.UI.WebControls;

namespace lhbversion10.Pages.Specific._0pos
{
    public partial class pnb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String billno = "";
            HttpCookie c = Request.Cookies["userInfo"];
            AAA log = new AAA();
            log.Activity(c["Id"].ToString(),"Created new bill no." + billno);
        }
    }
}