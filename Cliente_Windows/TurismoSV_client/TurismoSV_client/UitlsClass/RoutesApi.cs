﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TurismoSV_client.UitlsClass.RoutesApi;

    internal class RoutesApi
    {
        static public Dictionary<string, string> Routes;
        static public String HostApi = "http://localhost:5119/api";

       public RoutesApi() {
            Routes = new Dictionary<string, string>();
            Routes.Add("login",HostApi+ "/public/longin");        
            Routes.Add("registro",HostApi+ "/public/newuser");        
            Routes.Add("departamentos",HostApi+ "/public/Departamentos");        
        }

        static public string GetRoute(string key)
        {
            if (Routes.ContainsKey(key))
            {
                return Routes[key];
            }
            else
            {
                return null;
            }
        }




}

