Feature: Search in Speaker Profile
  As a User
  I want to be able to search information about the speakers from each profile card
  So that I can easily find information about the speakers and i can view and compare all the speakers information without be forced to open multiple detailed profile pages

Scenario Outline: Select a tag to search profile card information - Found information
  Given that i'm on the landing page
  And the <speaker> as information related to the <tag>
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
  
  | Assistant | Gabriel | "business": "Polytechnic of Leiria - ESTG","job": "Guest assistant","activities": "Lecturing of practical classes of curricular units of Algorithms and Data Structures and Security Topics.","tags": "Assistant, IPL" |
  | IPL | Gabriel | "business": "Polytechnic of Leiria - ESTG","job": "Guest assistant","activities": "Lecturing of practical classes of curricular units of Algorithms and Data Structures and Security Topics.","tags": "Assistant, IPL" |
  | Master | Gabriel | "place": "Polytechnic of Leiria","title": "MOBILE COMPUTING","level": "MASTER DEGREE","tags": "Master" |
  | Bacherlor | Gabriel | "place": "Polytechnic of Leiria","title": "COMPUTER SCIENCE","level": "BACHELOR DEGREE","tags": "Bacherlor" |
  | High School | Gabriel | "place": "Escola Secundária Raul Proença, Caldas da Rainha, Portugal","title": "Course of science and technology","level": "HIGH SCHOOL","tags": "High School" |
  | A.I | Gabriel | "name": "Evolution of Virtual Creatures","place": "Polytechnic of Leiria","description": "The developed application allows to evolve the form and behaviors of virtual creatures. To this end a genetic algorithm has been implemented that evolves neural networks that control the creatures. These creatures are created and simulated in the Unity3D game engine.","tags": "A.I, Unity" |
  | Unity | Gabriel | "name": "Evolution of Virtual Creatures","place": "Polytechnic of Leiria","description": "The developed application allows to evolve the form and behaviors of virtual creatures. To this end a genetic algorithm has been implemented that evolves neural networks that control the creatures. These creatures are created and simulated in the Unity3D game engine.","tags": "A.I, Unity" |
  | Big Data | Gabriel | "title": "Workshop IBM: Big Data","description": "Held on July 12 and 13 at the School of Technology and Management of the Polytechnic Institute of Leiria, lasting eleven hours.","tags": "Big Data, IBM" |
  | IBM | Gabriel | "title": "Workshop IBM: Big Data","description": "Held on July 12 and 13 at the School of Technology and Management of the Polytechnic Institute of Leiria, lasting eleven hours.","tags": "Big Data, IBM" |
  | Web Development | Luis | "business": "Yachay E.P.","job": "Web programmer","activities": "Development of web applications, web services, web apps.","tags": "Web Development, Web services" |
  | Web Services | Luis | "business": "Yachay E.P.","job": "Web programmer","activities": "Development of web applications, web services, web apps.","tags": "Web Development, Web services" |
  | Web Development | Luis |"business": "Nemecis Solutions","job": "Website development.","activities": "Development of static and dynamic websites (html, joomla, wordpress).","tags": "Web Development, joomla" |
  
  | Joomla | Luis |"business": "Nemecis Solutions","job": "Website development.","activities": "Development of static and dynamic websites (html, joomla, wordpress).","tags": "Web Development, joomla" |
  | Bachelor | Luis | "place": "Universidad Técnica del Norte","title": "Computational Systems Engineer","level": "Bachelor","tags": "Bachelor" |
  | Android | Luis | "name": "Ibarra Tourism App","place": "Ibarra - Ecuador","description": "Android Tourism App building with Apache Cordova and web technologies.","tags": "Android" |
  | Cisco | Luis |"title": "Cisco IT ESSENTIALS","description": "Universidad Técnica del Norte, Academia CISCO / Enero de 2013","tags": "Cisco" |
  | PHP | Luis | "title": "Certificate of Completion: PHP Course","description": "SoloLearn Licencia 1059-593722 / February 2016","tags": "PHP" |
  | JavaScript | Luis | "title": "Certificate of Completion: JavaScript Fundamentals","description": "SoloLearn Licencia 1024-593722 / February 2016","tags": "JavaScript" |
  | SQL | Luis | "title": "Certificate of Completion: SQL Fundamentals","description": "SoloLearn Licencia 1060-593722 / February 2016","tags": "SQL" |
  | HTML | Luis | "title": "Certificate of Completion: HTML Fundamentals","description": "SoloLearn Licencia 1014-593722 / February 2016","tags": "HTML" |
  | CSS | Luis | "title": "Certificate of Completion: CSS Fundamentals","description": "SoloLearn Licencia 1023-593722 / February 2016","tags": "CSS" |
  | Java | Luis | "title": "Certificate of Completion: Java Course","description": "SoloLearn Licencia 1068-593722 / February 2016","tags": "Java" |
	
Scenario Outline: Select a tag to search profile card information - Dont found information
  Given that i'm on the landing page
  And the <speaker> as no information related to the <tag>
  When i click in a search <tag> on top of the page
  Then profile card content of the <speaker> that dont have information for this <tag> show a <message>.
Examples:
  | tag | speaker | message |
  | IMB | Emanuel | No information found |
  | IMB | Luis | No information found |
	
Scenario Outline: Write keyword to search profile card information - Found information
  Given that i'm on the landing page
  And the <keyword> is contained in <speaker> sections about education, projects and certifications
  When i write <keyword> in the search bar on top of the page
  Then the profile card content of the <speaker> adjusts automatically with the <information> found related to the words searched.
Examples:
  | keyword | speaker | information |
  | Ecuador | Luis | "name": "Ibarra Tourism App","place": "Ibarra - Ecuador","description": "Android Tourism App building with Apache Cordova and web technologies.","tags": "Android" |
  | game | Gabriel | "name": "Evolution of Virtual Creatures","place": "Polytechnic of Leiria","description": "The developed application allows to evolve the form and behaviors of virtual creatures. To this end a genetic algorithm has been implemented that evolves neural networks that control the creatures. These creatures are created and simulated in the Unity3D game engine.","tags": "A.I, Unity" |
  | raspberry | Emanuel | "name": "Silent Television","place": "Polytechnic Institute of Leiria","description": "This work aims at creating a product which would allow the users of a commercial space to hear the sound of a television in that space even if there was a great amount of noise. For this purpose, we developed an equipment that captures and conveys the sound of the television to Android smartphones/tablets. This equipment is connected to the television and the router on-site ad conveys the audio through the network to the Android devices, also sending some information on the television and transmission setups to these devices.","tags": "Raspberry Pi, Java"|
	
Scenario Outline: Write keyword to search profile card information - Dont found information
  Given that i'm on the landing page
  And the <keyword> is not contained in <speaker> sections about education, projects and certifications
  When i write <keyword> in the search bar on top of the page
  Then the profile card content of the <speaker> that dont have information for the <keyword> searched show a <message>.
Examples:
  | keyword | speaker | message|
  | Ecuador | Emanuel | No information found |
  | Ecuador | Gabriel | No information found |
  | game | Emanuel | No information found |
  | game | Luis | No information found |
  | raspberry | Gabriel | No information found |
  | raspberry | Luis | No information found |
	
Scenario: Select Keywords to search profile card information - Verify Speakers Data integrity
  Given that i request the speaker profile cards information 
  When the page finishes loading
  Then it should be return a json object containing the following information for each speaker: working experience, education and training, projects, certifications and the respetive tags for each of this setions