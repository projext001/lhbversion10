using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class memp : System.Web.UI.Page
    {
        DBHelper dbh = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView1.SelectedRow;
            string a = r.Cells[0].Text.ToString();
            DropDownList2.Items.Insert(DropDownList2.Items.Count, new ListItem(a, a));
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            dbh.au(TextBox1.Text.ToString(),DropDownList1.SelectedItem.Value.ToString(),name.Text.ToString(),adl1.Text.ToString(),mobile.Text.ToString(),nidt.SelectedItem.Value.ToString(),nidn.Text.ToString());
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)//Remove Employee
        {
            dbh.del("User", DropDownList2.SelectedItem.Value.ToString());
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)//Demote OR Promote Employee
        {
            dbh.pd(DropDownList2.SelectedItem.ToString(),DropDownList3.SelectedItem.ToString());
            GridView1.DataBind();
        }
    }
}