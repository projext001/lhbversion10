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
        HttpCookie c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = Request.Cookies["userInfo"];
            String billno = "";
            AAA log = new AAA();
            log.Activity(c["Id"].ToString(),"Created new bill no." + billno);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c = Request.Cookies["userInfo"];
            XMLHelper xh = new XMLHelper();
            xh.CreateXMLHelper("retail", c["Id"].ToString());
            Label1.Text = xh.filepath;
            Button1.Enabled = false;
        }
    }
}