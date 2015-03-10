Feature: Feedback feature

Scenario: User enters feedback
	When User chovers on the feedback button in Home page
	Then Feedback form to be displayed in the page

Scenario: User enters the feedback with the required details
	Given Name, Email address , Service Category and Comments 
	When User Share button 
	Then Feedback should be submitted with an proper message and redirects to Home page
	
Scenario: User enters the feedback with details of Empty Name , Email address , service cateogry and Comments
	Given Empty Name, proper Email address ,proper Service Category and proper Comments 
	When User Share button 
	Then Error message should be thrown stating the Name should not be empty
	
Scenario: User enters the feedback with details of Name ,Empty Email address , service cateogry and Comments
	Given proper Name, Empty Email address ,proper Service Category and proper Comments 
	When User Share button 
	Then Error message should be thrown stating the Email should not be empty
	
Scenario: User enters the feedback with details of Name ,Email address ,No selected service cateogry and Comments
	Given proper Name, Proper Email address ,No selected Service Category and proper Comments 
	When User Share button 
	Then Error message should be thrown stating the Service Category to be selected
	
Scenario: User enters the feedback with details of Name ,Email address ,selected service cateogry and empty Comments
	Given proper Name, Proper Email address ,selected Service Category and Empty Comments 
	When User Share button 
	Then Error message should be thrown stating to enter the comments
	
Scenario: User enters the feedback with details with Empty Name ,Empty Email address ,Empty selected service cateogry and empty Comments
	Given Empty Name, Empty Email address ,No selected Service Category and Empty Comments 
	When User Share button 
	Then Error message/indication should be shown marking the mandatory parameters

Scenario: User clicks contactus in Feedback Form
	Given Empty Name, Empty Email address ,No selected Service Category and Empty Comments 
	When User clicks Contacus button 
	Then Page should be redirected to the Contact us page	

	Scenario: User clicks ASkShare in Feedback Form
	Given Empty Name, Empty Email address ,No selected Service Category and Empty Comments 
	When User clicks ASkShare button 
	Then Page should be redirected to the ASkShare us page	