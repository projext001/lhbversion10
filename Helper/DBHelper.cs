using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Helper
{
    public class DBHelper
    {
        //CookieHelper ch = new CookieHelper();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());

        SqlDataReader dr;
        //check user
        public Tuple<Boolean, int, int> UC(String a, String pa)
        {
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [User] where Id=@name and pass=@pas";
            command.Parameters.AddWithValue("@name", a);
            command.Parameters.AddWithValue("@pas", pa);
            command.Connection = conn;
            conn.Open();
            dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                int y = Convert.ToInt32(dr[0]);
                int z = Convert.ToInt32(dr[2]);
                conn.Close();
                return Tuple.Create(true, z, y);
            }
            else
            {
                conn.Close();
                return Tuple.Create(false, 0, 0);
            }

        }
        //Insert Product Type in Products
        public Boolean ipt(String a, String b, String c)
        {
            try
            {
                string insert = "Insert Into[Products]([Name],[cgst],[sgst]) values(@name, @c, @s)";
                SqlCommand command = new SqlCommand(insert, conn);
                command.Parameters.AddWithValue("@name", a);
                command.Parameters.AddWithValue("@c", b);
                command.Parameters.AddWithValue("@s", c);
                conn.Open();
                int i = command.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                conn.Close();
                return false;
            }
        }
        //Insert Product in Product List
        public Boolean ip(String a, String b, String c, String d, String e, String f)
        {
            try
            {
                string insert = "Insert Into[ProdList]([Cost],[batchno],[serialno],[ProductId],[Description],[costprice]) values(@a,@b,@c,@d,@e,@f)";
                SqlCommand command = new SqlCommand(insert, conn);
                command.Parameters.AddWithValue("@a", a);
                command.Parameters.AddWithValue("@b", b);
                command.Parameters.AddWithValue("@c", c);
                command.Parameters.AddWithValue("@d", d);
                command.Parameters.AddWithValue("@e", e);
                command.Parameters.AddWithValue("@f", f);
                conn.Open();
                int i = command.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                conn.Close();
                return false;
            }
        }

        //Update User table
        public Boolean pd(String a, String b)
        {
            String ins = "UPDATE [User] SET acl="+b+" where (Id='"+a+"')";
            try
            {
                SqlCommand comm = new SqlCommand(ins,conn);
                conn.Open();
                int i = comm.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex) { Console.Write(ex);conn.Close();return false; }
        }

        //Adding a user
        public Boolean au(String a, String b, String c,String d,String e,String f,String g)
        {
            try
            {
                string ins = "Insert Into [User]([pass],[acl],[Name],[Address1],[Mobile_No],[National_Id_Type],[National_Id_No]) values (@a,@b,@c,@d,@e,@f,@g)";
                SqlCommand x = new SqlCommand(ins, conn);
                x.Parameters.AddWithValue("@a", a);
                x.Parameters.AddWithValue("@b", b);
                x.Parameters.AddWithValue("@c", c);
                x.Parameters.AddWithValue("@d", d);
                x.Parameters.AddWithValue("@e", e);
                x.Parameters.AddWithValue("@f", f);
                x.Parameters.AddWithValue("@g", g);
                conn.Open();
                int i = x.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch(Exception ex)
            { Console.Write(ex); conn.Close(); return false; }
        }
        
        //Deleting item from database using their id
        public Boolean del(String a,String b)
        {
            try
            {
                string insert = "Delete from [" + a +"] where Id=@id";
                SqlCommand command = new SqlCommand(insert, conn);
                command.Parameters.AddWithValue("@id", b);
                conn.Open();
                int i = command.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                conn.Close();
                return false;
            }
        }
        //Checking deltion authority and calling del function for same if authorised
        public Boolean rem(String a,String b,String c,String d)
        {
            Tuple<Boolean, int, int> t = UC(a, b);
            if (t.Item1==true && t.Item2==4)
            {
                del(c,d);
                return true;
            }
            else { return false; }
        }
        //add new normal customer
        public Boolean ccn(String name, String add1, String add2,String cont)
        {
            try
            {
                string insert = "Insert Into[CustN]([Name],[Address1],[Address2],[Contact],[Type]) values(@a ,@b ,@c, @d,@e)";
                SqlCommand command = new SqlCommand(insert, conn);
                command.Parameters.AddWithValue("@a", name);
                command.Parameters.AddWithValue("@b", add1);
                command.Parameters.AddWithValue("@c", add2);
                command.Parameters.AddWithValue("@d", cont);
                command.Parameters.AddWithValue("@e", "normal");
                conn.Open();
                int i = command.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                conn.Close();
                return false;
            }
        }
        //add new business customer
        public Boolean ccn(String name, String add1, String add2, String cont,String gst,String hn)
        {
            try
            {
                string insert = "Insert Into[CustN]([CompanyName],[Address1],[Address2],[contactno],[gstno],[HName],[Type]) values(@a ,@b ,@c, @d,@e ,@f ,@g)";
                SqlCommand command = new SqlCommand(insert, conn);
                command.Parameters.AddWithValue("@a", name);
                command.Parameters.AddWithValue("@b", add1);
                command.Parameters.AddWithValue("@c", add2);
                command.Parameters.AddWithValue("@d", cont);
                command.Parameters.AddWithValue("@d", gst);
                command.Parameters.AddWithValue("@d", hn);
                command.Parameters.AddWithValue("@d", "business");
                conn.Open();
                int i = command.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                conn.Close();
                return false;
            }
        }
        public Boolean insexpenditure(String exp)
        {
            try
            {
                SqlCommand com = new SqlCommand();
                com.CommandText = "Insert into [Expenditure_List]([ExpenditureName]) values (@a)";
                com.Parameters.AddWithValue("@a",exp);
                com.Connection = conn;
                conn.Open();
                int i = com.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public Boolean insbudget(String exptype,String fdate, String tdate,String tcost)
        {
            try
            {
                SqlCommand com = new SqlCommand();
                com.CommandText = "Insert into [Budget]([ExpenditureType],[FromDate],[ToDate],[TotalCost]) values (@a,@b,@c,@d)";
                com.Parameters.AddWithValue("@a", exptype);
                com.Parameters.AddWithValue("@b", fdate);
                com.Parameters.AddWithValue("@c", tdate);
                com.Parameters.AddWithValue("@d", tcost);
                com.Connection = conn;
                conn.Open();
                int i = com.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}