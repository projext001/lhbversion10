using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;
namespace lhbversion10.Pages.Specific._2backend
{
    public partial class bdel : System.Web.UI.Page
    {
        DBHelper dbh = new DBHelper();
        Validate v = new Validate();
        HttpCookie c;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)//delete product
        {
            c = Request.Cookies["userInfo"];
            String z = DropDownList1.SelectedItem.Value.ToString();
            String y = c["Id"].ToString();
            Boolean b = dbh.rem(y, pass.Text.ToString(), "ProdList" , z);
            GridView1.DataBind();
            if (b == true)
            {
                Notice.Text = "Deletion Successfull";
            }
            else { Notice.Text = "Deletion Unsuccessfull"; }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = GridView1.SelectedRow;
            string a = r.Cells[0].Text.ToString();
            DropDownList1.Items.Insert(DropDownList1.Items.Count, new ListItem(a, a));
        }
    }
}