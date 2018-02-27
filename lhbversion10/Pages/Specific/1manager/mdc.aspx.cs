using Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class mdc : System.Web.UI.Page
    {
        DBHelper dbh = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView1.SelectedRow;
            string a = r.Cells[0].Text.ToString();
            DropDownList1.Items.Insert(DropDownList1.Items.Count, new ListItem(a, a));

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView2.SelectedRow;
            string a = r.Cells[0].Text.ToString();
            DropDownList2.Items.Insert(DropDownList2.Items.Count, new ListItem(a, a));

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Notice.Text = "";
            Notice0.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Boolean b = dbh.del("CustN", DropDownList1.SelectedItem.Value.ToString());
            if (b == true) { Notice.Text = "Deletion Successfull"; }
            else { Notice.Text = "Failed to DELETE"; }
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Boolean b = dbh.del("CustB", DropDownList2.SelectedItem.Value.ToString());
            if (b == true) { Notice0.Text = "Deletion Successfull"; }
            else { Notice0.Text = "Failed to DELETE"; }
            GridView2.DataBind();
        }
    }
}