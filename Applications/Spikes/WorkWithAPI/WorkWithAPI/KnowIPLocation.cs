using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Xml;
using System.Data;

namespace WorkWithAPI
{
    internal class KnowIPLocation
    {
        string key = "2028251614739df0edb5d63e151b1a0e1e823456c22e043d79992d9441249a39";
        internal void GetIPDetails(string ipAddress)
        {
            WebRequest wRequest = WebRequest.Create("http://api.ipinfodb.com/v3/ip-city/?key="+key+"&ip=" + ipAddress+"&format=xml");
            WebProxy wProxy = new WebProxy("http://api.ipinfodb.com/v3/ip-city/?key=" + key + "&ip=" + ipAddress + "&format=xml", true);
            wRequest.Proxy = wProxy;
            wRequest.Timeout = 20000;
            WebResponse wResponse = wRequest.GetResponse();
            XmlDocument xdoc = new XmlDocument();
            xdoc.Load(wResponse.GetResponseStream());
            string savePath = "C:\\Users\\User\\Documents\\GitHub\\IndiaDeals2Day\\IndiaDeals2Day\\Applications\\Spikes\\WorkWithAPI\\WorkWithAPI\\KYIP\\IPDetails" + ".xml";
            xdoc.Save(savePath);
        }
    }
}
