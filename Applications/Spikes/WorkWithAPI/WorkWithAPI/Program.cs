using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WorkWithAPI
{
    class Program
    {
        static void Main(string[] args)
        {
            //FlipKart fkart = new FlipKart();
            //fkart.ReadFlipKartAPIFeedsAndURLs();
            //Amazon amz = new Amazon();
            //amz.AmazonLookup();
            KnowIPLocation kip = new KnowIPLocation();
            kip.GetIPDetails("1.22.2.81");

        }
        
    }
}
