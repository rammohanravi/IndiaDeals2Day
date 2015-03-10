Feature: Deals by Category 

Scenario: User clicks on the View All Deals button
	When User clicks on the view All Deals button
	Then the page should be redirected to the Deals-list page with the default option category selected as All Deals
	
Scenario: User hovers on the Electronics image
	When User hovers on the electronics image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the Electronics image 
	When User hovers on the electronics image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the Electronics image 
	When User hovers on the electronics image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen

Scenario: User hovers on the Home&Kitchen image
	When User hovers on the Home&Kitchen image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the Home&Kitchen image 
	When User hovers on the Home&Kitchen image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the Home&Kitchen image 
	When User hovers on the Home&Kitchen image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen
	
Scenario: User hovers on the Food&Drinks image
	When User hovers on the Food&Drinks image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the Food&Drinks image 
	When User hovers on the Food&Drinks image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the Food&Drinks image 
	When User hovers on the Food&Drinks image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen
	
Scenario: User hovers on the KidsZone image
	When User hovers on the KidsZone image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the KidsZone image 
	When User hovers on the KidsZone image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the KidsZone image 
	When User hovers on the KidsZone image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen
	
Scenario: User hovers on the Books & Stationery image
	When User hovers on the Books & Stationery image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the Books & Stationery image 
	When User hovers on the Books & Stationery image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the Books & Stationery image 
	When User hovers on the Books & Stationery image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen
	
Scenario: User hovers on the Fashion & Jewelery image
	When User hovers on the Fashion & Jewelery image
	Then the category of the Deal should be displayed and VIEW DEALS options should be overed

Scenario: User hovers on the Fashion & Jewelery image 
	When User hovers on the Fashion & Jewelery image and clicks on the VIEWDEALS 
	Then the page should redirect to the Deals-list page with default category slected as Electronics

Scenario: User hovers on the Fashion & Jewelery image 
	When User hovers on the Fashion & Jewelery image and clicks on the image not on the VIEW DEALS 
	Then Nothing should heppen