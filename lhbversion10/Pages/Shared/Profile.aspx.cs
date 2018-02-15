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
        UserProfile p;
        HttpCookie c;
        protected void Page_Load(object sender, EventArgs e)
        {
             c= Request.Cookies["userInfo"];
            if (c == null) { Server.Transfer("/Pages/Shared/Login.aspx"); }
            else {
                String pro = c["Id"].ToString();
                p = new UserProfile(pro);
                name.Text = p.VName;
                Address.Text = p.VAddress;
                Mobile.Text = p.VMobile;
                nit.ClearSelection();
                nit.Items.FindByValue(p.VNIDT.ToString()).Selected = true;
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
            HttpCookie c = Request.Cookies["userInfo"];
            String pro = c["Id"].ToString();
            p.execute_update(pro, "Name", name.Text.ToString());
            p.execute_update(pro, "Address1", Address.Text.ToString());
            p.execute_update(pro, "Mobile_No", Mobile.Text.ToString());
            p.execute_update(pro, "National_Id_Type", nit.Text.ToString());
            p.execute_update(pro, "National_Id_No", nin.Text.ToString());
            unlockb.Enabled = true;
            lockb.Enabled = false;
            updatep.Enabled = false;
            Response.Write(Request.RawUrl.ToString());
        }

        protected void rstpass_Click(object sender, EventArgs e)
        {
            UserProfile u = new UserProfile();
            c = Request.Cookies["userInfo"];
            Boolean b = u.update_pass(c["Id"].ToString(),oldpass.Text.ToString(),newpass.Text.ToString());
            Label1.Visible = true;
            if (b == true) { Label1.Text = "Password Updated Successfully"; }
            else { Label1.Text = "Password Not Updated"; }
        }
    }
}