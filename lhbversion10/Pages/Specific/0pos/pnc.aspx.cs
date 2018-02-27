using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._0pos
{
    public partial class pnc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cc_Click(object sender, EventArgs e)
        {
            DBHelper dbh = new DBHelper();
            if (dbh.ccn(Name.Text.ToString(),add1.Text.ToString(),add2.Text.ToString(),Contact.Text.ToString()) == true)
            {
                Label1.Text = "Customer added Successfully";
            }
            else
            {
                Label1.Text = "Error Occured!,Please Try Again";
            }
        }
    }
}