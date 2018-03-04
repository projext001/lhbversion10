using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class mvb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/0Bills/"));
            List<ListItem> files = new List<ListItem>();
            int a = 1;
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(a.ToString(),Path.GetFileName(filePath)));
                a = a + 1;
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }
        protected void View(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
        }
    }
}