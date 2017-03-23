Feature: Present Landing Page with profile cards	
  As a User
  I want to able to see the profile cards of each speaker containing their name, title, most revelant project, photo and social network links(twitter, linkedIn, facebook).
  So that i get an overview of who are the speakers in the conference.

Scenario: Open Landing Page - View Speaker Names
  Given that i'm on the landing page
  When the page finishes loading
  Then 3 profle cards must be presented, one with the name Gabriel Silva, another with the name Emanuel Silva and the last with the speaker Luis Gomez
	
Scenario: Open Landing Page - View Speaker Photo
  Given that i'm on the landing page
  When the page finishes loading
  Then 3 profle cards must be presented, each one with a valid photo of the speaker
	
Scenario: Open Landing Page - View Speaker Social Networks
  Given that i'm on the landing page
  When the page finishes loading
  Then 3 profle cards must be presented, each one with icons of the major social networks and each icon should rediret to valid link or be disabled 
	
Scenario: Open Landing Page - View Speaker Social Networks Links
  Given that i'm on the landing page
  When I press a social networks icon
  And the icon is enabled
  Then the I should be redirected to the speark page in the  desired social network domain 
	
Scenario: Open Landing Page - View Speaker Relevant Project 
  Given that i'm on the landing page
  When the page finishes loading
  Then 3 profle cards must be presented, each one with the relevant project of the speaker
	
Scenario: Open Landing Page - View Speaker Title
  Given that i'm on the landing page
  When the page is still loading
  Then 3 profle cards must be presented, each one with the title of the speaker
	
Scenario: Open Landing Page - Verify Speakers Data integrity
  Given that i request the speaker profile cards information 
  When the page finishes loading
  Then it should be return a json object containing the following information for each speaker: name, title, photo, social links, relevant work