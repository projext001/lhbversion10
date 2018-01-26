using System;
using System.Web;

namespace Helper
{
    public class CookieHelper
    {
        String id,acl;
        HttpCookie userInfo = new HttpCookie("userInfo");
        public void CreateCookie(int a, int b)
        {
            id = a.ToString();
            acl = b.ToString();
            userInfo["Id"] = id;
            userInfo["Ac"] = acl;
            userInfo.Expires.Add(new TimeSpan(0, 30, 0));
        }
        public HttpCookie GetCookie()
        {
            return userInfo;
        }
    }
}