using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lhbversion10.Pages.Specific._2backend
{
    public partial class bupdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView1.SelectedRow;
            string a = r.Cells[0].Text.ToString();
            DropDownList1.Items.Insert(DropDownList1.Items.Count, new ListItem(a, a));
        }
    }
}