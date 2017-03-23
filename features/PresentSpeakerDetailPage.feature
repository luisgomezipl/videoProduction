Feature:	Present Speaker Detail Page 
	As a		User
	I want 		to able to see the detailed information about one specific speaker (photo, working experience, education and training, projects, certifications and awards)
	So that		i may know the projects and accomplishments of one specific speaker

Scenario:	Speaker Detail Page - Verify Speakers Data integrity
	Given	that i'm on the landing page
	When	i click on button "more info" on a profile card
	Then	it should be return a json object containing the following information for each speaker: photo,name, social network links, working experience, education and training, projects, certifications and awards.

Scenario:	Speaker Detail Page - Check speakers photo
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the photo of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers name
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the name of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers title
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the title of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers social networks
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the social networks icons of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers work experience
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the list of work experience of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers education
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the list of personal education of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers projects
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the list of projects of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers certifications
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the list of certifications of the speaker selected.
	
Scenario:	Speaker Detail Page - Check speakers awards
	Given	i clicked on button "more info" on a profile card
	When	the speakers detail page opened
	Then	the page should be display the list of awars of the speaker selected.
	
Scenario:	Select Keywords to change profile card information - Verify Speakers Data integrity
	Given	that i request the speaker profile cards information 
	When	the page finishes loading
	Then	it should be return a json object containing the following information one speaker: name, title, photo, social links, relevant work, working experience, education and training, projects, certifications and awards