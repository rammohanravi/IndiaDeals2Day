Feature: Hirated-deals feature , title , product name and Price are mandatory 

Scenario: User clicks on Deals in Hi-Rated bar
	When User clicks on the Deals button in Hi-Rated bar
	Then Page should redirect to the Deals-list page with the criteria of displaying deals in Hi-rated sorted order

Scenario: User viewing the Hi-rated deals section
	Given the database with the deals of volts with different ranges  
	When User positions to hirated deals place in Home page 
	Then Deals with the highest volts to be displayed 
	
Scenario: User viewing the Hi-rated deals section
	Given the database with the two deals of volts with same ranges and highest volts 
	When User positions to hirated deals place in Home page 
	Then Two Deals with the highest volts to be displayed in Home page
	
Scenario: User viewing the Hi-rated deals section
	Given the database with the highest volts but the deal is inactive 
	When User positions to hirated deals place in Home page 
	Then Deals which are inactive should not be displayed
	
Scenario: User viewing the Hi-rated deals section with maximum title in database
	Given the database with the highest volts but the deal title is maximum length 
	When User positions to hirated deals place in Home page 
	Then title should be restricted to the maximum of X characters in Home page. As the title length varies the image positions varies it should be restricted to particular character length.

Scenario: User viewing the Hi-rated deals section with maximum length in product name
	Given the database with the highest volts but the deal product name is maximum length 
	When User positions to hirated deals place in Home page 
	Then product name should be restricted to the maximum of X characters in Home page. As the product name varies the image positions varies it should be restricted to particular character length.
	
Scenario: User viewing the Hi-rated deals section with no image
	Given the database with the highest volts but the deal doesnt have images 
	When User positions to hirated deals place in Home page 
	Then Deal should be displayed with No image and with the rest of the details
	
Scenario: User clicks on the Deal in the Hi-Rated section
	Given the database with the highest volts and with other volts deals 
	When User clicks on the deal which is in Hi-Rated section 
	Then It should re-direct to the Deal-details page with the details of the selected Deal

Scenario: User enters the hi rated deal in the database and moderator yet to approve
	Given the database with the highest volts and with other volts deals 
	When User positions to hirated deals place in Home page  
	Then The Deal should not be displayed as it is not approved by the moderator	

Scenario: User enters the hi rated deal in the database and moderator approved
	Given the database with the highest volts and with other volts deals 
	When User positions to hirated deals place in Home page  
	Then The Deal should be displayed immediately after the approval by the moderator	