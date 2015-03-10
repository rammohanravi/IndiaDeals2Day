Feature: Login feature

Scenario: User log in to the ID2D with correct userid and password in Home page
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be sucessfull and page redirects to the home page with username displayed on the page
	
Scenario: User log in to the ID2D with userid and password with special characters
	Given username and password like the characters of ( _ , / )
	When User clicks on Login button 
	Then Login should be failure stating the invalid username and/or Password
	
Scenario: User log in to the ID2D with correct userid and wrong password 
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed
	
Scenario: User log in to the ID2D with incorrect userid and correct password 
	Given username not exists 
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed
	
Scenario: User log in to the ID2D with incorrect userid and incorrect password 
	Given username and password not exists 
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed
	
Scenario: User log in to the ID2D with empty userid and password 
	Given username is empty and password not exists 
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed

Scenario: User log in to the ID2D with userid and  empty password 
	Given username is given and password is empty 
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed	
	
Scenario: User log in to the ID2D with lengthy userid and  password 
	Given username is given as 50 characters and password is empty 
	When User clicks on Login button 
	Then Login should be unsucessfull and proper error message should be displayed as wrong userid as login has length restrictions

Scenario: User log in to the ID2D with maximum length userid and  password 
	Given username is given as maximum length characters and password is empty 
	When User clicks on Login button 
	Then Login should be sucessfull and redirects to the page it is in current. The username displayed in menu bar should be of fixed size of 9 characters. 

Scenario: User log in to the ID2D with correct userid and password in Deals page
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be sucessfull and page redirects to the Deals page with username displayed on the page	
	
Scenario: User log in to the ID2D with correct userid and password in Coupons page
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be sucessfull and page redirects to the Coupons page with username displayed on the page	

Scenario: User log in to the ID2D with correct userid and password in Ask-Share page
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be sucessfull and page redirects to the Ask-Share page with username displayed on the page

Scenario: User log in to the ID2D with correct userid and password 
	Given username and password of already registered user
	When User clicks on Register button 
	Then Page should redirect to the Register page
	
Scenario: User log in to the ID2D with correct userid and password 
	Given username and password of already registered user
	When User clicks on forgot password button 
	Then Forgot password form should be popped up in the page

Scenario: User log in to the ID2D with correct userid and password of a blocked user
	Given username and password of already registered user
	When User clicks on Login button 
	Then Proper error message should be displayed

Scenario: User log in to the ID2D with correct userid and password is expired by 3 times wrong entries
	Given username and password of already registered user
	When User clicks on Login button 
	Then Proper error message should be displayed for the password reset	
	
Scenario: User log in to the ID2D with correct userid and password after the password reset
	Given username and password of already registered user
	When User clicks on Login button 
	Then Login should be sucessfull and page should redirect to the current page with the username displayed in menu
	
Scenario: User log in to the ID2D with userid and password of less than minimum length 
	Given username and password are less than minimum length
	When User clicks on Login button 
	Then Login should be unsucessfull and error message should be shown
	
Scenario: User log in to the ID2D with correct userid and password of less than minimum length 
	Given correct username and password are less than minimum length
	When User clicks on Login button 
	Then Login should be unsucessfull and error message should be shown
	
Scenario: User log in to the ID2D with userid of less than minimum length and correct password 
	Given username with less than minimum length and correct password
	When User clicks on Login button 
	Then Login should be unsucessfull and error message should be shown

Scenario: Login form display in Home page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button

Scenario: Login form display in Deals page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button
   
Scenario: Login form display in Deals-list page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button

Scenario: Login form display in Coupons page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button   
   
Scenario: Login form display in Deal-details page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button
   
Scenario: Login form display in ASk-Share page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button
   
Scenario: Login form display in Ask-Share-details page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button

Scenario: Login form display in Contactus page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button
   
Scenario: Login form display in FAQ's page
   When User clicks on Login button in home page
   Then Login form to be displayed below the button
   
   
