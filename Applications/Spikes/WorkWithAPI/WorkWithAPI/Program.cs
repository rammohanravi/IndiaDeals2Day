﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WorkWithAPI
{
    class Program
    {
        static void Main(string[] args)
        {
            FlipKart fkart = new FlipKart();
            fkart.ReadFlipKartAPIFeedsAndURLs();
        }
        
    }
}
