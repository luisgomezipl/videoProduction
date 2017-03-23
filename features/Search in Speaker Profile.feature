Feature:	Search in Speaker Profile
	As a (role)	User
	I want (feature)	to be able to search information about the speakers from each profile card
	So that (benefit)	I can easily find information about the speakers and i can view and compare all the speakers information without be forced to open multiple detailed profile pages

Scenario:	Select keywords to search profile card information - Found information
	Given	that i'm on the landing page
	When	i click some keyword on top right of the page
	Then	the Profile Cards’ content adjusts automatically with the information found.
	
Scenario:	Select keywords to search profile card information - Dont found information
	Given	that i'm on the landing page
	When	i click some keyword on top right of the page
	Then	the Profile Cards’ content adjusts automatically with a message.
	
Scenario:	Write keywords to search profile card information - Found information
	Given	that i'm on the landing page
	When	i write some keyword in the search bar on top left of the page
	Then	the Profile Cards’ content adjusts automatically with the information found.
	
Scenario:	Write keywords to search profile card information - Dont found information
	Given	that i'm on the landing page
	When	i write some keyword in the search bar on top left of the page
	Then	the Profile Cards’ content adjusts automatically with a message.
	
Scenario:	Select Keywords to search profile card information - Verify Speakers Data integrity
	Given	that i request the speaker profile cards information 
	When	the page finishes loading
	Then	it should be return a json object containing the following information for each speaker: name, title, photo, social links, relevant work, working experience, education and training, projects, certifications and awards and the respetive tags for each of this setions