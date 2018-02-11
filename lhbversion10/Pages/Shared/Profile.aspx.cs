using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Shared
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["userInfo"];
            if (c == null) { Server.Transfer("/Pages/Shared/Login.aspx"); }
            else {
                String pro = c["Id"].ToString();
                UserProfile p = new UserProfile(pro);
                name.Text = p.VName;
                Address.Text = p.VAddress;
                Mobile.Text = p.VMobile;
                nit.ClearSelection();
                nit.Items.FindByValue(p.VNIDT).Selected = true;
                nin.Text = p.VNIDN;
            }
            lockb.Enabled = false;
            updatep.Enabled = false;
        }

        protected void unlockb_Click(object sender, EventArgs e)
        {
            lockb.Enabled = true;
            updatep.Enabled = true;
            unlockb.Enabled = false;
        }

        protected void lockb_Click(object sender, EventArgs e)
        {
            updatep.Enabled = false;
            unlockb.Enabled = true;
            lockb.Enabled = false;
        }

        protected void updatep_Click(object sender, EventArgs e)
        {
            unlockb.Enabled = true;
            lockb.Enabled = false;
            updatep.Enabled = false;
        }
    }
}