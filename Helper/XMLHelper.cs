using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml;
using System.Configuration;
using System.Data.SqlClient;

namespace Helper
{
    public class XMLHelper
    {
        String file;
        String Name;
        String test;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebDBConnectionString"].ToString());
        SqlDataReader dr,dr1;
        
        public void CreateXMLHelperretail(String BType,String EmpId,String customer)
        {
            long ticks = DateTime.Now.Ticks;
            byte[] bytes = BitConverter.GetBytes(ticks);
            String dt = Convert.ToBase64String(bytes).Replace('+', '_').Replace('/', '-').TrimEnd('=');
            Name = BType + EmpId + dt;
            String path = HttpContext.Current.Server.MapPath("~/0Bills/");
            file = path + Name + ".xml";

            //getting company details
            String COMPANYNAME, ADDRESS, CONTACT, GSTNO;
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [CustB] where Id=@name";
            command.Parameters.AddWithValue("@name", "1000");
            command.Connection = conn;
            conn.Open();
            dr = command.ExecuteReader();
            dr.Read();
            COMPANYNAME = dr[1].ToString();
            ADDRESS = dr[2].ToString() + " " + dr[3].ToString();
            CONTACT = dr[4].ToString();
            GSTNO = dr[5].ToString();
            conn.Close();

            //getting customer details
            String CUSTNAME, ADD, CON;
            SqlCommand command1 = new SqlCommand();
            command1.CommandText = "Select * from [CustN] where Id=@name";
            command1.Parameters.AddWithValue("@name", customer);
            command1.Connection = conn;
            conn.Open();
            dr1 = command1.ExecuteReader();
            dr1.Read();
            CUSTNAME = dr1[1].ToString();
            ADD = dr1[2].ToString() + " " + dr1[3].ToString();
            CON = dr1[4].ToString();
            conn.Close();

            //creating the xml file
            XmlTextWriter writer = new XmlTextWriter(file, Encoding.UTF8);
            writer.WriteStartDocument(true);
            writer.Formatting = Formatting.Indented;
            writer.Indentation = 2;
            writer.WriteStartElement("billing");//open billing

            writer.WriteStartElement("FROM");//open from

            writer.WriteStartElement("COMPANYNAME");
            writer.WriteString(COMPANYNAME);
            writer.WriteEndElement();

            writer.WriteStartElement("ADDRESS");
            writer.WriteString(ADDRESS);
            writer.WriteEndElement();

            writer.WriteStartElement("CONTACT");
            writer.WriteString(CONTACT);
            writer.WriteEndElement();

            writer.WriteStartElement("GSTNO");
            writer.WriteString(GSTNO);
            writer.WriteEndElement();

            writer.WriteEndElement();//close from

            writer.WriteStartElement("TO");//open to

            writer.WriteStartElement("CNAME");
            writer.WriteString(CUSTNAME);
            writer.WriteEndElement();

            writer.WriteStartElement("CADD");
            writer.WriteString(ADD);
            writer.WriteEndElement();

            writer.WriteStartElement("CMOB");
            writer.WriteString(CON);
            writer.WriteEndElement();

            writer.WriteEndElement();//close to
            writer.WriteStartElement("BODY");
            writer.WriteEndElement();//close body
            writer.WriteEndElement();//close billing
            writer.Close();
        }
        public String filepath
        {
            get { return Name; }
        }
        public Boolean addItem(String a,String path)
        {
            String proid, prodesc, probatch, prodserial, prodtype, prodtax, prodcost;
            String filepath = HttpContext.Current.Server.MapPath("~/0Bills/") + path + ".xml";


            //Getting Item Values
            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [productfull_list] where Id=@name";
            command.Parameters.AddWithValue("@name", a);
            command.Connection = conn;
            conn.Open();
            dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                proid = dr[0].ToString();
                prodesc = dr[1].ToString();
                probatch = dr[2].ToString();
                prodserial = dr[3].ToString();
                prodtype = dr[6].ToString();
                prodtax = dr[7].ToString() + "/" + dr[8].ToString();
                prodcost = dr[4].ToString();

                conn.Close();
                //Updating XML
                XmlDocument doc = new XmlDocument();
                doc.Load(filepath);
                

                XmlElement element = doc.CreateElement("BITEM");//creating element BITEM

                XmlAttribute attribute0 = doc.CreateAttribute("ProductId");//creating attribute
                attribute0.Value = proid;//giving the attribute value

                XmlAttribute attribute1 = doc.CreateAttribute("ProductDesc");//creating attribute
                attribute1.Value = prodesc;//giving the attribute value

                XmlAttribute attribute2 = doc.CreateAttribute("ProductBatch");//creating attribute
                attribute2.Value = probatch;//giving the attribute value

                XmlAttribute attribute3 = doc.CreateAttribute("ProductSerial");//creating attribute
                attribute3.Value = prodserial;//giving the attribute value

                XmlAttribute attribute4 = doc.CreateAttribute("ProductType");//creating attribute
                attribute4.Value = prodtype;//giving the attribute value

                XmlAttribute attribute5 = doc.CreateAttribute("ProductTaxCGSTandSGST");//creating attribute
                attribute5.Value = prodtax;//giving the attribute value

                XmlAttribute attribute6 = doc.CreateAttribute("ProductCost");//creating attribute
                attribute6.Value = prodcost;//giving the attribute value

                //giving attribute to the element
                element.Attributes.Append(attribute0);
                element.Attributes.Append(attribute1);
                element.Attributes.Append(attribute2);
                element.Attributes.Append(attribute3);
                element.Attributes.Append(attribute4);
                element.Attributes.Append(attribute5);
                element.Attributes.Append(attribute6);
                //root.AppendChild(element);
                doc.Save(Console.Out);
                return true;
            }
            else
            {
                conn.Close();
                return false;
            }
        }
        public String gogo
        {
            get { return test; }
        }
    }
}
