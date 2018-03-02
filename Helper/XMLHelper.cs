using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml;

namespace Helper
{
    public class XMLHelper
    {
        String file;
        String Name;
        public void CreateXMLHelper(String BType,String EmpId)
        {
            long ticks = DateTime.Now.Ticks;
            byte[] bytes = BitConverter.GetBytes(ticks);
            String dt = Convert.ToBase64String(bytes).Replace('+', '_').Replace('/', '-').TrimEnd('=');
            Name = BType + EmpId + dt;
            String path = HttpContext.Current.Server.MapPath("~/0Bills/");
            file = path + Name + ".xml";
            XmlTextWriter writer = new XmlTextWriter(file, Encoding.UTF8);
        }
        public String filepath
        {
            get { return Name; }
        }
    }
}
