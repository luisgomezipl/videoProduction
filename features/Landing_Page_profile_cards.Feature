Feature: Present Landing Page with profile cards	
  As a User
  I want to able to see the profile cards of each speaker containing their name, title, most revelant project, photo and social network links(twitter, linkedIn, facebook).
  So that i get an overview of who are the speakers in the conference.

Background:
  Given that i'm on the landing page
  When the page finishes loading

Scenario Outline: Landing Page - View Speaker Names
  Then the profle card of the <speaker> must be presented with the name of the speaker <name>

Examples:
 | speaker |      name     |
 | Gabriel | Gabriel Silva |
 | Emanuel | Emanuel Silva |
 | Luis    | Luis Gomez    |
  
Scenario Outline: Landing Page - View Speaker Photo
  Then the profle card of the <speaker> must be presented with the photo of speaker <photo>
  
Examples:
 | speaker |    name     |
 | Gabriel | gabriel.jpg |
 | Emanuel | emanuel.jpg |
 | Luis    | luis.jpg    |
 
Scenario Outline: Open Landing Page - View Speaker Title
  Then the profle card of the <speaker> must be presented with the <title>
  
Examples:
 | speaker |    title     |
 | Gabriel | Software engineer |
 | Emanuel | Computer Engineer |
 | Luis    | Computational Systems Engineer |
 
Scenario Outline: Open Landing Page - View Speaker short bio 
  Then the profle card of the <speaker> must be presented with the <short bio>
  
Examples:
 | speaker | short bio |
 | Gabriel | I am a computer science student for 3 years, specializing in information systems and experienced in javascript, java and C#. |
 | Emanuel | I am student of the Master in Computer Engineering - Mobile Computing at the Polytechnic of Leiria - IPL. I have knowledge in computer networks, Java, JavaScript and Arduino programming. |
 | Luis    | I am a full stack developer with 2 years of experience. Involving with java, javascript and php.|
 
Background:
  Given that i'm on the landing page

Scenario Outline: Landing Page - View Speaker Enabled Social Networks
  And the <speaker> has a profile page on the <social network>
  When the page finishes loading
  Then the profle card of the <speaker> must be presented with an enabled icon of the <social network> redirecting to <link>
  
Examples:
 | speaker | social network | link    |
 | Emanuel | facebook       | "https://www.facebook.com/emanuel.silva.146" |
 | Luis    | linkedIn       | "https://www.linkedin.com/in/luiscisnerosg/" |
 | Luis    | facebook       | "https://www.facebook.com/tiko.Luis.Cisneros" |
 | Luis    | twitter        | "https://twitter.com/TikoCisneros"|
 
Scenario Outline: Landing Page - View Speaker Disabled Social Networks
  And the <speaker> hasn't a profile page on the <social network>
  When the page finishes loading
  Then the profle card of the <speaker> must be presented with an disabled icon of the <social network>
  
Examples:
 | speaker | social network |
 | Gabriel | linkedIn       |
 | Gabriel | facebook       |
 | Gabriel | twitter        |
 | Emanuel | linkedIn       |
 | Emanuel | twitter        |

	
Scenario Outline: Landing Page - Verify Enabled Redirect Speaker Social Networks Links
  And the icon of the <social network> for the <speaker> is enabled
  When I press a social network <icon> of the <speaker>
  Then the I should be redirected to the <speaker> page in the <social network> 
  
Examples:
 | speaker | social network |
 | Emanuel | facebook       |
 | Luis    | linkedIn       |
 | Luis    | facebook       |
 | Luis    | twitter        |
 
Scenario Outline: Landing Page - Verify Disabled Redirect Speaker Social Networks Links
  And the icon of the <social network> for the <speaker> is disabled
  When I press a social network <icon> of the <speaker>
  Then i shouldn't be redirected to any page
  
Examples:
 | speaker | social network |
 | Gabriel | linkedIn       |
 | Gabriel | facebook       |
 | Gabriel | twitter        |
 | Emanuel | linkedIn       |
 | Emanuel | twitter        |
	
Scenario Outline: Landing Page - Verify Speaker Data integrity
  Given that i request the speaker profile cards information 
  When the page finishes loading
  Then it should be return a json object containing the following information for the <speaker>: name, title, photo, social links, short bio
  
  Examples:
 | speaker |
 | Gabriel |
 | Emanuel |
 | Luis    |