using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._2backend
{
    public partial class bhome : System.Web.UI.Page
    {
        DBHelper dbh = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Execute_Click(object sender, ImageClickEventArgs e)
        {
            Boolean b = dbh.ipt(Name.Text.ToString(),cgst.Text.ToString(),sgst.Text.ToString());
            if (b==true)
            {
                Notice.Text = Notice.Text.ToString() + "\nInsert Query Executed Normally";
            }
            else
            {
                Notice.Text = "Insert Query Could Not be Executed";
            }
        }
    }
}