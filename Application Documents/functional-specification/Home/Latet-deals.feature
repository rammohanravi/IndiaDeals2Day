Feature: Latest-deals feature , title , product name and Price are mandatory 

Scenario: User clicks on Deals in Latest Deals bar
	When User clicks on the Deals button in Latest Deals bar
	Then Page should redirect to the Deals-list page with the criteria of displaying deals in Latest sorted order

Scenario: User viewing the Latest deals section
	Given the database with the deals of dates created with different ranges  
	When User positions to Latest deals place in Home page 
	Then Deals with the Latest date to be displayed 
	
Scenario: User viewing the Latest deals section
	Given the database with the two deals of date with same  
	When User positions to Latest deals place in Home page 
	Then Two Deals with the Latest date to be displayed in Home page

Scenario: User viewing the latest deals section
	Given the database with the Latest date but the deal is inactive 
	When User positions to Latest deals place in Home page 
	Then Deals which are inactive should not be displayed
	
Scenario: User viewing the Latest deals section with maximum title in database
	Given the database with the Latest date but the deal title is maximum length 
	When User positions to Latest deals place in Home page 
	Then title should be restricted to the maximum of X characters in Home page. As the title length varies the image positions varies it should be restricted to particular character length.

Scenario: User viewing the Latest deals section with maximum length in product name
	Given the database with the Latest date but the deal product name is maximum length 
	When User positions to Latest deals place in Home page 
	Then product name should be restricted to the maximum of X characters in Home page. As the product name varies the image positions varies it should be restricted to particular character length.
	
Scenario: User viewing the Latest deals section with no image
	Given the database with the Latest date but the deal doesnt have images 
	When User positions to Latest date deals place in Home page 
	Then Deal should be displayed with No image and with the rest of the details
	
Scenario: User clicks on the Deal in the Latest section
	Given the database with the Latest Date and with other dates deals 
	When User clicks on the deal which is in latest date section 
	Then It should re-direct to the Deal-details page with the details of the selected Deal

Scenario: User enters the Latest deal in the database and moderator yet to approve
	Given the database with the Latest Date and with other date deals 
	When User positions to Latest deals place in Home page  
	Then The Deal should not be displayed as it is not approved by the moderator	

Scenario: User enters the Latest deal in the database and moderator approved
	Given the database with the Latest Date and with other date deals 
	When User positions to Latest date place in Home page  
	Then The Deal should be displayed immediately after the approval by the moderator	