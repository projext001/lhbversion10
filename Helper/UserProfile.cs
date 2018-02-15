using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Helper
{
    public class UserProfile
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());
        SqlCommand command = new SqlCommand();
        SqlDataReader dr;
        String Name, Address, Mobile, NIDT, NIDN;
        public UserProfile() { }
        public UserProfile(String id)
        {
            command.CommandText = "Select * from [User] where Id=@a";
            command.Parameters.AddWithValue("@a", id);
            command.Connection = conn;
            conn.Open();
            dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Name = dr[3].ToString();
                Address = dr[4].ToString();
                Mobile = dr[5].ToString();
                NIDT = "PAN";//dr[6].ToString();
                NIDN = dr[7].ToString();
            }
            else { Name = "NOT FOUND";NIDT = "PAN"; }
        }

        public String VName
        {
            get { return Name; }
        }

        public String VAddress
        {
            get { return Address; }
        }

        public String VMobile
        {
            get { return Mobile; }
        }

        public String VNIDT
        {
            get { return NIDT; }
        }

        public String VNIDN
        {
            get { return NIDN; }
        }

        public void execute_update(String id, String ColName, String Value)
        {
            String ins = "UPDATE [User] SET "+ColName+"=" + Value + " where (Id='" + id + "')";
            command.CommandText = ins;
            command.Connection = conn;
            conn.Open();
            int i = command.ExecuteNonQuery();
        }

        public Boolean update_pass(String id,String OldValue,String NewValue)
        {
            DBHelper dbh = new DBHelper();
            Tuple<Boolean , int, int> u = dbh.UC(id,OldValue);
            String ins = "UPDATE [User] SET pass='" + NewValue + "' where (Id='" + id + "')";
            command.CommandText = ins;
            command.Connection = conn;
            conn.Open();
            if (u.Item1 == true)
            {
                int i = command.ExecuteNonQuery();
                return true;
            }
            else { return false; }
        }
    }
}
