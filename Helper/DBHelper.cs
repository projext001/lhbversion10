using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Helper
{
    public class DBHelper
    {
        CookieHelper ch = new CookieHelper();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());
        SqlCommand command = new SqlCommand();
        SqlDataReader dr;
        public Tuple<Boolean, int> UC(String a, String pa)
        {
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
                    //ch.CreateCookie(y, z);
                    return Tuple.Create(true, z);
                }
                else return Tuple.Create(false, 0);
        }
    }
}