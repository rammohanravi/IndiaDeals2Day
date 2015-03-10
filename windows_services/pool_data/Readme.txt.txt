1. Fist run setup.exe(It will take some time based on ur internet, because it will try to download the dependency .NET Framework 4 client profile from source and will install in ur computer)
2. Once setup.exe finished now install IndiaDeals2DayDataServiceSetup.msi
3. After step 2 the service would have been added to ur system windows services list. 
4. To check step 3 run command services.msc.
5. Now in the list go to service, at this time the service will be in stopped state i.e not in status started.
6. now right click on service -->properties --> Log on --> Select this account-->provide ur system credentials.
7. Dont start service yet. now go to file IndiaDeals2DayDataService.exe.config and open this in textpad. here u can see the database it is pointing to and all other service configurations. feel free to change log file path to map to ur computer location.this log will track the all the activity done by service.
8. Once u updated and saved the config file, now go to service again using services.msc
9.Right click on service -->Properties -->Main-->Change Startup type to automatic-->Click apply and close the dialog box
10.Now right click on service and press action Start
