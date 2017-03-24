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
 | Gabriel | gabriel.png |
 | Emanuel | emanuel.png |
 | Luis    | luis.png    |
 
Scenario: Open Landing Page - View Speaker Title
  Then the profle card of the <speaker> must be presented with the <title>
  
Examples:
 | speaker |    title     |
 | Gabriel | Software engineer |
 | Emanuel | Computer Engineer |
 | Luis    | Computational Systems Engineer |
 
Scenario: Open Landing Page - View Speaker short bio 
  Then the profle card of the <speaker> must be presented with the <short bio>
  
Examples:
 | speaker | short bio |
 | Gabriel | I am a computer science student for 3 years, specializing in information systems and experienced in javascript, java and C#. |
 | Emanuel | I am student of the Master in Computer Engineering - Mobile Computing at the Polytechnic of Leiria - IPL. I have knowledge in computer networks, Java, JavaScript and Arduino programming. |
 | Luis    | I am a full stack developer with 2 years of experience. Involving with java, javascript and php.|
	
Scenario: Landing Page - View Speaker Social Networks
  Then the profle card of the <speaker> must be presented with an <state> icon of the <social network> redirecting to <link>
  
Examples:
 | speaker |   state  | social network | link    |
 | Gabriel | disabled | linkedIn       | No link |
 | Gabriel | disabled | facebook       | No link |
 | Gabriel | disabled | twitter        | No link |
 | Emanuel | disabled | linkedIn       | No link |
 | Emanuel | enabled  | facebook       | "LINKKKK PLZZZ" |
 | Emanuel | disabled | twitter        | No link |
 | Luis    | enabled  | linkedIn       | "LINKKKK PLZZZ" |
 | Luis    | enabled  | facebook       | "LINKKKK PLZZZ" |
 | Luis    | enabled  | twitter        | "LINKKKK PLZZZ"|

	
Scenario: Open Landing Page - View Speaker Social Networks Links
  Given that i'm on the landing page
  When I press a social network <icon>
  And the <icon> is <state>
  Then the I should be <result> redirected to the <speaker> page in the <social network> 
  
Examples:
 | speaker |   state  | social network | result      |
 | Gabriel | disabled | linkedIn       | not         |
 | Gabriel | disabled | facebook       | not         |
 | Gabriel | disabled | twitter        | not         |
 | Emanuel | disabled | linkedIn       | not         |
 | Emanuel | enabled  | facebook       | succesfully |
 | Emanuel | disabled | twitter        | not         |
 | Luis    | enabled  | linkedIn       | succesfully |
 | Luis    | enabled  | facebook       | succesfully |
 | Luis    | enabled  | twitter        | succesfully |
	
Scenario: Open Landing Page - Verify Speakers Data integrity
  Given that i request the speaker profile cards information 
  When the page finishes loading
  Then it should be return a json object containing the following information for each speaker: name, title, photo, social links, relevant work