Feature: Search in Speaker Profile
  As a (role) User
  I want (feature) to be able to search information about the speakers from each profile card
  So that (benefit) I can easily find information about the speakers and i can view and compare all the speakers information without be forced to open multiple detailed profile pages

Scenario Outline: Select a <tag> to search profile card information - Found information
  Given that i'm on the landing page
  When i click in a search <tag> on top of the page
  Then  on profile card's <speaker> content adjusts automatically with the <information> found related with the tag selected.
Examples:
  | tag | speaker | information |
  | Computer Network | Emanuel | "business": "Internship at the College Conciliar de Maria Immaculada - Leiria","job": "Intern","activities": "Maintenance and expansion of existing computer network in college, Technical support","tags": "Computer Network"|
  | Master | Emanuel | "place": "Polytechnic Institute of Leiria","title": "Mobile Computing","level": "Master Degree","tags": "Master"|
  | Bacherlor | Emanuel | "place": "Polytechnic Institute of Leiria","title": "Computer Science","level": "Bacherlor Degree","tags": "Bacherlor"|
  | Raspberry Pi | Emanuel | "name": "Silent Television","place": "Polytechnic Institute of Leiria","description": "This work aims at creating a product which would allow the users of a commercial space to hear the sound of a television in that space even if there was a great amount of noise. For this purpose, we developed an equipment that captures and conveys the sound of the television to Android smartphones/tablets. This equipment is connected to the television and the router on-site ad conveys the audio through the network to the Android devices, also sending some information on the television and transmission setups to these devices.","tags": "Raspberry Pi, Java"|
  | Java | Emanuel | "name": "Silent Television","place": "Polytechnic Institute of Leiria","description": "This work aims at creating a product which would allow the users of a commercial space to hear the sound of a television in that space even if there was a great amount of noise. For this purpose, we developed an equipment that captures and conveys the sound of the television to Android smartphones/tablets. This equipment is connected to the television and the router on-site ad conveys the audio through the network to the Android devices, also sending some information on the television and transmission setups to these devices.","tags": "Raspberry Pi, Java"|
  | Java | Emanuel | "name": "Smart Garden","place": "Polytechnic Institute of Leiria","description": "This project consists in the implementation of an automatic irrigation system that uses several sensors in order to decide the best irrigation plan for the garden/zone in question, as well as an application for users that allows to change the settings and to visualize State and garden related information in real time.","tags": "Arduino, Java, Web Development"|
  | Arduino | Emanuel | "name": "Smart Garden","place": "Polytechnic Institute of Leiria","description": "This project consists in the implementation of an automatic irrigation system that uses several sensors in order to decide the best irrigation plan for the garden/zone in question, as well as an application for users that allows to change the settings and to visualize State and garden related information in real time.","tags": "Arduino, Java, Web Development"|
  | Web Development | Emanuel | "name": "Smart Garden","place": "Polytechnic Institute of Leiria","description": "This project consists in the implementation of an automatic irrigation system that uses several sensors in order to decide the best irrigation plan for the garden/zone in question, as well as an application for users that allows to change the settings and to visualize State and garden related information in real time.","tags": "Arduino, Java, Web Development"|
	
Scenario: Select a keyword (tag) to search profile card information - Dont found information
  Given that i'm on the landing page
  When i click in a search tag on top of the page
  Then profile cards’ content that dont have information for this tag show a message "No information found".
	
Scenario: Write keywords to search profile card information - Found information
  Given that i'm on the landing page
  When i write some keywords in the search bar on top of the page
  Then the profile cards’ content adjusts automatically with the information found related to the words searched.
	
Scenario: Write keywords to search profile card information - Dont found information
  Given that i'm on the landing page
  When i write some keywords in the search bar on top of the page
  Then the profile cards’ content that dont have information for the keywords searched show a message "No information found".
	
Scenario: Select Keywords to search profile card information - Verify Speakers Data integrity
  Given that i request the speaker profile cards information 
  When the page finishes loading
  Then it should be return a json object containing the following information for each speaker: name, title, photo, social links, relevant work, working experience, education and training, projects, certifications and awards and the respetive tags for each of this setions