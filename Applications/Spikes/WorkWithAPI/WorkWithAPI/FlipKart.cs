using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Net;
using System.Xml;


namespace WorkWithAPI
{
    internal class FlipKart
    {
        string MapsKey = "ravisures";
        static string DataSourceID = "8dc2e42936284c418135793bf9d42185";
        internal  void ReadFlipKartAPIFeedsAndURLs()
        {
            string requestUrl = string.Format("https://affiliate-api.flipkart.net/affiliate/api/{0}.xml",DataSourceID);
            XmlDocument xResponse = GetXMLResponse(requestUrl);
            xResponse.Save(@"C:\Users\User\Documents\GitHub\IndiaDeals2Day\IndiaDeals2Day\Applications\Spikes\WorkWithAPI\WorkWithAPI\FlipKart\ApiFeedsnUrls.xml");
            ProcessEntityElements(xResponse);
        }

        private void ProcessEntityElements(XmlDocument xResponse)
        {
            int i = 1;
            XDocument xdoc = XDocument.Parse(xResponse.OuterXml);
            var descendents = from x in xdoc.Descendants("apiListings").Descendants("entry").Descendants("value").Descendants("availableVariants").Descendants("entry").Descendants("value") select x;
            using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\Users\User\Documents\GitHub\IndiaDeals2Day\IndiaDeals2Day\Applications\Spikes\WorkWithAPI\WorkWithAPI\FlipKart\AvailableProductGroups.txt", true))
            {
                file.WriteLine("Total Number of type of feeds :{0}", descendents.Descendants("get").Count());
                file.WriteLine("Product &&&&&&&&&&&&&&& URL");
            }
            foreach (XElement element in descendents)
            {
                string productUrl = (from x in element.Descendants("get") select x.Value).Single();                
                string productName = (from x in element.Descendants("resourceName") select x.Value).Single();
                //ReadProductData(productUrl,productName);
                      
            using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\Users\User\Documents\GitHub\IndiaDeals2Day\IndiaDeals2Day\Applications\Spikes\WorkWithAPI\WorkWithAPI\FlipKart\AvailableProductGroups.txt", true))
            {                
                file.WriteLine("{0}" + ":" + "{1}", productName, productUrl);                
            }
            }
            foreach (XElement element in descendents)
            {
                string productUrl = (from x in element.Descendants("get") select x.Value).Single();
                string productName = (from x in element.Descendants("resourceName") select x.Value).Single();
                ReadProductData(productUrl, productName);
                Console.WriteLine("{0}.{1}+ Done", i,productName);
                i++;
            }
        }

        private void ReadProductData(string productUrl,string productName)
        {
            XmlDocument xProductResponse = GetXMLResponse(productUrl);
            string savePath = "C:\\Users\\User\\Documents\\GitHub\\IndiaDeals2Day\\IndiaDeals2Day\\Applications\\Spikes\\WorkWithAPI\\WorkWithAPI\\FlipKart\\"+productName+".xml";
            xProductResponse.Save(savePath);

        }

        private XmlDocument GetXMLResponse(string requestUrl)
        {
            HttpWebRequest wRequest = WebRequest.Create(requestUrl) as HttpWebRequest;
            wRequest.Headers["Fk-Affiliate-Id"] = MapsKey;
            wRequest.Headers["Fk-Affiliate-Token"] = DataSourceID;
            HttpWebResponse wResponse = wRequest.GetResponse() as HttpWebResponse;
            XmlDocument xDoc = new XmlDocument();
            xDoc.Load(wResponse.GetResponseStream());
            return xDoc;
        }
    }
}
