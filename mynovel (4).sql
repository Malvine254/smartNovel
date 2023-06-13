-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 11:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynovel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL DEFAULT 'admin',
  `id` int(11) NOT NULL,
  `profile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `phone`, `password`, `id`, `profile`) VALUES
('James Maina', 'admin@gmail.com', '1234567', '81dc9bdb52d04dc20036dbd8313ed055', 5, '20200415_110525.jpg'),
('Edwin Mogita', 'edwin@gmail.com', '1234567890', '81dc9bdb52d04dc20036dbd8313ed055', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `author` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'assets/img/person-2.jpg',
  `profile` varchar(20) DEFAULT NULL,
  `time_stamp` int(100) NOT NULL,
  `frequent` varchar(7000) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(100) DEFAULT NULL,
  `id_auto` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `date`, `category`, `image`, `profile`, `time_stamp`, `frequent`, `status`, `email`, `id_auto`) VALUES
(117, 'My Biography', '<p>Story telling during the old days was best expressed as a way of bring people with different ideas and needs together for a common purpose (listen and learn) without seclusion or disparity, so is smartNovel. Smart novel offers a vivid solution towards this by ensuring that the voices of the less privileged (e.g. the blind) in the society are heard in any development environment. Blind people are able to create their own novels through articulation through the use of voice/speech recognition without necessarily manually typing. For other users who do not have any disability have the choice to use either manually typing or dictation. Moreover, smartNovel is also geared towards ensuring that users get to the roots of any novel at the comfort of their homes or work places as the narrator does the cumbersome task of reading it out. smartNovel being open source will also enable users create as many novels as possible and download in order to elevate the level of literacy and creativity regardless of their geographical settings.</p>', 'Malvine Owuor', '27-02-23 09:50:10pm', 'Poetry', '20210129_132953.jpg', '20200508_171156.jpg', 1677580811, 'owuormalvine75@gmail.com,james@gmail.com,kamau@gmail.com,mutai@gmail.com,', 1, 'owuormalvine75@gmail.com', '2620021'),
(118, 'My Biography', '<p>Story telling during the old days was best expressed as a way of bring people with different ideas and needs together for a common purpose (listen and learn) without seclusion or disparity, so is smartNovel. Smart novel offers a vivid solution towards this by ensuring that the voices of the less privileged (e.g. the blind) in the society are heard in any development environment. Blind people are able to create their own novels through articulation through the use of voice/speech recognition without necessarily manually typing. For other users who do not have any disability have the choice to use either manually typing or dictation. Moreover, smartNovel is also geared towards ensuring that users get to the roots of any novel at the comfort of their homes or work places as the narrator does the cumbersome task of reading it out. smartNovel being open source will also enable users create as many novels as possible and download in order to elevate the level of literacy and creativity regardless of their geographical settings.</p>', 'Malvine Owuor', '27-02-23 09:50:10pm', 'Poetry', '20210129_132953.jpg', '20200508_171156.jpg', 1677580822, NULL, 1, 'owuormalvine75@gmail.com', '1308369'),
(119, 'Ranganathan\'s Law', '<p>10 Usability Heuristics for User Interface Design Summary: Jakob Nielsen\'s 10 general principles for interaction design. They are called \"heuristics\" because they are broad rules of thumb and not specific usability guidelines. #1: Visibility of system status The design should always keep users informed about what is going on, through appropriate feedback within a reasonable amount of time. When users know the current system status, they learn the outcome of their prior interactions and determine next steps. Predictable interactions create trust in the product as well as the brand. • Communicate clearly to users what the system’s state is — no action with consequences to users should be taken without informing them. • Present feedback to the user as quickly as possible (ideally, immediately). • Build trust through open and continuous communication. #2: Match between system and the real world The design should speak the users\' language. Use words, phrases, and concepts familiar to the user, rather than internal jargon. Follow real-world conventions, making information appear in a natural and logical order. The way you should design depends very much on your specific users. Terms, concepts, icons, and images that seem perfectly clear to you and your colleagues may be unfamiliar or confusing to your users. When a design’s controls follow real-world conventions and correspond to desired outcomes (called natural mapping), it’s easier for users to learn and remember how the interface works. This helps to build an experience that feels intuitive. Example of Usability Heuristic #2: When stovetop controls match the layout of heating elements, users can quickly understand which control maps to which heating element. Tips • Ensure that users can understand meaning without having to go look up a word’s definition. • Never assume your understanding of words or concepts will match that of your users. • User research will uncover your users\' familiar terminology, as well as their mental models around important concepts. #3: User control and freedom Users often perform actions by mistake. They need a clearly marked \"emergency exit\" to leave the unwanted action without having to go through an extended process. When it\'s easy for people to back out of a process or undo an action, it fosters a sense of freedom and confidence. Exits allow users to remain in control of the system and avoid getting stuck and feeling frustrated. Example of Usability Heuristic #3: Digital spaces need quick emergency exits, just like physical spaces do. Tips • Support Undo and Redo. • Show a clear way to exit the current interaction, like a Cancel button. • Make sure the exit is clearly labeled and discoverable. #4: Consistency and standards Users should not have to wonder whether different words, situations, or actions mean the same thing. Follow platform and industry conventions. Jakob\'s Law states that people spend most of their time using digital products other than yours. Users’ experiences with those other products set their expectations. Failing to maintain consistency may increase the users\' cognitive load by forcing them to learn something new. #5: Error prevention Good error messages are important, but the best designs carefully prevent problems from occurring in the first place. Either eliminate error-prone conditions, or check for them and present users with a confirmation option before they commit to the action. There are two types of errors: slips and mistakes. Slips are unconscious errors caused by inattention. Mistakes are conscious errors based on a mismatch between the user’s mental model and the design. Example of Usability Heuristic #5: Guard rails on curvy mountain roads prevent drivers from falling off cliffs. Tips • Prioritize your effort: Prevent high-cost errors first, then little frustrations. • Avoid slips by providing helpful constraints and good defaults. • Prevent mistakes by removing memory burdens, supporting undo, and warning your users. #6: Recognition rather than recall Minimize the user\'s memory load by making elements, actions, and options visible. The user should not have to remember information from one part of the interface to another. Information required to use the design (e.g. field labels or menu items) should be visible or easily retrievable when needed. Humans have limited short-term memories. Interfaces that promote recognition reduce the amount of cognitive effort required from users. Example of Usability Heuristic #6: It’s easier for most people to recognize the capitals of countries, instead of having to remember them. People are more likely to correctly answer the question Is Lisbon the capital of Portugal? rather than What’s the capital of Portugal? Tips • Let people recognize information in the interface, rather than forcing them to remember (“recall”) it. • Offer help in context, instead of giving users a long tutorial to memorize. • Reduce the information that users have to remember. #7: Flexibility and efficiency of use Shortcuts — hidden from novice users — may speed up the interaction for the expert user so that the design can cater to both inexperienced and experienced users. Allow users to tailor frequent actions. Flexible processes can be carried out in different ways, so that people can pick whichever method works for them. Example of Usability Heuristic #7: Regular routes are listed on maps, but locals with knowledge of the area can take shortcuts. Tips • Provide accelerators like keyboard shortcuts and touch gestures. • Provide personalization by tailoring content and functionality for individual users. • Allow for customization, so users can make selections about how they want the product to work. Learn more • Full article: Flexibility and Efficiency of Use: The 7th Usability Heuristic Explained • 3-minute video: Flexibility and Efficiency of Use #8: Aesthetic and minimalist design Interfaces should not contain information that is irrelevant or rarely needed. Every extra unit of information in an interface competes with the relevant units of information and diminishes their relative visibility. This heuristic doesn\'t mean you have to use a flat design — it\'s about making sure you\'re keeping the content and visual design focused on the essentials. Ensure that the visual elements of the interface support the user\'s primary goals. Example of Usability Heuristic #8: An ornate teapot may have excessive decorative elements, like an uncomfortable handle or hard-to-wash nozzle, that can interfere with usability. Tips • Keep the content and visual design of UI focused on the essentials. • Don\'t let unnecessary elements distract users from the information they really need. • Prioritize the content and features to support primary goals. Learn more • Full article: Aesthetic and Minimalist Design (Usability Heuristic #8) • 3-minute video: Aesthetic and Minimalist Design #9: Help users recognize, diagnose, and recover from errors Error messages should be expressed in plain language (no error codes), precisely indicate the problem, and constructively suggest a solution. These error messages should also be presented with visual treatments that will help users notice and recognize them. Example of Usability Heuristic #9: Wrong way signs on the road remind drivers that they are heading in the wrong direction and ask them to stop. Tips • Use traditional error-message visuals, like bold, red text. • Tell users what went wrong in language they will understand — avoid technical jargon. • Offer users a solution, like a shortcut that can solve the error immediately. #10: Help and documentation It’s best if the system doesn’t need any additional explanation. However, it may be necessary to provide documentation to help users understand how to complete their tasks. Help and documentation content should be easy to search and focused on the user\'s task. Keep it concise, and list concrete steps that need to be carried out. Shneiderman’s Eight Golden Rules Ben Shneiderman, an American computer scientist consolidated some implicit facts about designing and came up with the following eight general guidelines − • Strive for Consistency. • Cater to Universal Usability. • Offer Informative feedback. • Design Dialogs to yield closure. • Prevent Errors. • Permit easy reversal of actions. • Support internal locus of control. • Reduce short term memory load. Observations - Disruptive pop ups i.e., dialog for accepting cookies – arden university - Longer pages which requires a lot of page scrolling I have critiqued how well The Times Online engages with its users through use of searchability, usability, navigation, design, content and interactivity. The findings of which are as follows: Searchability • – When searching ‘The Times Online’ or ‘The Times’ in popular search engines (Google, MSN search, Yahoo and Ask) the first result is The Times Online with several links to different sections of the website proceeding it, as such it uses its potential search engine optimisation. Usability • – The Times Online is quite simple to get to grips with and easy to use. The hyperlinks work and pages are quick to load which makes for a stable website that works to its advantage as users are likely to return. • – Generally, it is easy to find information on The Times Online which fulfils its purpose to inform the reader. However, it was found that there might be slight confusion for users that were using the website to look for holidays. It may be assumed that ‘holidays’ would be located under ‘travel’ in the navigation bar whereas it’s actually located under ‘jobs and classifieds’ leading the user to the ‘travel directory’ but with useful navigation tools, the user will not get lost. Navigation • – There is one main horizontal navigation bar at the top of the page on The Times Online which makes the website simple to use. • – It reads left to right which is natural, logical and easy to follow. • – There is a secondary horizontal navigation bar at the bottom of the page that repeats the same links as the navigation bar at the top. This allows the user to read to the bottom of the page and be directed to pages without having to scroll back to the top of the page. • – The hyperlinks are clearly signposted making it efficient for the user to navigate around the website. • – There is a lot of intra-linking which keeps the user contained to the website and creates more hits. • – At the top and bottom of every page there’s a “where am I?” hyperlink that tracks the page that the user goes to recording their history which makes it easy for the user to back track and not get lost • – There is also a search bar at both the top and bottom of the page which makes it easier for the user to find their desired content. Design • – The layout is simple but effective, there is a white background and a consistent colour theme that matches the logo which looks professional and does not distract from the content. • – The main site logo constantly stays at the top left of the page when navigating around the site which makes the website consistent. • – There is an advertisement above the main site logo. This could be considered as distracting from the content. However, as it’s above the logo, at a glance, it’s not noticeable and is separate from the main page. • – The homepage is divided into two columns, seperating information. • – The left hand column features news stories that have been divided into categories with hyperlinked bold sub-headings. The headings break up information which makes it easy for the user to scan the text and find the latest news stories according to their interests. • – In the left hand column, hyperlinked images are used to grab attention and direct users to featured news stories and generally, this is effective. However, around the website it is found that images have been stretched. This is unimpressive and looks unprofessional. • – In contrast to the left hand column, the right hand column is unorganised and cluttered with a mixture of adverts and information. An example of this is that a box containing the popular searches of The Times Online is halfway down the page, below several advertisements which can be confusing to the user and may be better suited at the top to encourage and direct users. Content • – As The Times Online is a News website, visitors have expectations to find the latest information and the content must be kept up-to-date for visitors to return. The Times Online updates the content regularly, so the users know that they are getting the latest information this is a reason for its popularity. • – The stories on The Times Online are arranged in order of importance which makes the information easily accessible and suits the websites purpose. • – The Times Online has the right amount of information for the user to feel informed without overload. • – The Times Online also features some UGC* in which users are invited to submit and publish reviews. These can be found in the entertainment section, this is unique information that visitors cannot read elsewhere which also offers users a sense of importance, believing that what they say matters. Interactivity • – The use of video on The Times Online offers visual stimulation and breaks up text to make a story more interesting. • – On The Times Online users have the option to sign up to the website where they are able to create a profile. Once a member, users have access to a range of interactive features including: competitions, games and puzzles, polls and the ability to comment on news articles which is successful in building a community and encourages users to return. Home Page( OXFORD UNI) - Disruptive popups – cookies - Use of unfamiliar icons without using roll overs - Too long dropdown menus MOI UNIVERSITY - Hero slider has</p>', 'Malvine Owuor', '22-02-23 10:28:19pm', 'Non-fiction', 'IMG-20210820-WA0000.jpg', '20200508_171156.jpg', 1677580841, 'owuormalvine75@gmail.com,james@gmail.com', 1, 'owuormalvine75@gmail.com', '3331706'),
(120, 'Think twice before you speak', '<p>Everything for everyone.I can\'t let them down. They\'re counting on me.You would have learned the sun will still come up if I don\'t get everything done.The Sun will still rise if I don\'t keep everyone happy.You\'re not doing yourself any favors living out of the depleted state.And sometimes we\'ve been doing it so long we don\'t realize how far below our potential we\'re living.You won\'t be as good a parent, spouse, leader, friend if you\'re not taking time to get away.There will always be needs, always be something to do, someone that needs your attention. You have to make it a priority to stay in balance.It\'s OK to be completed, to work hard, to give it your best, to be there for people, but it\'s not OK to stay depleted. You have to get Phil back up.Some people are living worn out, drained no energy. They don\'t want to let anyone down. You\'ve been there for everyone except you.Why don\'t you treat yourself as good as you treat others? You have to take care of your temple. You\'re not invincible.Jesus had all the power in the world, yet in his physical body he knew his limits.He knew when he was at the point where he had to take time to get replenished and the reason some people are not enjoying life is because their account is overdrawn.They\'re good at letting people make withdrawals. They work hard, meet expectations, keep everyone happy, but they don\'t have a system to where they get filled back up.When you live drained, depleted, you won\'t be as productive. You won\'t have the stamina to overcome challenges. You would enjoy your family like you should. There\'ll be more stride conflict.You\'ll be amazed at what happens, if you\'ll get back in balance, if you\'ll make yourself a priority.Let go of some of the pressure.Yes, you love your children, but you don\'t have to be super parent.Your children are going to be raised out of the house at some point. You don\'t want to look back and think, man, I didn\'t enjoy those years. I\'m so stressed, overwhelmed, tried to be everything. Keep up with my neighbors.If Jesus knew his limits, we should know our limit.And yes, we can do everything. We can beat Superman, but that\'s not healthy. Take the Cape off. Get back in balance.Sometimes it\'s not other people\'s expectations, it\'s our own expectations. We feel guilty for not doing everything we think needs to be done, for not meeting all the needs. After all, we have the ability, the talent, the anointing, but you also have a physical body.Like with Jesus, there are limits. He had to get away to keep being his best.If he would have lived depleted, he would have shortchanged himself.The best thing he could do was to get recharged.On a regular basis, you need to have these times where you get replenished.Wife makes a lot of withdrawals. Things were not even aware of traffic work, deadlines, delays, difficult people, negative news. That\'s all draining. That\'s all taking from your account.And don\'t make the mistake of living overdrawn.If you go into a new week at a deficit, those same things come to take from you, but there\'s nothing there. That\'s when you get overwhelmed, frustrated. You\'re not as productive. Your gifts don\'t come out like they should. It\'s not difficult. Just get back in balance.On a regular basis, start taking time for you, for what replenishes you, for what feels you back up.This may mean you have to say no to some things. You may have to disappoint a few friends. Have can\'t be there every Monday night. It\'s a new season. You may have to tell your children. We can\'t play on 17 different soccer teams this fall. Let\'s just do 12.When the pandemic hit, it forced us to slow down. Most people didn\'t go to work, didn\'t travel.Stop running. Shopping centers closed. Everything was put on pause.Although people lost their lives and our hearts go out to them, there was some good that came out of the pandemic.He\'d shifted our priorities.We realize there\'s more to life than just working all the time trying to achieve an outperform. We saw how much we missed spending time with our family, enjoying the people that we love. In a sense, it helped us bring it back into balance to have a new perspective of what\'s important.Since 2004, we have done over 200 nights of hope in different cities across America. Every month we go to the stadiums or basketball arenas they did was normally on a Friday night. We come home Saturday afternoon. He turned Saturday night. Two services on Sunday like Harper.Right, you must serious XM radio program each week. How well do you? But I didn\'t realize how much that was taken out of me.When the pandemic had changed.No more.Free services. We recorded one service on Friday afternoon. No people in the operatory. I\'ve come in, do a message. Half hour later I was done.In 23 years since my father passed, I have never been so rested, never had so much energy. I noticed that my contact started to get worried. Couldn\'t read his well, went to the eye. Doctor, you going to test? He said. Joel, this is very strange, but the reason your contacts are boring is because you\'re.Vision has improved.It hasn\'t gotten worse. It\'s gotten better.So you\'re going to be a school teacher? Yeah. But first I need to get my senior thesis over the finish.Building a speech to text, kind of.Recognition and.</p>', 'Malvine Owuor', '02-03-23 08:32:14pm', 'Fantasy', 'IMG-20210820-WA0000.jpg', '20200508_171156.jpg', 1677778725, 'owuormalvine75@gmail.com,kyalo@gmail.com,james@gmail.com,mutai@gmail.com', 1, 'owuormalvine75@gmail.com', '2234187'),
(121, 'The unforgotten heroes and heroines ', '<p>Explain how social engineering attacks that exploit your psychological security hole.[6 Mks] <br></p><ol><li><strong>Phishing:</strong> Phishing attacks typically involve sending fraudulent emails or messages that appear to be from a legitimate source, such as a bank or a popular online service. The attacker may use various social engineering tactics, such as urgency or fear, to persuade the victim to click on a link or provide personal information. Phishing attacks exploit the victim\'s trust in the perceived sender and their tendency to respond quickly to urgent requests. <br></li><li><strong>Pretexting:</strong> Pretexting attacks involve the attacker pretending to be someone they are not, such as a colleague, a vendor, or a customer, to gain the victim\'s trust and obtain sensitive information. Pretexting attacks exploit the victim\'s desire to be helpful and their tendency to trust people who appear to have legitimate reasons for asking for information. <br></li><li>Baiting: Baiting attacks involve enticing the victim with an offer or a reward, such as a free movie download or a gift card, to get them to perform an action that compromises their security. Baiting attacks exploit the victim\'s desire for immediate gratification and their tendency to prioritize short-term benefits over long-term consequences.&nbsp;<br></li><li>Spear phishing: Spear phishing attacks are similar to phishing attacks, but they are targeted at specific individuals or organizations. The attacker may use personal information or social media profiles to craft a convincing message that appears to be from a trusted source. Spear phishing attacks exploit the victim\'s familiarity with the sender and their tendency to trust messages that are tailored to their interests or needs.<br></li></ol><p> <em>What the Cryptographic main method of building a shared secret over a public medium? Explain the working principle.[6 Mks] </em><br></p><p><em></em>The main cryptographic method of building a shared secret over a public medium is called key exchange or key agreement protocol. The basic principle of key exchange is to establish a shared secret between two parties in such a way that an eavesdropper who intercepts the communication cannot determine the shared secret. One of the most popular key exchange protocols is the Diffie-Hellman key exchange. Here is how it works: <br></p><ol><li>Alice and Bob agree on a public domain parameter: They agree on a prime number p and a base g that are publicly known. <br></li><li>Alice and Bob generate their private keys: They each select a secret number, a for Alice and b for Bob. <br></li><li>Alice and Bob compute their public keys: Alice computes g^a mod p and sends the result to Bob. Bob computes g^b mod p and sends the result to Alice.<br></li><li>&nbsp;Alice and Bob compute the shared secret: Alice computes (g^b mod p)^a mod p, while Bob computes (g^a mod p)^b mod p. The result of both computations is the same shared secret.<br></li><li>&nbsp;Alice and Bob can now use the shared secret for secure communication: They can use the shared secret to encrypt messages using symmetric-key encryption.</li><li>The security of Diffie-Hellman key exchange relies on the discrete logarithm problem, which is believed to be difficult to solve for large prime numbers. Therefore, even if an attacker intercepts the communication between Alice and Bob and knows the public domain parameters, they cannot determine the private keys and the shared secret. <br></li></ol><p><em>How would you handle brute force attacks?</em> <br></p><ol><li><strong>&nbsp;Implement strong passwords:</strong> Strong passwords are typically long, complex, and include a combination of uppercase and lowercase letters, numbers, and symbols. This makes it more difficult for attackers to guess the password using a brute force attack.<br></li><li><strong>&nbsp;Implement account lockout policies:</strong> Account lockout policies can be used to prevent an attacker from repeatedly trying to guess a password. For example, after a certain number of failed login attempts, the account can be locked out for a set period of time.<br></li><li><strong>Implement rate limiting:</strong> Rate limiting can be used to limit the number of login attempts from a particular IP address or user account. This can help prevent an attacker from repeatedly trying to guess a password.<br></li><li><strong>Implement multi-factor authentication:</strong> multi-factor authentication requires the user to provide multiple forms of authentication, such as a password and a one-time code sent to their phone. This makes it more difficult for an attacker to gain access to the account even if they guess the password. <br></li><li><strong>Implement intrusion detection systems:</strong> Intrusion detection systems can be used to monitor network traffic and detect brute force attacks in real-time. This can allow security personnel to take action to prevent the attack before it becomes successful. <br></li><li><strong>Use strong encryption:</strong> Strong encryption can make it more difficult for attackers to decrypt sensitive data, even if they are able to obtain the encryption key through a brute force attack. <br></li></ol><p><em>How do you block the viruses, worms, and other malware that threaten your business [6 Mks]</em> <br></p><ol><li><strong>Install anti-virus software:</strong> Anti-virus software can help prevent viruses and other malware from infecting your systems. Make sure to keep the software up-to-date to ensure maximum protection.<br></li><li><strong>Implement firewalls:</strong> Firewalls can help prevent unauthorized access to your network and protect against malware that may attempt to enter through network traffic.<br></li><li><strong>Keep software up-to-date:</strong> Make sure to regularly update software and applications to fix known vulnerabilities and prevent malware from exploiting them.<br></li><li><strong>&nbsp;Use email filters:</strong> Email filters can help prevent spam and phishing emails that may contain malware from reaching users\' inboxes.<br></li><li><strong>Educate employees:</strong> Educate employees on safe browsing habits, avoiding suspicious emails and links, and not downloading or opening files from unknown sources. <br></li><li><strong>Use intrusion detection and prevention systems:</strong> Intrusion detection and prevention systems can help detect and prevent malware from entering your network.<br></li><li>&nbsp;<strong>Implement access controls:</strong> Implement access controls to limit user access to sensitive data and systems. This can help prevent malware from spreading across the network if one system is compromised. <br></li><li><strong>Regularly back up data:</strong> Regularly backing up data can help protect against malware that may attempt to encrypt or destroy data. Make sure to store backups in a separate location to prevent them from being infected as well. <br></li></ol><p><em>How do you scan for open ports in a Wi-Fi network? [6 Mks]</em> <br></p><p>To scan for open ports in a Wi-Fi network, you can use a port scanning tool such as Nmap. Here are the steps to scan for open ports using Nmap: <br></p><ol><li>Install Nmap: Nmap is a free and open-source tool that can be installed on Windows, Mac, and Linux operating systems. You can download Nmap from the official website.<br></li><li>&nbsp;Connect to the Wi-Fi network: Connect to the Wi-Fi network that you want to scan for open ports. <br></li><li>Open a command prompt: Open a command prompt or terminal on your computer.<br></li><li>Run Nmap: Type \"nmap\" followed by the IP address of the Wi-Fi network that you want to scan. For example, if the IP address of the network is 192.168.1.1, type \"nmap 192.168.1.1\" and press enter.<br></li><li>&nbsp;Wait for the scan to complete: Nmap will scan the network for open ports and display the results in the command prompt.<br></li><li>&nbsp;Analyze the results: The results will show which ports are open and which services are running on those ports. You can use this information to identify any potential vulnerabilities or security risks in the network.</li></ol>', 'James  Koech', '07-03-23 08:23:00pm', 'Short story', 'IMG_20210820_120418.jpg', '20200508_171156.jpg', 1678210357, 'james@gmail.com,mutai@gmail.com', 1, 'james@gmail.com', '1434606'),
(122, 'My title', '<p>Did you come up with?My buddy how come my connection?Anyway, it\'s typing whatever between a type.Only only.Any English word types?Umm.What can you do?Type.</p>', 'Malvine Owuor', '19-03-23 04:33:09pm', 'Graphic novel', 'dropdowns on mobile view.JPG', '20200508_171156.jpg', 1679232846, NULL, 1, 'owuormalvine75@gmail.com', '4976009'),
(123, 'My title', '<p>Did you come up with?My buddy how come my connection?Anyway, it\'s typing whatever between a type.Only only.Any English word types?Umm.What can you do?Type.</p>', 'Malvine Owuor', '19-03-23 04:33:09pm', 'Graphic novel', 'dropdowns on mobile view.JPG', '20200508_171156.jpg', 1679232866, NULL, 1, 'owuormalvine75@gmail.com', '2242116'),
(124, 'skkq qkqiq qkqo1', '<p>MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vv</p>', 'Malvine Owuor', '19-03-23 04:36:30pm', 'Biography', 'Untitled.png', '20200508_171156.jpg', 1679233022, 'owuormalvine75@gmail.com', 1, 'owuormalvine75@gmail.com', '4633947'),
(125, 'skkq qkqiq qkqo1', '<p><strong>MySQL returned an empty result set (i.e. zero ro</strong>ws). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vMySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)vv</p>', 'Malvine Owuor', '28-03-23 02:11:26pm', 'Biography', 'card.jpg', '20200508_171156.jpg', 1680001937, 'owuormalvine75@gmail.com', 1, 'owuormalvine75@gmail.com', '3028822'),
(126, 'The day things fall apart', '<p>Introduction to Distributed Systems – Lecture 1 What is a distributed system? A distributed system is a collection of independent computers interconnected via a network that appear to the users of the system as a single system and are capable of collaborating on a task. A distributed system runs on a collection of computers that do not have shared memory, yet looks like a single computer to its users. Distributed computing is computing performed in a distributed system. A computer program that runs in a distributed system is called a distributed program, and distributed programming is the process of writing such programs Examples: • ATM • Internet • Distributed manufacturing system (e.g., automated assembly line) • Network of branch office computers Advantages of Distributed Systems over Centralized Systems • Economics/ costs: a collection of microprocessors offer a better price/performance than mainframes hence a cost effective way to increase computing power. • Speed: a distributed system may have more total computing power than a mainframe hence enhanced performance through load distributing. • Inherent distribution: Some applications are inherently distributed. E.g a supermarket chain. • Reliability: If one machine crashes, the system as a whole can still survive. Higher availability and improved reliability. • Incremental growth: Computing power can be added in small increments. Modular expandability • The existence of large number of personal computers, the need for people to collaborate and share information. Properties of distributed systems include: • Each computer may have its own user with individual needs. • The system has to tolerate failures in individual computers. • The structure of the system (network topology, network latency, number of computers) is not known in advance, the system may consist of different kinds of computers and network links, and the system may change during the execution of a distributed program. • Each computer has only a limited, incomplete view of the system. Each computer may know only one part of the input. It is possible to roughly classify concurrent systems as \"parallel\" or \"distributed\" using the following criteria: • In parallel computing, all processors have access to a shared memory. Shared memory can be used to exchange information between processors. • In distributed computing, each processor has its own private memory (distributed memory). Information is exchanged by passing messages between the processors. Components of Distributed Software Systems • Distributed systems • Middleware • Distributed applications Advantages of Distributed Systems over Independent PCs • Data sharing: allow many users to access to a common data base • Resource Sharing: expensive peripherals like color printers • Communication: enhance human-to-human communication, e.g., email, chat • Flexibility: spread the workload over the available machines Disadvantages of Distributed Systems • Software: difficult to develop software for distributed systems • Network: saturation, lossy transmissions • Security: easy access also applies to secrete data Hardware Concepts a. Tightly coupled systems (multiprocessors) – have shared memory, intermachine delay is short and have high data rate b. Loosely coupled systems (multicomputers) – Have private memory, intermachine delay long, data rate low (a)–(b) A distributed system. (c) A parallel system. Software Concepts • Software is more important for users • There are three types: 1. Network Operating Systems 2. Distributed Systems 3. Multiprocessor Time Sharing Network Operating Systems • loosely-coupled software on loosely-coupled hardware • A network of workstations connected by LAN • each machine has a high degree of autonomy • a few system-wide requirements: format and meaning of all the messages exchanged NFS NFS Architecture – Have Server exports directories and Clients mount exported directories NFS Protocols - For handling mounting and For read/write: open/close jobs. Multiprocessor Operating Systems • Tightly-coupled software on tightly-coupled hardware • Examples: high-performance servers where there are shared memory, single run queue Design Issues of Distributed Systems • Transparency • Flexibility • Reliability • Performance • Scalability Transparency • How to achieve the single-system image, i.e., how to make a collection of computers appear as a single computer. • Hiding all the distribution from the users as well as the application programs can be achieved at two levels: 1) hide the distribution from users 2) at a lower level, make the system look transparent to programs. Types of transparency – Location Transparency: users cannot tell where hardware and software resources such as CPUs, printers, files, data bases are located. – Migration Transparency: resources must be free to move from one location to another without their names changed. – Replication Transparency: OS can make additional copies of files and resources without users noticing. – Concurrency Transparency: The users are not aware of the existence of other users. Need to allow multiple users to concurrently access the same resource. Lock and unlock for mutual exclusion. – Parallelism Transparency: Automatic use of parallelism without having to program explicitly Flexibility • Make it easier to change • Monolithic Kernel: systems calls are trapped and executed by the kernel. All system calls are served by the kernel, e.g., UNIX. • Microkernel: provides minimal services such as Interprocess Communication(IPC), memory management, low-level process management and scheduling, low-level i/o E.g., support multiple file systems, multiple system interfaces. Reliability • Distributed system should be more reliable than single system. Example: 3 machines with a 95% probability of being up. 1-.05**3 probability of being up. – Availability: fraction of time the system is usable. Redundancy improves it. – Need to maintain consistency – Need to be secure – Fault tolerance: need to mask failures, recover from errors. Performance • Performance loss due to communication delays: – fine-grain parallelism: high degree of interaction – coarse-grain parallelism • Performance loss due to making the system fault tolerant. Scalability • Systems grow with time or become obsolete. Techniques that require resources linearly in terms of the size of the system are not scalable. e.g., broadcast based query won\'t work for large distributed systems. • Examples of bottlenecks o Centralized components: a single mail server o Centralized tables: a single URL address book o Centralized algorithms: routing based on complete information Packet Switching versus Circuit Switching i) circuit switching -- a dedicated path between a source and a destination e.g., telephone connection. wastes bandwidth (bandwidth = amount of data transmitted in a given time period) ii) packet switching -- message or data is broken into packets packets are routed independently, better network utilization, disassemble and assembler overheads Distributed programming typically falls into one of several basic architectures or categories: client–server, 3-tier architecture, n-tier architecture, distributed objects, loose coupling, or tight coupling. • Client–server: Smart client code contacts the server for data then formats and displays it to the user. Input at the client is committed back to the server when it represents a permanent change. • 3-tier architecture: Three tier systems move the client intelligence to a middle tier so that stateless clients can be used. This simplifies application deployment. Most web applications are 3-Tier. • n-tier architecture: n-tier refers typically to web applications which further forward their requests to other enterprise services. This type of application is the one most responsible for the success of application servers. • Tightly coupled (clustered): refers typically to a cluster of machines that closely work together, running a shared process in parallel. The task is subdivided in parts that are made individually by each one and then put back together to make the final result. • Peer-to-peer: an architecture where there is no special machine or machines that provide a service or manage the network resources. Instead all responsibilities are uniformly divided among all machines, known as peers. Peers can serve both as clients and servers.  Space based: refers to an infrastructure that creates the illusion (virtualization) of one single address-space. Data are transparently replicated according to application needs. Decoupling in time, space and reference is achieved. Models • A model captures the essential ingredients that we need to consider to understand and reason about a system’s behavior • Addresses the following questions: - What are the main entities in the system?, How do they interact?, What are the characteristics that affect their collective and individual behavior? Three models exist • Interaction model - Reflects the assumptions about the processes and the communication channels in the distributed system • Failure model - Distinguish between the types of failures of the processes and the communication channels • Security Model - Assumptions about the principals and the adversary Interaction Models Synchronous Distributed Systems: a system in which the following bounds are defined • The time to execute each step of a process has an upper and lower bound • Each message transmitted over a channel is received within a known bounded delay • Each process has a local clock whose drift rate from real time has a known bound Asynchronous distributed system  Each step of a process can take an arbitrary time  Message delivery time is arbitrary  Clock drift rates are arbitrary Implications  In a synchronous system, timeouts can be used to detect failures  Impossible to detect failures or “reach agreement” in an asynchronous system</p>', 'Malvine Owuor', '30-03-23 11:26:22am', 'Literary Fiction', 'IMG-20210822-WA0000.jpg', '20200508_171156.jpg', 1680165311, 'owuormalvine75@gmail.com,', 1, 'owuormalvine75@gmail.com', '1527106'),
(127, 'My name is Jack', '<p>Hey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey there</p>', 'Malvine Owuor', '02-04-23 07:36:06pm', 'Horror', 'IMG-20210715-WA0000.jpg', '20200508_171156.jpg', 1680454838, 'owuormalvine75@gmail.com,mutai@gmail.com', 1, 'owuormalvine75@gmail.com', '2685491'),
(128, 'ammamam', '<p>Hey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey thereHey there</p>', 'Malvine Owuor', '02-04-23 07:35:44pm', 'Horror', 'IMG-20210715-WA0000.jpg', '20200508_171156.jpg', 1680454845, 'kamau@gmail.com', 1, 'owuormalvine75@gmail.com', '2559800'),
(129, 'aajkja', '<p>asnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsadddddddasnjasjsaddddddd</p>', 'Malvine Owuor', '03-04-23 05:26:31pm', 'Mystery', 'IMG-20210409-WA0006.jpg', '20200508_171156.jpg', 1680532031, 'owuormalvine75@gmail.com', 1, 'owuormalvine75@gmail.com', '4056662'),
(130, 'Verse of the Day: Jeremiah 31', '<p>This is what the Lord says.The people who survived the sword will find favor in the wilderness. I will come to give rest to Israel.The Lord appeared to us in the past, saying, I have loved you with an everlasting love.I have drawn you with unfailing kindness. I will build you up again, and you, Virgin Israel, will be rebuilt again.You will take up your timbrels and go out to dance with the joyful again. You will plant vineyards on the hills of Samaria. The farmers will plant them and enjoy their fruit. There will be a day when Watchmen cry out on the hills of Ephriam. Come, let us go up, desire to the Lord our God.This is what the Lord says. Sing with joy for Jacob, shout for the foremost of the nations.Make your praises heard and say, Lord, save your people, the remnant of Israel. See, I will bring them from the land of the north and gather them from the ends of the earth. Among them will be the blind and the lame. Expectant mothers and women in Labour\'s a great throng will return.They will come with weeping. They will pray as I bring them back.I will leave them beside streams of water on a level path where they will not stumble because I am Israel\'s father. An Etherium is my first born son.Hear the word of the Lord. You nations proclaim it in distant coastlines.He who scattered Israel will gather them, and will launch over his flock like a shepherd.For the Lord will deliver and redeem them from the hand of those stronger than they.They will come and shop for joy on the height.</p>', 'Malvine Owuor', '24-04-23 12:18:46am', 'Literary Fiction', 'game.jpg', '20200508_171156.jpg', 1682284763, 'owuormalvine75@gmail.com', 1, 'owuormalvine75@gmail.com', '4042913');
INSERT INTO `articles` (`id`, `title`, `body`, `author`, `date`, `category`, `image`, `profile`, `time_stamp`, `frequent`, `status`, `email`, `id_auto`) VALUES
(131, 'The Unplanned Return of Aliens ', '<p>OK, it was my first time representing this.And many people are having a question on how I\'m going to go about this.But because of the resilience and tenacity I had.I became with a proper solution to the problem.And the solution was.To ensure that the system work to its full capacity and enable users to search and retrieve information at real time.Because of this functionality, there is system has improved significantly and users are so much satisfied with the end product.I\'m also going to try and work out on this certain areas which seems not to have been worked on and ensure that every part of the system is working according to what it should be doing.So again, I\'m going to consult the director the database director to.Or give a final report on what\'s needed to be done and how. We\'re going to manage the database schema to ensure that all the user records are in good shape and also to ensure that there is proper security of all the records pertaining all the users in our system. We want to ensure that.The the system is secure and all that that particular records holding all bearing users information are kept secure so that we don\'t find ourselves on the wrong side of the law.OK, that\'s the end of my discussion today. I\'m going to meet you tomorrow at the same time and we\'re going to go about the same same issue we talked about. So goodbye and have a great day.</p>', 'Malvine Owuor', '25-04-23 11:12:03pm', 'Horror', 'IMG-20210722-WA0005.jpg', '20200508_171156.jpg', 1682453927, 'owuormalvine75@gmail.com', 1, 'owuormalvine75@gmail.com', '227581'),
(132, 'My Novel On Animals', '<p><strong>welcome to a project presentation with me here I have Marvin who is presenting a project on Smart Mobile okay you can see it has type welcome to project I have my name is not in the dictionary</strong></p>', 'Malvine Owuor', '27-04-23 12:44:23pm', 'Non-fiction', 'ad.JPG', '20200508_171156.jpg', 1682588713, 'owuormalvine75@gmail.com,mutai@gmail.com', 1, 'owuormalvine75@gmail.com', '1309403');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(9, 'Historical Fiction'),
(10, 'Fiction'),
(11, 'Science Fiction'),
(12, 'Romance'),
(13, 'Mystery'),
(14, 'Horror'),
(15, 'Non-fiction'),
(16, 'Fantasy'),
(17, 'Short story'),
(18, 'Graphic novel'),
(19, 'Literary Fiction'),
(20, 'Thriller'),
(21, 'Biography'),
(22, 'Memoir'),
(23, 'Poetry'),
(24, 'Children\'s Literacture'),
(25, 'History'),
(26, 'Humor'),
(27, 'Drama'),
(28, 'Adventure Fiction'),
(29, 'Science Fantasy'),
(30, 'Epistolary Novel'),
(31, 'Contemporary Romance');

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0,0,0,0',
  `new` int(11) NOT NULL DEFAULT 0,
  `approval` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`id`, `title`, `body`, `image`, `category`, `date`, `email`, `status`, `new`, `approval`) VALUES
(115, 'fghjkm,zxcvbnm,.', 'hello how are you there I would like to write a story about horror', 'birthday.jpg', 'Horror', '28-05-23 07:09:00pm', 'owuormalvine75@gmail.com', '1,1,1,0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` varchar(100) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `body`, `image`) VALUES
(1, 'My slider 1 title', 'Mys slider body', 'assets/img/slider/post-landscape-4.jpg'),
(5, 'Love that never fades', 'Story of two lovers Delta and Grusin that made people around a village called Doha completely astoni', 'assets/img/slider/th (2).jfif'),
(6, 'I\'d rather die for him', 'Best Romance of all time coming soon', 'assets/img/slider/th (3).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `finalBody` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `finalBody`) VALUES
(6, 'What is the goal of knowledge management?\nImproving organizational efficiency and saving knowledge '),
(7, 'What is the goal of knowledge management?\nImproving organizational efficiency and saving knowledge '),
(8, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(9, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(10, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(11, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(12, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(13, 'undefined'),
(14, 'undefined'),
(15, 'undefined'),
(16, 'undefined'),
(17, 'undefined'),
(18, 'undefined'),
(19, 'undefined'),
(20, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(21, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge '),
(22, 'What is the goal of knowledge management?\r\nImproving organizational efficiency and saving knowledge ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `disability` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `text_color` varchar(40) NOT NULL DEFAULT 'black',
  `font_size` int(6) NOT NULL DEFAULT 18,
  `speed` varchar(6) NOT NULL DEFAULT '1',
  `disable` varchar(6) NOT NULL DEFAULT '1',
  `profile` varchar(34) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `disability`, `email`, `password`, `id`, `text_color`, `font_size`, `speed`, `disable`, `profile`) VALUES
('Malvine', 'Owuor', 'femal', 'owuormalvine75@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 20, 'Default', 18, '0.8', '1', '20200508_171156.jpg'),
('James ', 'Koech', 'femal', 'james@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 21, 'Default', 18, '1', '0', '20200508_171156.jpg'),
('Mesh ', 'Juma', 'no', 'mesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 22, 'black', 18, '1', '0', '0'),
('James', 'Kamau', 'yes', 'kamau@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 24, 'black', 18, '1', '0', '20210317_124737.jpg'),
('123', 'Mutai', 'yes', 'mutai@gmail.com', '202cb962ac59075b964b07152d234b70', 25, 'black', 18, '1', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
