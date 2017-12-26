using System;
using System.Web;

namespace Helper
{
    public class CookieHelper
    {
        public void CreateCookie(int a, int b)
        {
            String id = a.ToString();
            String acl = b.ToString();
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["Id"] = id;
            userInfo["Ac"] = acl;
            userInfo.Expires.Add(new TimeSpan(0, 30, 0));
            HttpContext.Current.Response.Cookies.Add(userInfo);
        }
    }
}