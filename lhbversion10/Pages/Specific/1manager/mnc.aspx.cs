using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class mnc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";
        }

        protected void cc_Click(object sender, EventArgs e)
        {
            DBHelper dbh = new DBHelper();
            if (dbh.ccn(Name.Text.ToString(), add1.Text.ToString(), add2.Text.ToString(), Contact.Text.ToString()) == true)
            {
                Label1.Text = "Customer added Successfully";
            }
            else
            {
                Label1.Text = "Error Occured!,Please Try Again";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBHelper dbh = new DBHelper();
            if (dbh.ccnbusiness(companyname.Text.ToString(), cadd1.Text.ToString(), cadd2.Text.ToString(), cmob.Text.ToString(),gst.Text.ToString(),cownername.Text.ToString()) == true)
            {
                Label2.Text = "Customer added Successfully";
            }
            else
            {
                Label2.Text = "Error Occured!,Please Try Again";
            }
        }
    }
}