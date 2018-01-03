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
        public Tuple<Boolean, int> UC(String a, String pa)
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
                //ch.CreateCookie(y, z);
                return Tuple.Create(true, z);
            }
            else
            {
                conn.Close();
                return Tuple.Create(false, 0);
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
            Tuple<Boolean, int> t = UC(a, b);
            if (t.Item1==true && t.Item2==4)
            {
                del(c,d);
                return true;
            }
            else { return false; }
        }
    }
}