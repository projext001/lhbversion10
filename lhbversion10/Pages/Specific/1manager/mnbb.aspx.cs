using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Helper;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace lhbversion10.Pages.Specific._1manager
{
    public partial class mnbb : System.Web.UI.Page
    {
        HttpCookie c;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());
        SqlDataReader dr0, dr1, datar;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ADD1.Visible = false;
                TextBox2.Visible = false;
                Label9.Visible = false;
                de.Visible = false;
                TextBox3.Visible = false;
                Label10.Visible = false;
                Button1.Enabled = false;
            }

        }
        private void SetInitialRow(String a)
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
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [productfull_list] where Id=@name";
            command.Parameters.AddWithValue("@name", a);
            command.Connection = conn;
            conn.Open();
            datar = command.ExecuteReader();
            try
            {
                if (datar.HasRows)
                {
                    //Label1.Text = "";
                    datar.Read();
                    //dr["SrNo"] = 1;
                    dr["ProductId"] = datar[0].ToString();
                    dr["Description"] = datar[1].ToString();
                    dr["Batch"] = datar[2].ToString();
                    dr["Serial"] = datar[3].ToString();
                    dr["Type"] = datar[6].ToString();
                    dr["TAX"] = datar[7].ToString() + "/" + datar[8].ToString();
                    dr["Cost"] = datar[4].ToString();
                    //dr["delete"];
                    dt.Rows.Add(dr);
                    ViewState["CurrentTable"] = dt;
                    conn.Close();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else { Notice.Text = "No such Product"; }
            }
            catch (Exception ex) { Notice.Text = "Error : " + ex; }
            conn.Close();

        }
        String a1, a2, a3, a4, a5, a6, a7, a8;

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBHelper q = new DBHelper();
            String what = q.addBillBusiness(Invoice.Text.ToString(), Total.Text.ToString());
            if (what == "true")
            {
                Notice.Text = "Bill Saved";
            }
            else { Notice.Text = what; }
        }

        protected void calctotal_Click(object sender, EventArgs e)
        {
            try
            {
                int e0 = 0;
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                for (int i = 0; i < dtCurrentTable.Rows.Count; i++)
                {
                    e0 = e0 + Convert.ToInt32(dtCurrentTable.Rows[i].ItemArray[7]); ;
                }
                Total.Text = e0.ToString();
                Button1.Enabled = true;
            }
            catch (Exception) { Notice.Text = "Couldnt Calculate total"; }
        }

        protected void de_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                GridView1.DataSource = null;
                dtCurrentTable.Rows.RemoveAt(Convert.ToInt32(TextBox3.Text.ToString()) - 1);
                GridView1.DataSource = dtCurrentTable;
                GridView1.DataBind();
            }
            catch (Exception) { Notice.Text = "Cant delete at specified Index"; }
        }

        private void AddNewRowToGrid(String a)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [productfull_list] where Id=@name";
            command.Parameters.AddWithValue("@name", a);
            command.Connection = conn;
            conn.Open();
            datar = command.ExecuteReader();
            try
            {
                if (datar.HasRows)
                {
                    datar.Read();

                    a2 = datar[0].ToString();
                    a3 = datar[1].ToString();
                    a4 = datar[2].ToString();
                    a5 = datar[3].ToString();
                    a6 = datar[6].ToString();
                    a7 = datar[7].ToString() + "/" + datar[8].ToString();
                    a8 = datar[4].ToString();
                }
                else { Notice.Text = "No such Product"; }
            }
            catch (Exception ex) { Notice.Text = "Error : " + ex; }
            conn.Close();

            if (ViewState["CurrentTable"] != null)
            {
                if (dtCurrentTable.Rows.Count > 0)
                {
                    int i = dtCurrentTable.Rows.Count;
                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["ProductId"] = a2;
                    drCurrentRow["Description"] = a3;
                    drCurrentRow["Batch"] = a4;
                    drCurrentRow["Serial"] = a5;
                    drCurrentRow["Type"] = a6;
                    drCurrentRow["TAX"] = a7;
                    drCurrentRow["Cost"] = a8;
                    //drCurrentRow["delete"];
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
        int i = 0;
        protected void ADD_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            ViewState["CurrentTable"] = dt;
            HttpCookie c = Request.Cookies["userInfo"];
            long ticks = DateTime.Now.Ticks;
            byte[] bytes = BitConverter.GetBytes(ticks);
            String nee = Convert.ToBase64String(bytes).Replace('+', '_').Replace('/', '-').TrimEnd('=');
            String Name = "retail" + c["Ac"].ToString() + nee;
            Invoice.Text = Name;
            InvoiceDate.Text = DateTime.Now.Date.ToString();
            ADD0.Visible = false;
            ADD1.Visible = true;
            TextBox2.Visible = true;
            Label9.Visible = true;
            de.Visible = true;
            TextBox3.Visible = true;
            Label10.Visible = true;
            String a = DropDownList1.SelectedValue.ToString();
            addInfo(a);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Notice.Text = "";
        }

        protected void ADD1_Click(object sender, EventArgs e)
        {
            DataTable dC = (DataTable)ViewState["CurrentTable"];
            if (dC.Rows.Count == 0)
            {
                SetInitialRow(TextBox2.Text.ToString());
                TextBox2.Text = String.Empty;
                TextBox2.Focus();
            }
            else
            {
                AddNewRowToGrid(TextBox2.Text.ToString());
                TextBox2.Text = String.Empty;
                TextBox2.Focus();
            }
        }
        private void addInfo(String customer)
        {
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [CustB] where Id=@name";
            command.Parameters.AddWithValue("@name", "1000");
            command.Connection = conn;
            conn.Open();
            dr0 = command.ExecuteReader();
            dr0.Read();
            FromCompany.Text = dr0[1].ToString();
            Address.Text = dr0[2].ToString() + " " + dr0[3].ToString();
            Contact.Text = dr0[4].ToString();
            GNo.Text = dr0[5].ToString();
            conn.Close();

            //getting customer details
            SqlCommand command1 = new SqlCommand();
            command1.CommandText = "Select * from [CustN] where Id=@name";
            command1.Parameters.AddWithValue("@name", customer);
            command1.Connection = conn;
            conn.Open();
            dr1 = command1.ExecuteReader();
            dr1.Read();
            ToCustomer.Text = dr1[1].ToString();
            custadd.Text = dr1[2].ToString() + " " + dr1[3].ToString();
            custmob.Text = dr1[4].ToString();
            conn.Close();
        }
    }
}