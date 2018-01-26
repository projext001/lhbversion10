﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Helper
{
    public class Validate
    {
        public void LoginSys(String a, String pa)
        {
            CookieHelper ch = new CookieHelper();
            DBHelper dbh = new DBHelper();
            //send value to DBHelper class to validate credentials and get 2 values
            Tuple<Boolean, int, int> t = dbh.UC(a, pa);
            int z = t.Item2;
            if (t.Item1 == true)
            {
                ch.CreateCookie(t.Item3,t.Item2);
                HttpContext.Current.Response.Cookies.Add(ch.GetCookie());
                if (z == 1) { HttpContext.Current.Response.Redirect("~/Pages/Specific/0pos/phome.aspx"); }
                if (z == 2) { HttpContext.Current.Response.Redirect("~/Pages/Specific/1manager/mhome.aspx"); }
                if (z == 3) { HttpContext.Current.Response.Redirect("~/Pages/Specific/2backend/bhome.aspx"); }
                if (z == 4) { HttpContext.Current.Response.Redirect("~/Pages/Specific/2backend/bhome.aspx"); }
            }
            else HttpContext.Current.Response.Redirect("~/error.aspx");
        }

        //Check if access is allowed for a page using this function
        public void PageAcc(int[] a, int b)
        {
            if (!a.Contains(b)) { HttpContext.Current.Response.Redirect("~/error.aspx"); }
        }
    }
}