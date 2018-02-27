using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helper
{
    public class AAA
    {
        String id;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());
        SqlDataReader dr;
        String ins, upd;
        public AAA() { }
        public AAA(String a)
        {
            id = a;
        }

        //Mark Attendance Time
        public void Attendance()
        {
            SqlCommand command1 = new SqlCommand();
            command1.CommandText = "Select * from [Attendance] where Date=@date and User_Id=@uid";
            command1.Parameters.AddWithValue("@date",DateTime.Now.Date);
            command1.Parameters.AddWithValue("@uid",id);
            command1.Connection = conn;
            conn.Open();
            dr = command1.ExecuteReader();
            if(dr.HasRows){ }
            else {
                dr.Close();
                SqlCommand command2 = new SqlCommand();
                command2.CommandText = "Insert into [Attendance]([User_Id],[Date],[IN_Time],[OUT_Time]) values(@a,@b,@c,@d)";
                command2.Parameters.AddWithValue("@a",id);
                command2.Parameters.AddWithValue("@b",DateTime.Now.Date);
                command2.Parameters.AddWithValue("@c", DateTime.Now.TimeOfDay);
                command2.Parameters.AddWithValue("@d", DateTime.Now.AddHours(8).TimeOfDay);
                command2.Connection = conn;
                int i = command2.ExecuteNonQuery();
            }
            
                
        }

        //Mark Activity
        public void Activity(String ida,String activity)
        {
            SqlCommand command2 = new SqlCommand();
            command2.CommandText = "Insert into [ActivityLogs]([User_Id],[Activity],[date],[time]) values(@a,@b,@c,@d)";
            command2.Parameters.AddWithValue("@a", ida);
            command2.Parameters.AddWithValue("@b", activity);
            command2.Parameters.AddWithValue("@c", DateTime.Now.Date);
            command2.Parameters.AddWithValue("@d", DateTime.Now.TimeOfDay);
            command2.Connection = conn;
            conn.Open();
            int i = command2.ExecuteNonQuery();
            conn.Close();
        }

        //Mark Exit
        public void EXIT()
        {
            SqlCommand command1 = new SqlCommand();
            command1.CommandText = "UPDATE [Attendance] SET OUT_Time="+DateTime.Now.TimeOfDay+"where (Id='"+id+" and Date="+DateTime.Now.Date+")";
            command1.Connection = conn;
            conn.Open();
            int i = command1.ExecuteNonQuery();
        }
    }
}
