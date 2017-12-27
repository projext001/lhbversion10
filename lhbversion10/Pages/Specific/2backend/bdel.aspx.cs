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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)//delete product
        {
            Boolean b = dbh.rem(user.Text.ToString(), pass.Text.ToString(), "ProdList" ,proid.Text.ToString());
            if (b == true)
            {
                Notice.Text = "Deletion Successfull";
            }
            else { Notice.Text = "Deletion Unsuccessfull"; }
        }
    }
}