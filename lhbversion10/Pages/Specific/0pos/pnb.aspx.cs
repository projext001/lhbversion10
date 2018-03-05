using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Helper;
using System.Web.UI.WebControls;
using System.Data;

namespace lhbversion10.Pages.Specific._0pos
{
    public partial class pnb : System.Web.UI.Page
    {
        HttpCookie c;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ADD1.Visible = false;
                TextBox2.Visible = false;
                Label9.Visible = false;
            }
            
        }
        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("SrNo", typeof(string)));
            dt.Columns.Add(new DataColumn("ProductId", typeof(string)));
            dt.Columns.Add(new DataColumn("Description", typeof(string)));
            dt.Columns.Add(new DataColumn("Batch", typeof(string)));
            dt.Columns.Add(new DataColumn("Serial", typeof(string)));
            dt.Columns.Add(new DataColumn("Type", typeof(string)));
            dt.Columns.Add(new DataColumn("TAX", typeof(string)));
            dt.Columns.Add(new DataColumn("Cost", typeof(string)));
            dr = dt.NewRow();
            dr["SrNo"] = 1;
            dr["ProductId"] = string.Empty;
            dr["Description"] = string.Empty;
            dr["Batch"] = string.Empty;
            dr["Serial"] = string.Empty;
            dr["Type"] = string.Empty;
            dr["TAX"] = string.Empty;
            dr["Cost"] = string.Empty;
            dt.Rows.Add(dr);
            ViewState["CurrentTable"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void AddNewRowToGrid()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the Label values
                        Label box1 = (Label)GridView1.Rows[rowIndex].Cells[1].FindControl("Label1");
                        Label box2 = (Label)GridView1.Rows[rowIndex].Cells[2].FindControl("Label2");
                        Label box3 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label3");
                        Label box4 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label4");
                        Label box5 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label5");
                        Label box6 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label6");
                        Label box7 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label7");


                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["SrNo"] = i + 1;

                        dtCurrentTable.Rows[i - 1]["ProductId"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["Description"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["Batch"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["Serial"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["Type"] = box5.Text;
                        dtCurrentTable.Rows[i - 1]["TAX"] = box6.Text;
                        dtCurrentTable.Rows[i - 1]["Cost"] = box7.Text;



                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable"] = dtCurrentTable;

                    GridView1.DataSource = dtCurrentTable;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
        }
        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Label box1 = (Label)GridView1.Rows[rowIndex].Cells[1].FindControl("Label1");
                        Label box2 = (Label)GridView1.Rows[rowIndex].Cells[2].FindControl("Label2");
                        Label box3 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label3");
                        Label box4 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label4");
                        Label box5 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label5");
                        Label box6 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label6");
                        Label box7 = (Label)GridView1.Rows[rowIndex].Cells[3].FindControl("Label7");

                        dt.Rows[i - 1]["ProductId"] = box1.Text;
                        dt.Rows[i - 1]["Description"] = box2.Text;
                        dt.Rows[i - 1]["Batch"] = box3.Text;
                        dt.Rows[i - 1]["Serial"] = box4.Text;
                        dt.Rows[i - 1]["Type"] = box5.Text;
                        dt.Rows[i - 1]["TAX"] = box6.Text;
                        dt.Rows[i - 1]["Cost"] = box7.Text;

                        rowIndex++;
                    }
                }
            }
        }
        int i = 0;
        protected void ADD_Click(object sender, EventArgs e)
        {
            SetInitialRow();
            ADD0.Visible = false;
            TextBox1.Visible = false;
            Label8.Visible = false;
            ADD1.Visible = true;
            TextBox2.Visible = true;
            Label9.Visible = true;
        }

        protected void ADD1_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
            TextBox2.Text = String.Empty;
        }
    }
}