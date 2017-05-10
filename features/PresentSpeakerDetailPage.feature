Feature: Present Speaker Detail Page 
 As a  User
 I want   to able to see the detailed information about one specific speaker (photo, working experience, education and training, projects, certifications and awards)
 So that  i may know the projects and accomplishments of one specific speaker

Scenario: Speaker Detail Page - Verify Speakers Data integrity
 Given that i'm on the landing page
 When i click on button "more info" on a profile card
 Then it must be return a json object containing the following information for each speaker: photo,name, social network links, working experience, education and training, projects, certifications and awards.

Scenario: Speaker Detail Page - Menu and Back Button
 Given i clicked on button "more info" on a profile card
 When the speakers detail page opened
 Then the menu must display with a back button and links to navigate for this sections: home, resume (education, working experience and certifications), and  relevant projects.

Scenario Outline: Speaker Detail Page - Check speakers photo
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display the photo conctent in <image>.

Examples:

|  speaker  | image       |
|  Luis     | luis.jpg    |
|  Gabriel  | gabriel.jpg |
|  Emanuel  | emanuel.jpg |
 
Scenario Outline: Speaker Detail Page - Check speakers name
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display the <name> of the speaker selected.

Examples:

|  speaker  | name                                 |
|  Luis     | Luis Alberto Cisneros Gómez          |
|  Gabriel  | Gabriel Quaresma Moreira da Silva    |
|  Emanuel  | EmanuelQuaresma Moreira da Silva     |
 
Scenario Outline: Speaker Detail Page - Check speakers title
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display the <title> of the speaker selected.

Examples:

|  speaker  | title                          |
|  Luis     | Computational Systems Engineer |
|  Gabriel  | Software Engineer              |
|  Emanuel  | Software Engineer              |
 
Scenario Outline: Speaker Detail Page - Check speakers social networks
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be presented with an <state> icon of the <social network> redirecting to <link>.

Examples:
 | speaker |   state  | social network | link                                         |
 | Gabriel | disabled | linkedIn       | No link                                      |
 | Gabriel | disabled | facebook       | No link                                      |
 | Gabriel | disabled | twitter        | No link                                      |
 | Emanuel | disabled | linkedIn       | No link                                      |
 | Emanuel | enabled  | facebook       | "https://www.facebook.com/emanuel.silva.146" |
 | Emanuel | disabled | twitter        | No link                                      |
 | Luis    | enabled  | linkedIn       | "https://www.linkedin.com/in/luiscisnerosg/" |
 | Luis    | enabled  | facebook       | "https://www.facebook.com/tiko.Luis.Cisneros"|
 | Luis    | enabled  | twitter        | "https://twitter.com/TikoCisneros"           |
 
Scenario Outline: Speaker Detail Page - Check speakers work experience
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display a list of <work experience> with the <position> and <activities>.

Examples:
 | speaker |   work experience                   | position               | activities                                               |
 | Gabriel |   Polytechnic of Leiria             | Guest assistant        | Lecturing of practical classes of curricular units       |
 |         |                                     |                        | of Algorithms and Data Structures and Security Topics.   |
 | Emanuel | Internship at the College Conciliar | Intern                 | Maintenance and expansion of existing computer network   |
 |         | de Maria Immaculada - Leiria        |                        | in college, Technical support                            |
 | Luis    | Yachay E.P.                         | Web programmer         |Development of web applications, web services, web apps.  |
 | Luis    | Nemecis Solutions                   | Website developer      |Development of static and dynamic websites                |
 |         |                                     |                        |(html, joomla, wordpress).                                |

 
Scenario Outline: Speaker Detail Page - Check speakers education
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display a list of personal education with <title> , <institution> and <level>.

Examples:
 | speaker |   title                        | institution                    |  level     |
 | Gabriel |   COMPUTER SCIENCE             |  Polytechnic of Leiria         |Bachelord   |
 | Emanuel |   COMPUTER SCIENCE             |  Polytechnic of Leiria         |Bachelord   |
 | Luis    | Computational Systems Engineer |  Universidad Técnica del Norte |Bachelord   |

 
Scenario Outline: Speaker Detail Page - Check speakers projects
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display a list of <project title> with the <place> and <description>.

Examples:
 | speaker |         project title               |       place            |                   description                                        |
 | Gabriel |   Evolution of Virtual Creatures    | Polytechnic of Leiria  | The developed application allows to evolve the form and              |
 |         |                                     |                        |  behaviors of virtual creatures. To this end a genetic               |
 |         |                                     |                        |  algorithm has been implemented that evolves neural networks         |
 |         |                                     |                        |  that control the creatures. These creatures are created and         |
 |         |                                     |                        |  simulated in the Unity3D game engine.                               |
 | Emanuel |   Silent Television                 | Polytechnic of Leiria  | This work aims at creating a product which would allow the users     |
 |         |                                     |                        |  of a commercial space to hear the sound of a television in that     |
 |         |                                     |                        |  space even if there was a great amount of noise. For this purpose,  |
 |         |                                     |                        |  we developed an equipment that captures and conveys the sound of    |
 |         |                                     |                        |  the television to Android smartphones/tablets. This equipment is    |
 |         |                                     |                        |    connected to the television and the router on-site ad conveys the |
 |         |                                     |                        |   audio through the network to the Android devices, also sending some| 
 |         |                                     |                        |   information on the television and transmission setups to these     |
 |         |                                     |                        |   devices                                                            |
 | Luis    | Ibarra Tourism App                  | Ibarra - Ecuador       | Android Tourism App builded with Apache Cordova and web technologies.|
 
Scenario Outline: Speaker Detail Page - Check speakers certifications
 Given i clicked on button "more info" on a profile card of <speaker>
 When the speakers detail page opened
 Then the page must be display a list of <certification> with the <description>.

Examples:
 | speaker |   certification                                     | description                                            | 
 | Gabriel |   Workshop IBM: Big Data                            | Held on July 12 and 13 at the School of Technology and |
 |         |                                                     |  Management of the Polytechnic Institute of Leiria     | 
 | Emanuel |   Not Certifications                                |                                                        | 
 | Luis    | Cisco IT ESSENTIALS BASIC                           | Universidad Técnica del Norte, Academia CISCO / Enero de 2013 |
 | Luis    | Certificate of Completion: PHP Course               | SoloLearn Licencia 1059-593722 / February 2016          |

