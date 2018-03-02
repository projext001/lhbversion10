using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._2backend
{
    public partial class bnb : System.Web.UI.Page
    {
        DBHelper d = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addexp_Click(object sender, EventArgs e)
        {
            Boolean b = d.insexpenditure(ename.Text.ToString());
            if (b == true)
            {
                GridView1.DataBind();
            }
        }

        protected void remexp_Click(object sender, EventArgs e)
        {
            if (Label1.Text != null)
            {
                Boolean b = d.del("Expenditure_List",Label1.Text.ToString());
                GridView1.DataBind();
            }
        }

        protected void addbudget_Click(object sender, EventArgs e)
        {
            Boolean b = d.insbudget(DropDownList1.SelectedValue.ToString(),fromdate.ToString(),todate.ToString(),amt.ToString());
            if (b == true)
            {
                GridView2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label2.Text != null)
            {
                Boolean b = d.del("Budget", Label2.Text.ToString());
                GridView2.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView1.SelectedRow;
            Label1.Text = r.Cells[0].Text.ToString();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView2.SelectedRow;
            Label2.Text = r.Cells[0].Text.ToString();
        }
    }
}