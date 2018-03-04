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
            xh.CreateXMLHelperretail("retail", c["Id"].ToString(),DropDownList1.SelectedValue);
            Label1.Text = xh.filepath;
            Button1.Enabled = false;
        }

        protected void additem_Click(object sender, EventArgs e)
        {
            XMLHelper xh = new XMLHelper();
            if (xh.addItem("10",Label1.Text.ToString())==true)
            {
                Label2.Text = "Item Added";
            }
            else
            {
                Label2.Text = "Error";
            }
        }
    }
}