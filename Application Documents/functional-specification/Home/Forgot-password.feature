Feature: Forgot-password feature

Scenario: User clicks on forgot password
	When User clicks on Login button and then clicks on forgot password
	Then forgotpassword popup should be displayed

Scenario: User resets password with correct username and DOB
	Given username and DOB of already registered user
	When User clicks on Get password button 
	Then Proper message should be shown - stating the password is sent to your mail
	
Scenario: User tries resets password with wrong username and DOB
	Given wrong username and DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown 
	
Scenario: User tries resets password with correct username and wrong DOB
	Given Correct username and wrong DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown

Scenario: User tries resets password with empty username and DOB
	Given empty username and wrong DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown
	
Scenario: User tries resets password with minimum length of username and DOB
	Given minimum length of username and DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown
	
Scenario: User tries resets password with more than maximum length username and DOB
	Given username with maximum length and wrong DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown saying the restriction of maximum length of the user
	
Scenario: User tries resets password with special characters in username and DOB
	Given username with special characters and wrong DOB 
	When User clicks on Get password button 
	Then Proper Error message should be shown saying the restriction of special characters