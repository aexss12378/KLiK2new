-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-06-03 07:27:00
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `klik_database`
--

-- --------------------------------------------------------

--
-- 資料表結構 `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_img` varchar(1000) NOT NULL DEFAULT 'default.png',
  `blog_by` int(11) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_votes` int(11) NOT NULL DEFAULT 0,
  `blog_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_img`, `blog_by`, `blog_date`, `blog_votes`, `blog_content`) VALUES
(2, 'First Blog', 'default.png', 24, '2018-12-09', 1, 'Random Content'),
(3, 'Another Blog', 'default.png', 24, '2018-12-09', 0, 'This blog also contains some random content but in more quantity.'),
(4, 'Third Blog', 'default.png', 24, '2018-12-09', 0, 'Sorry for boring you with random stuff.'),
(6, 'Fourth Blog', 'default.png', 24, '2018-12-09', 0, 'blah blah blah'),
(7, 'Hey There!', 'default.png', 31, '2018-12-09', 0, 'Seriously, you wasted time by visiting this blog.'),
(8, 'aaaaaa', 'default.png', 24, '2018-12-19', 0, 'aaaaaaa'),
(9, 'qqqqq', 'default.png', 24, '2018-12-19', 0, 'dddddddddd'),
(10, 'saad', 'default.png', 24, '2018-12-19', 0, 'saadsaad'),
(11, 'ss', '5c1a4cbaf0e603.76106810.jpg', 24, '2018-12-19', 0, 'sss'),
(12, 'Random Bullshit', '5c1aa8a0080a30.59734693.jpg', 24, '2018-12-20', 1, 'Online Bookstore is an online web application which makes buying books easy and efficient. People can buy books online through this application and get them delivered to their doorstep. The application is developed for two kinds of users: customers and administrators. The basic idea is to make the application user friendly and to give users several features in the application. For example, customers can register to the site using their first name, last name, valid email ID, shipping address, contact number and credit card details. Once they’re registered on the site, they can view the list of available books and search for them according to their genre, authors, rating, release year etc. They can purchase books one by one through their credit cards or manage their own bucket list on site. They can add the books they’re interested in to the bucket list. Once done, it shows them the total price and they can order them all together. The app also provides administrative features to the administrators like creating, editing, viewing and deleting a book. All these book related actions are managed through a controller. Another model handles all the logic and data related to items in the shop. The application also provides a series of interactive and visually appealing Graphical User Interface (GUI) to the users.\r\n\r\nNowadays, the network plays an import role in people’s life. In the process of the improvement of the people’s living standard, people’s demands of the life’s quality and efficiency is more higher, the traditional bookstore’s inconvenience gradually emerge, and the online bookstore has gradually be used in public. The online bookstore is a revolution of book industry. The traditional bookstores’ operation time, address and space is limited, so the types of books and books to find received a degree of restriction. But the online bookstore broke the management mode of traditional bookstore, as long as you have a computer, you can buy the book anywhere, saving time and effort, shortening the time of book selection link effectively. The online bookstore system based on the principle of provides convenience and service to people. Thus the online book store allows user to add the books in a bucket list and later that bucket list can be edited.'),
(13, 'damn im thirsty', 'blog-cover.png', 24, '2018-12-23', 1, 'gimme some of that milk boii'),
(14, 'Kill him?', '5c20807b0024e5.50196869.jpg', 36, '2018-12-24', 2, 'Your votes wont make a difference. He\'s gonna die anyway'),
(15, 'Staying Healthy', 'blog-cover.png', 35, '2018-12-24', 1, 'Eight healthy behaviors can go a long way toward improving your health and lowering your risk of many cancers as well as heart disease, stroke, diabetes, and osteoporosis. And they’re not as complicated as you might think.\r\n\r\nSo take control of your health, and encourage your family to do the same. Choose one or two of the behaviors below to start with. Once you’ve got those down, move on to the others.\r\n\r\n1. Maintain a Healthy Weight\r\nKeeping your weight in check is often easier said than done, but a few simple tips can help. First off, if you’re overweight, focus initially on not gaining any more weight. This by itself can improve your health. Then, when you’re ready, try to take off some extra pounds for an even greater health boost. To see where you fall on the weight range, click here.\r\n\r\nTips\r\nIntegrate physical activity and movement into your life.\r\nEat a diet rich in fruits, vegetables and whole grains.\r\nChoose smaller portions and eat more slowly.\r\nFor Parents and Grandparents \r\nLimit children’s TV and computer time.\r\nEncourage healthy snacking on fruits and vegetables.\r\nEncourage activity during free time.\r\n2. Exercise Regularly\r\nFew things are as good for you as regular physical activity. While it can be hard to find the time, it’s important to fit in at least 30 minutes of activity every day. More is even better, but any amount is better than none.\r\n\r\nTips \r\nChoose activities you enjoy. Many things count as exercise, including walking, gardening and dancing.\r\nMake exercise a habit by setting aside the same time for it each day. Try going to the gym at lunchtime or taking a walk regularly after dinner.\r\nStay motivated by exercising with someone.\r\nFor Parents and Grandparents \r\nPlay active games with your kids regularly and go on family walks and bike rides when the weather allows.\r\nEncourage children to play outside (when it’s safe) and to take part in organized activities, including soccer, gymnastics and dancing.\r\nWalk with your kids to school in the morning. It’s great exercise for everyone.\r\n3. Don’t Smoke\r\nYou’ve heard it before: If you smoke, quitting is absolutely the best thing you can do for your health. Yes, it’s hard, but it’s also far from impossible. More than 1,000 Americans stop for good every day.\r\n\r\nTips \r\nKeep trying! It often takes six or seven tries before you quit for good.\r\nTalk to a health-care provider for help.\r\nJoin a quit-smoking program. Your workplace or health plan may offer one.\r\nFor Parents and Grandparents\r\nTry to quit as soon as possible. If you smoke, your children will be more likely to smoke.\r\nDon’t smoke in the house or car. If kids breathe in your smoke, they may have a higher risk of breathing problems and lung cancer.\r\nWhen appropriate, talk to your kids about the dangers of smoking and chewing tobacco. A health-care professional or school counselor can help.\r\n4. Eat a Healthy Diet\r\nDespite confusing news reports, the basics of healthy eating are actually quite straightforward. You should focus on fruits, vegetables and whole grains and keep red meat to a minimum. It’s also important to cut back on bad fats (saturated and trans fats) and choose healthy fats (polyunsaturated and monounsaturated fats) more often. Taking a multivitamin with folate every day is a great nutrition insurance policy.\r\n\r\nTips\r\nMake fruits and vegetables a part of every meal. Put fruit on your cereal. Eat vegetables as a snack.\r\nChoose chicken, fish or beans instead of red meat.\r\nChoose whole-grain cereal, brown rice and whole-wheat bread over their more refined counterparts.\r\nChoose dishes made with olive or canola oil, which are high in healthy fats.\r\nCut back on fast food and store-bought snacks (like cookies), which are high in bad fats.\r\nBuy a 100 percent RDA multivitamin that contains folate.\r\n5. Drink Alcohol Only in Moderation, If at All\r\nModerate drinking is good for the heart, as many people already know, but it can also increase the risk of cancer. If you don’t drink, don’t feel that you need to start. If you already drink moderately (less than one drink a day for women, less than two drinks a day for men), there’s probably no reason to stop. People who drink more, though, should cut back.\r\n\r\nTips\r\nChoose nonalcoholic beverages at meals and parties.\r\nAvoid occasions centered around alcohol.\r\nTalk to a health-care professional if you feel you have a problem with alcohol.\r\nFor Parents and Grandparents\r\nAvoid making alcohol an essential part of family gatherings.\r\nWhen appropriate, discuss the dangers of drug and alcohol abuse with children. A health-care professional or school counselor can help.\r\n6. Protect Yourself from the Sun\r\nWhile the warm sun is certainly inviting, too much exposure to it can lead to skin cancer, including serious melanoma. Skin damage starts early in childhood, so it’s especially important to protect children.\r\n\r\nTips\r\nSteer clear of direct sunlight between 10 a.m. and 4 p.m. (peak burning hours). It’s the best way to protect yourself.\r\nWear hats, long-sleeve shirts and sunscreens with SPF15 or higher.\r\nDon’t use sun lamps or tanning booths. Try self-tanning creams instead.\r\nFor Parents and Grandparents \r\nBuy tinted sunscreen so you can see if you’ve missed any spots on a fidgety child.\r\nSet a good example for children by also protecting yourself with clothing, shade and sunscreen.\r\n7. Protect Yourself From Sexually Transmitted Infections\r\nAmong other problems, sexually transmitted infections – like human papillomavirus (HPV) – are linked to a number of different cancers. Protecting yourself from these infections can lower your risk.\r\n\r\nTips\r\nAside from not having sex, the best protection is to be in a committed, monogamous relationship with someone who does not have a sexually transmitted infection.\r\nFor all other situations, be sure to always use a condom and follow other safe-sex practices.\r\nNever rely on your partner to have a condom. Always be prepared.\r\nFor Parents and Grandparents\r\nWhen appropriate, discuss with children the importance of abstinence and safe sex. A health-care professional or school counselor can help.\r\nVaccinate girls and young women as well as boys and young men against HPV. Talk to a health professional for more information.\r\n8. Get Screening Tests\r\nThere are a number of important screening tests that can help protect against cancer. Some of these tests find cancer early when they are most treatable, while others can actually help keep cancer from developing in the first place. For colorectal cancer alone, regular screening could save over 30,000 lives each year. That’s three times the number of people killed by drunk drivers in the United States in all of 2011. Talk to a health care professional about which tests you should have and when.\r\n\r\nCancers that should be tested for regularly:\r\nColon and rectal cancer\r\nBreast cancer\r\nCervical cancer\r\nLung cancer (in current or past heavy smokers)'),
(16, 'SpaceX Wraps Up 2018 With First National Security Launch for U.S. Government', '5c2081b2ed5a23.91620400.jpg', 36, '2018-12-24', 5, 'Elon Musk’s SpaceX launched its first national security payload for the U.S. government (specifically the Air Force) on Sunday, delivering a roughly $500 million GPS satellite constructed by Lockheed Martin into orbit on a Falcon 9 rocket from Cape Canaveral at 8:51 a.m. ET, the Guardian reported.\r\n\r\nThe launch itself was delayed several times over the past week—including once when the Falcon 9 rocket’s first stage displayed unexpected sensor readings and twice for inclement weather, according to Space.com. The Verge wrote the launch managed to avoid further delay due to the ongoing government showdown because funding for the Department of Defense has already been allocated for 2019.\r\n\r\nThe GPS III satellite SpaceX launched on Sunday (Vespucci) is a next-generation version that will eventually help offer significantly more accurate geolocation services, though as the Verge wrote, the Air Force is still working on the ground-based systems necessary to operate it:\r\n\r\nThe GPS III satellite will also feature a stronger transmitter as part of efforts to prevent signal jamming\r\n\r\nThe Falcon 9 in question’s first stage did not re-attempt landing, as the payload was too heavy and delivered too high into orbit for the rocket to meet performance requirements in its reusable configuration.\r\n\r\n“There simply was not a performance reserve to meet our requirements and allow for this mission to bring the first stage back,” Walter Lauderdale, mission director at the Air Force’s Space and Missile Systems Center (SMC) Launch Enterprise Systems Directorate, told reporters earlier this month, according to Space.com. However, he added that future GPS III missions may feature attempts to recover the first stage, depending on flight results from Sunday’s mission.'),
(17, 'Report: Wall Street Is Getting Cold Feet on Bitcoin as Crypto Crash Continues', '5c2082ccc677a5.85542680.jpg', 36, '2018-12-24', 1, 'The crypto crash has continued, with about $700 billion wiped off the market since its peak at around $800 billion at the start of the year, and leaving a trail of destroyed startups behind it. Bitcoin at one point closed in on the $3,000 price mark, well below both its peak of nearly $20,000 in 2017 and a so-called “floor” of $6,000. And now major Wall Street firms once rumored to be preparing entries to the cryptocurrency market—particularly bitcoin futures—appear to have gotten cold feet after a brutal beatdown in crypto prices this year, Bloomberg reported on Sunday.\r\n\r\nA bevy of major firms including Goldman Sachs, Morgan Stanley, Citigroup, and Barclays (of London) have all delayed plans to launch bitcoin-related financial services, Bloomberg wrote. Goldman, which “was among the first on Wall Street to clear Bitcoin futures,” was reportedly preparing a trading desk, and offers “derivatives on Bitcoin called non-deliverable forwards” (NDF), has yet to offer crypto trading and has seen little interest in the NDF product:\r\n\r\nThe bank has yet to offer trading of crypto and has gained little traction for its NDF product, having signing up just 20 clients, according to people familiar with the matter. Justin Schmidt, who was hired to head its digital-asset business, said at an industry conference last month that regulators are limiting what he can do. Still, Goldman plans to add a digital-assets specialist to its prime brokerage division, the person said\r\n\r\nSources told Bloomberg that Morgan Stanley “has been technically prepared to offer swaps tracking Bitcoin futures since at least September,” but yet to trade a single contract. Citigroup has not traded any of its cryptocurrency products “within existing regulatory structures, according to a separate person with knowledge of its business,” the site added, instead only conducting trades by proxy. Barclays lost two executives hired to explore the industry and told Bloomberg it has no plans to launch a crypto trading desk.\r\n\r\nMuch of the caution has been due to the crash, but other factors have included a lack of guidance from regulators and a bevy of criminal and other investigations in the sector, according to Bloomberg’s report.\r\n\r\nAs Bloomberg noted, true believers in cryptocurrency remain stalwart that the big financial institutions are still building the infrastructure to get into the market (which could rescue the plummeting prices of major coins like bitcoin). Some industry sites have portrayed the crash as an opportunity to clear out scammers and reduce price volatility. Bloomberg wrote:\r\n\r\nEven after the staggering sell-off in digital assets in 2018—a year after Bitcoin came in touching distance of $20,000 it now trades at around $4,000—crypto pros see signs institutions are getting ready to jump back in if they need to.\r\n\r\n“The more important story is all the infrastructure that’s being built now to enable institutional trading,” according to Ben Sebley, a former Credit Suisse Group AG trader who is now head of brokerage at crypto boutique NKB Group.\r\n\r\nEven after the plunge that erased $700 billion from the value of crypto assets, believers are sticking to their script... “It appears as if progress is coming to a halt, yet nothing could be further from the truth,” said Eugene Ng, a former Deutsche Bank AG trader in Singapore who has set up crypto hedge fund Circuit Capital.\r\n\r\nMoreover, Nasdaq and the New York Stock Exchange were both eyeing to move forward with futures projects in 2019 as of late November, per CNBC, though two that already existed—run by the Chicago Board Options Exchange and the Chicago Mercantile Exchange—had already reached “their lowest level since they were introduced in December.”\r\n\r\nBut earlier this month, Bloomberg separately reported the outlook isn’t much better.\r\n\r\n“Based on the GTI VERA Band Indicator, Bitcoin is below its lower band indicating more potential losses to come and no current floor,” the site wrote, with more losses likely to come.\r\n\r\n[Bloomberg]'),
(18, 'Flying Hotel', '5c208422acd2c8.18059325.jpg', 35, '2018-12-24', 0, 'Outline\r\nMessage claims that attached photographs show a unique flying luxury hotel called the “Hotelicopter” that is soon to begin its first tours.  \r\n\r\nBrief Analysis\r\nThe message was a 2009 April Fool’s joke created as a marketing campaign for a hotel search engine. Almost a decade on, versions of the hoax continue to cirulate.\r\n\r\nThe Hotelicopter features 18 luxuriously-appointed rooms for adrenaline junkies seeking a truly unique and memorable travel experience.\r\n\r\nEach soundproofed room is equipped with a queen-sized bed, fine linens, a mini-bar, coffee machine, wireless internet access, and all the luxurious appointments you’d expect from a flying five star hotel. Room service is available one hour after liftoff and prior to landing.” The Hotelicopter is due to fly maiden journey this summer(June 26th) with an undisclosed price…\r\n\r\nIf you are interested,There is three fly tour.\r\n\r\nInaugural Summer Tour – 14 days (Friday, June 26th, 2009 – Friday, July 10th, 2009)\r\n\r\nCalifornia Tour – 14 days (Friday, July 17th, 2009 to Friday, July 24rd, 2009)\r\nBay/Jamaica, European Tour – 16 days (Friday, July 31st, 2009 to Sunday, August 16th, 2009)\r\n\r\nDimensions Length: 42 m (137 ft)\r\nHeight: 28m (91 ft)\r\nMaximum Takeoff Weight: 105850 kg (232,870 lb)\r\nMaximum speed: 255 km/h (137 kt) (158 miles/h)\r\nCruising speed: 237 km/h (127 kt) (147 miles/h)\r\nOriginal Mi Range: 515 km (320 mi)\r\nOur augmented Mi Range – 1,296 km (700 mi)\r\n\r\n \r\n\r\nDetailed Analysis\r\nIn late March and early April 2009, stories about the “Hotelicopter” – a luxuriously appointed flying hotel – begin circulating via travel blogs and websites, social networking sites, and email. The stories included photographs of the Hotelicopter along with shots of rooms available for guests.\r\n\r\nA video of the Hotelicopter in action was also posted to YouTube. Supposedly, the Hotelicopter’s maiden voyage was scheduled for June 2009 with other “tours” to follow. \r\n\r\n\r\n\r\n\r\nAccording to the stories, the Hotelicopter is modelled on an old Soviet Mil V-12 helicopter and features 18 luxuriously-appointed soundproof rooms complete with queen-sized beds, wireless Internet and room service.\r\n\r\nHowever, the “Hotelicopter” was, in fact, an April Fools Day prank launched by a hotel search engine company. In a clever marketing ploy, the company used the prank as a promotional tool for a now-defunct hotel search engine website, hotelicopter.com. An article about the prank on m-Travel.com noted:\r\n\r\nA company, after being in news for its “flying-hotel joke”, has launched a new brand for its hotel search engine, hotelicopter.\r\n\r\n \r\n\r\nhotelicopter, which was previously known as VibeAgent, searches 30 travel sites in real-time, aggregating hotel room rates, availability, photos and video to instantly reveal where to find the best hotel deals. It has access to more than 65 travel partners and 150,000 hotels.\r\n\r\nHotelicopter.com owned up to the prank on its site blog:\r\n\r\nOh, and yes, we’re the folks behind the flying hotel of the same name. We were just having some fun, and had no idea it was going to blow up like it did – we’ve gotten about 1.5 million page and video views just in the last week – so thank you very much for all the attention and support – and hopefully we made you smile\r\n\r\nThe photographs of the supposed cabin interiors on the Hotelicopter were in fact taken from the Yotel website, apparently with Yotel’s full compliance and knowledge. Yotel offers tiny but very well appointed hotel rooms inside airports.\r\n\r\nAlmost a decade on, versions of the message continue to circulate and many recipients continue to believe its claims.\r\n\r\nFor the record, only two Mil V-12 helicopters were ever built. The first prototype was destroyed in a crash in 1969. The one remaining Mil V-12 is now displayed at the Monino air force museum in Moscow.'),
(19, 'The Impact of Fiction in our Evolution', 'blog-cover.png', 37, '2018-12-24', 3, '\r\nScientific data proves that people who read more fiction are more likely to be fast learners and have high adaptability to real-life situations. <br><br>\r\n\r\nCommunication, usage of tools, and various other actions that were believed to differentiate between humans and other living beings have since been proven to be universal actions that other beings can learn. So what differentiates humans from other animals? Human\'s can simulate different situations in their mind and learn real-world skills from fictional worlds. <br><br>\r\n\r\nBut isn\'t fiction being lost as the art of reading books seems to decrease so much every year? This is merely a misconception as fiction is not being lost, but it is just transforming. Poetry transforms into musical lyrics, stories transform into games, which provide an even better simulation due to being fiction that changes based on stimulation. <br><br>\r\n\r\nThe importance of fiction can be seen just from how our brain works. We spend on average, 4 hours a day in daydreams, which are fictions that our mind creates that allow us to simulate different situations. This ability is something we have developed through evolution. <br><br>\r\n\r\nThe only downside is the fact that nowadays we can spend more time in our fictional world than needed. Similar to how in today\'s world we face health issues through overeating because of the abundance of food in most developed areas. <br><br>'),
(20, '123', 'blog-cover.png', 40, '2023-05-28', 1, 'aeasdfsdfsffd'),
(21, '123123', '6472ee481ae2f3.69236401.jpg', 40, '2023-05-28', 0, '123123123213');

-- --------------------------------------------------------

--
-- 資料表結構 `blogvotes`
--

CREATE TABLE `blogvotes` (
  `voteId` int(11) NOT NULL,
  `voteBlog` int(11) NOT NULL,
  `voteBy` int(11) NOT NULL,
  `voteDate` date NOT NULL,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `blogvotes`
--

INSERT INTO `blogvotes` (`voteId`, `voteBlog`, `voteBy`, `voteDate`, `vote`) VALUES
(6, 12, 24, '2018-12-21', 1),
(7, 13, 24, '2018-12-23', 1),
(8, 15, 35, '2018-12-24', 1),
(9, 17, 24, '2018-12-24', 1),
(10, 16, 24, '2018-12-24', 1),
(11, 16, 37, '2018-12-24', 1),
(12, 16, 35, '2018-12-24', 1),
(13, 2, 37, '2018-12-24', 1),
(14, 14, 36, '2018-12-24', 1),
(15, 19, 37, '2018-12-24', 1),
(17, 16, 36, '2018-12-24', 1),
(18, 16, 25, '2018-12-24', 1),
(21, 14, 24, '2018-12-26', 1),
(22, 19, 24, '2018-12-27', 1),
(23, 19, 39, '2018-12-28', 1),
(24, 20, 40, '2023-05-28', 1);

--
-- 觸發器 `blogvotes`
--
DELIMITER $$
CREATE TRIGGER `calc_blog_votes_after_delete` AFTER DELETE ON `blogvotes` FOR EACH ROW BEGIN

		update blogs
        set blogs.blog_votes = blogs.blog_votes - old.vote
        where blogs.blog_id = old.voteBlog;	

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_blog_votes_after_insert` AFTER INSERT ON `blogvotes` FOR EACH ROW BEGIN
	
	update blogs
        set blogs.blog_votes = blogs.blog_votes + new.vote
        where blogs.blog_id = new.voteBlog;	
		
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_blog_votes_after_update` AFTER UPDATE ON `blogvotes` FOR EACH ROW BEGIN
	
		update blogs
        set blogs.blog_votes = blogs.blog_votes + (new.vote * 2)
        where blogs.blog_id = new.voteBlog;	
		
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_description`) VALUES
(4, 'finance sciences', 'all topics related to finance and economy like making double decker chocolate cake and how to end the world in 3 days'),
(5, 'gardening', 'different gardening techniques used to torture helpless victims and make them dream of attending horrible opera performances'),
(8, 'sad', 'sadsadsadsad'),
(9, 'Technical Difficulties', 'Issues and debates related to immediate actions which must be taken on event of a serious butthurt'),
(13, 'aaa', 'aaaaaaa');

-- --------------------------------------------------------

--
-- 資料表結構 `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_by` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `event_date` varchar(10) NOT NULL,
  `event_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `events`
--

INSERT INTO `events` (`event_id`, `event_by`, `title`, `date_created`, `event_date`, `event_image`) VALUES
(21, 24, 'annual suicide competition', '2018-12-23', '2019-01-01', 'event-cover.png'),
(22, 24, 'Flat Earther Convention 2019', '2018-12-24', '2018-12-02', 'event-cover.png'),
(23, 24, 'Food Gala', '2018-12-24', '2018-12-25', '5c209ba7d3f583.51289913.jpg'),
(24, 24, 'NUST massacre to cancel ESEs', '2018-12-24', '2018-12-26', '5c209c2766ac54.60298371.jpg'),
(25, 24, 'Annual Welcome Party', '2018-12-24', '2019-01-01', 'event-cover.png'),
(26, 24, 'Election Dharna', '2018-12-24', '2019-02-05', 'event-cover.png'),
(27, 24, 'Student Council Election', '2018-12-24', '2018-12-28', '5c209d6e0abe93.18464278.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `description` varchar(6000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `event_info`
--

INSERT INTO `event_info` (`event_id`, `event`, `title`, `headline`, `description`) VALUES
(13, 21, 'annual suicide competition', 'lezz go kill ourselves bois!', 'time to suicide!'),
(14, 22, 'Flat Earther Convention 2019', 'They are deceiving us!! Open your eyes!', 'The flat Earth society encourages you to open your eyes to the realities of the world. what we we donot realize is that the government and Satan are lying to us that the earth is round. But we KNOW. deep down in our hearts, we KNOW that the earth is the shape of a velociraptor. And we WILL make the world believe it or burn'),
(15, 23, 'Food Gala', 'lets get FAT! like Anas Kamal', 'FOOD IS GOOD FOOD IS LIFE<br> I WANT FOOD I WANT SPICE'),
(16, 24, 'NUST massacre to cancel ESEs', 'lets kill all the staff and cancel our papers', 'yay kill everyone like theres no tomorrow'),
(17, 25, 'Annual Welcome Party', 'welcome to NUST where we all study and do nothing else (seriously)', 'welcome to nust everyone everyone now go study'),
(18, 26, 'Election Dharna', 'HAMAREY SAATH DHAANDLI HUI HAI', 'Ye bik gai hai gormint,<br>\r\nye sarey ham ko pagal bana rahey hain'),
(19, 27, 'Student Council Election', 'Vote for the new council', 'pls vote :)');

-- --------------------------------------------------------

--
-- 資料表結構 `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `poll_desc` varchar(5000) NOT NULL,
  `locked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `polls`
--

INSERT INTO `polls` (`id`, `subject`, `created`, `modified`, `status`, `created_by`, `poll_desc`, `locked`) VALUES
(12, 'killing', '2018-12-04 20:27:26', '2018-12-04 20:27:26', '1', 24, '', 1),
(14, 'How to kill Linear Algebra', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1', 24, 'linear algebra has caused more deaths then eating pizza with pepsi in the last 69 years', 0),
(15, 'how to eat water', '2018-12-05 23:02:28', '2018-12-05 23:02:28', '1', 24, 'pls pls help me i dying of hunger i need a cigarette asap ', 1),
(17, 'what to buy on 9/11 festival', '2018-12-17 22:49:37', '2018-12-17 22:49:37', '1', 24, 'i want to celebrate 9/11 what do i buy to throw at people', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `poll_options`
--

INSERT INTO `poll_options` (`id`, `poll_id`, `name`, `created`, `modified`, `status`) VALUES
(7, 12, 'gun', '2018-12-04 20:27:26', '2018-12-04 20:27:26', '1'),
(8, 12, 'opera', '2018-12-04 20:27:26', '2018-12-04 20:27:26', '1'),
(9, 12, 'poison', '2018-12-04 20:27:26', '2018-12-04 20:27:26', '1'),
(10, 12, 'algebra', '2018-12-04 20:27:26', '2018-12-04 20:27:26', '1'),
(18, 14, 'kill the teacher', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1'),
(19, 14, 'kill the creator', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1'),
(20, 14, 'kill everyone', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1'),
(21, 14, 'kill yourself', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1'),
(22, 14, 'how about a cup of tea?', '2018-12-05 22:38:43', '2018-12-05 22:38:43', '1'),
(26, 15, 'just eat it wtf', '2018-12-05 23:02:29', '2018-12-05 23:02:29', '1'),
(27, 15, 'go to hell', '2018-12-05 23:02:29', '2018-12-05 23:02:29', '1'),
(31, 17, 'a bomb', '2018-12-17 22:49:37', '2018-12-17 22:49:37', '1'),
(32, 17, 'my feelings', '2018-12-17 22:49:38', '2018-12-17 22:49:38', '1'),
(33, 17, 'a rock', '2018-12-17 22:49:38', '2018-12-17 22:49:38', '1'),
(34, 17, 'THE mount everest', '2018-12-17 22:49:38', '2018-12-17 22:49:38', '1'),
(35, 17, 'MY mount everest', '2018-12-17 22:49:38', '2018-12-17 22:49:38', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `poll_option_id` int(11) NOT NULL,
  `vote_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `poll_votes`
--

INSERT INTO `poll_votes` (`id`, `poll_id`, `poll_option_id`, `vote_by`) VALUES
(6, 12, 7, 24),
(8, 12, 10, 25),
(11, 12, 10, 27),
(13, 14, 20, 27),
(14, 14, 20, 25),
(19, 15, 26, 24),
(20, 14, 22, 24),
(21, 12, 10, 36),
(22, 15, 27, 37),
(23, 15, 27, 35),
(24, 14, 18, 38);

-- --------------------------------------------------------

--
-- 資料表結構 `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(11) NOT NULL,
  `post_by` int(11) NOT NULL,
  `post_votes` int(11) NOT NULL DEFAULT 0,
  `post_Img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `posts`
--

INSERT INTO `posts` (`post_id`, `post_content`, `post_date`, `post_topic`, `post_by`, `post_votes`, `post_Img`) VALUES
(82, 'qqqqq', '2018-11-19 16:03:59', 31, 26, 1, ''),
(83, 'qqqqq', '2018-11-19 16:05:30', 31, 26, 1, ''),
(84, 'go away', '2018-11-19 16:06:36', 31, 24, 1, ''),
(85, 'fuck off', '2018-11-19 16:07:03', 31, 25, 1, ''),
(86, 'yo wtf u niggas doing?\r\n', '2018-11-19 19:59:17', 31, 27, 0, ''),
(87, 'im bored tf am i supposed to do?', '2018-11-21 16:04:52', 35, 25, 0, ''),
(89, ' hj bjhb hj nj b j njn jjnsgjnfj ngjf ngjf ngjfn gdjf ngdjn gfdngjdn gjdfng djf gjdfn gjdjf gjd gjdf ngjdn fgjndjf gjdf ngjd fngjndfjg djf gjdf gjdfjgndjfnd gjdnfgjdfj gdjf gjdf gjdfjg dj gjd gjdjg jd gjdjg ndj gjdfn gjdnfj gndjf ngjd n', '2018-11-21 16:06:35', 31, 25, 1, ''),
(94, 'chup kar gashti', '2018-11-28 18:02:58', 31, 29, 1, ''),
(95, 'ami g ami g\r\n', '2018-11-30 14:19:52', 31, 29, 1, ''),
(98, 'a', '2018-12-01 21:06:57', 31, 27, 0, ''),
(100, 'hello people how are you all doing i hope ure doing well. if so, please kill yourself right now this is a matter of urgency we have to control the world population. this is a great cause and its an honor for all of u that u will die for such a great cause <br>', '2018-12-16 12:09:28', 31, 24, 2, ''),
(101, 'i have a serious butthurt somebody pls help ;_;', '2018-12-16 21:59:22', 36, 24, 1, ''),
(104, 'how would i know', '2018-12-17 22:03:29', 32, 24, 1, ''),
(105, 'qqqqqqqqqqqqqq', '2018-12-17 22:27:00', 39, 24, 0, ''),
(107, 'aa', '2018-12-17 22:44:48', 41, 24, 1, ''),
(108, 'sdadadsadad', '2018-12-20 13:39:57', 31, 24, 1, ''),
(109, 'Im stuck at database project. Need help ! Cant create a schema in SQL.', '2018-12-24 11:57:29', 42, 36, -2, ''),
(110, 'Can anyone please tell me how to debug my C++ code?', '2018-12-24 12:04:30', 43, 35, -2, ''),
(111, 'G O O G L E it, ure welcome', '2018-12-24 12:06:16', 43, 24, 0, ''),
(112, 'Have you tried downloading some more RAM?', '2018-12-24 12:07:33', 43, 37, 1, ''),
(113, 'What do libraries do? Allow you to read books in your code? Or embed books in your code?', '2018-12-24 12:11:09', 44, 35, -2, ''),
(114, 'pls die', '2018-12-24 12:13:37', 44, 37, 3, ''),
(115, 'Pewdiepie >>>>> T-series', '2018-12-24 12:41:02', 44, 36, 2, ''),
(116, '\"It\'s okay if you\'re not made for coding\" - Sir Faisal Shafait', '2018-12-24 12:43:48', 43, 36, 0, ''),
(117, 'SUBSCRIBE TO T SERIES!!', '2018-12-24 12:58:21', 44, 24, 1, ''),
(118, 'hello', '2018-12-24 15:37:17', 44, 38, 1, ''),
(119, 'hey', '2018-12-25 22:26:12', 44, 24, 1, ''),
(120, 'we need to summon the magic cat to answer this question', '2018-12-27 18:01:51', 42, 24, 0, ''),
(121, 'hello', '2018-12-28 18:01:24', 44, 24, 1, ''),
(122, 'hey\r\n', '2018-12-31 19:54:09', 31, 24, 1, ''),
(123, '123', '2023-05-29 15:27:22', 45, 40, -1, ''),
(124, '1234345', '2023-05-29 15:27:31', 45, 40, 1, ''),
(125, '45452', '2023-05-29 15:31:44', 45, 40, 0, ''),
(126, '78578527', '2023-05-29 15:32:01', 31, 40, 0, ''),
(127, '321', '2023-05-29 15:41:34', 35, 40, 0, ''),
(128, '654651', '2023-05-29 16:00:24', 41, 40, 1, ''),
(129, '12312313', '2023-05-30 14:11:24', 45, 40, 0, ''),
(130, '123', '2023-05-31 10:39:56', 46, 46, 0, ''),
(131, '+85464', '2023-05-31 15:19:38', 47, 52, 0, ''),
(133, '我知道', '2023-06-02 16:37:29', 48, 56, 0, NULL),
(134, 'ss', '2023-06-02 16:57:15', 50, 56, 0, NULL),
(135, 'aaaaaaa', '2023-06-02 16:57:39', 51, 56, 0, NULL),
(139, 'ss', '2023-06-02 17:53:16', 55, 56, 0, NULL),
(140, 'ss', '2023-06-02 17:57:18', 56, 56, 0, NULL),
(141, 'sss', '2023-06-02 18:00:29', 57, 56, 0, NULL),
(142, 'ss', '2023-06-02 18:08:52', 58, 56, 0, NULL),
(143, 'sss', '2023-06-02 18:11:48', 59, 56, 0, NULL),
(150, 'ss', '2023-06-02 21:20:07', 66, 56, 0, NULL),
(151, 'dd', '2023-06-02 21:22:11', 67, 56, 0, NULL),
(152, 'ss', '2023-06-02 21:26:48', 68, 56, 0, NULL),
(153, 'aa', '2023-06-02 23:39:44', 69, 56, 0, NULL),
(154, 'ss', '2023-06-02 23:44:18', 70, 56, 0, NULL),
(155, 'aaa', '2023-06-03 12:12:28', 71, 56, 0, NULL),
(156, 'ss', '2023-06-03 12:19:33', 72, 56, 0, NULL),
(159, 'ss', '2023-06-03 13:10:24', 78, 56, 0, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `postvotes`
--

CREATE TABLE `postvotes` (
  `voteId` int(11) NOT NULL,
  `votePost` int(11) NOT NULL,
  `voteBy` int(11) NOT NULL,
  `voteDate` date NOT NULL,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `postvotes`
--

INSERT INTO `postvotes` (`voteId`, `votePost`, `voteBy`, `voteDate`, `vote`) VALUES
(1, 89, 24, '2018-12-15', 1),
(2, 82, 24, '2018-12-17', 1),
(3, 100, 24, '2018-12-16', 1),
(4, 82, 25, '2018-12-16', -1),
(5, 100, 25, '2018-12-16', 1),
(6, 94, 25, '2018-12-16', 1),
(7, 101, 24, '2018-12-20', 1),
(8, 104, 37, '2018-12-24', 1),
(9, 110, 24, '2018-12-24', -1),
(10, 109, 37, '2018-12-24', -1),
(11, 110, 37, '2018-12-24', -1),
(12, 113, 37, '2018-12-24', -1),
(13, 114, 37, '2018-12-24', 1),
(14, 114, 35, '2018-12-24', 1),
(15, 112, 24, '2018-12-24', 1),
(16, 82, 36, '2018-12-24', 1),
(17, 115, 24, '2018-12-27', 1),
(18, 113, 36, '2018-12-24', -1),
(19, 115, 36, '2018-12-24', 1),
(20, 113, 38, '2018-12-24', 1),
(21, 113, 24, '2018-12-25', -1),
(22, 114, 24, '2018-12-25', 1),
(23, 118, 24, '2018-12-27', 1),
(24, 119, 24, '2018-12-27', 1),
(25, 117, 24, '2018-12-27', 1),
(26, 109, 24, '2018-12-27', -1),
(27, 121, 24, '2018-12-28', 1),
(28, 83, 24, '2018-12-31', 1),
(29, 84, 24, '2018-12-31', 1),
(30, 85, 24, '2018-12-31', 1),
(31, 95, 24, '2018-12-31', 1),
(32, 108, 24, '2018-12-31', 1),
(33, 122, 24, '2018-12-31', 1),
(34, 107, 40, '2023-05-29', 1),
(35, 128, 40, '2023-05-29', 1),
(36, 124, 40, '2023-05-30', 1),
(37, 123, 40, '2023-05-30', -1);

--
-- 觸發器 `postvotes`
--
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_delete` AFTER DELETE ON `postvotes` FOR EACH ROW BEGIN

		update posts
        set posts.post_votes = posts.post_votes - old.vote
        where posts.post_id = old.votePost;	

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_insert` AFTER INSERT ON `postvotes` FOR EACH ROW BEGIN
	
	update posts
        set posts.post_votes = posts.post_votes + new.vote
        where posts.post_id = new.votePost;	
		
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_update` AFTER UPDATE ON `postvotes` FOR EACH ROW BEGIN
	
		update posts
        set posts.post_votes = posts.post_votes + (new.vote * 2)
        where posts.post_id = new.votePost;	
		
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(11) NOT NULL,
  `topic_by` int(11) NOT NULL,
  `topic_img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_subject`, `topic_date`, `topic_cat`, `topic_by`, `topic_img`) VALUES
(31, 'how to plant a nuclear bomb', '2018-11-18 11:13:00', 5, 24, NULL),
(32, 'how to kill myself', '2018-11-18 11:22:59', 5, 24, NULL),
(35, 'lol', '2018-11-21 16:04:52', 5, 25, NULL),
(36, 'how to drink tea', '2018-12-16 21:59:22', 9, 24, NULL),
(39, 'qqqqqqqqqqqqqqq', '2018-12-17 22:27:00', 8, 24, NULL),
(41, 'aa', '2018-12-17 22:44:48', 5, 24, NULL),
(42, 'Help in SQL', '2018-12-24 11:57:29', 9, 36, NULL),
(43, 'Debugging', '2018-12-24 12:04:30', 9, 35, NULL),
(44, 'Libraries', '2018-12-24 12:11:09', 9, 35, NULL),
(45, '123', '2023-05-29 15:27:22', 13, 40, NULL),
(46, '123', '2023-05-31 10:39:56', 13, 46, NULL),
(47, '654', '2023-05-31 15:19:38', 13, 52, NULL),
(48, '測試', '2023-06-02 16:37:29', 8, 56, 'default.png'),
(50, 'ss', '2023-06-02 16:57:15', 13, 56, NULL),
(51, 'aaaaa', '2023-06-02 16:57:39', 13, 56, NULL),
(52, '測試', '2023-06-02 17:31:47', 13, 56, NULL),
(55, 'ss', '2023-06-02 17:53:16', 13, 56, 'uploads/6479bc0c58ffd3.96595545.jpg'),
(56, 'ss', '2023-06-02 17:57:18', 13, 56, '6479bcfee119a7.41887736.png'),
(57, 'ss', '2023-06-02 18:00:29', 13, 56, '6479bdbd8ab367.90596822.jpg'),
(58, 'ss', '2023-06-02 18:08:52', 13, 56, NULL),
(59, 'ss', '2023-06-02 18:11:48', 13, 56, 'event-cover.png'),
(66, 'ss', '2023-06-02 21:20:07', 13, 56, '6479ec873e4845.62598960.png'),
(67, 'ss', '2023-06-02 21:22:11', 13, 56, '../uploads/6479ed03444c81.52370821.jpg'),
(68, 'ss', '2023-06-02 21:26:48', 13, 56, '6479ee182feed8.73259956.jpg'),
(69, 'ss', '2023-06-02 23:39:44', 13, 56, '6479c5cfc669f1.62606233.jpg'),
(70, 'ss', '2023-06-02 23:44:18', 13, 56, NULL),
(71, 'ss', '2023-06-03 12:12:28', 13, 56, NULL),
(72, 'ss', '2023-06-03 12:19:33', 13, 56, NULL),
(78, 'sss', '2023-06-03 13:10:24', 13, 56, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `userLevel` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `gender` char(1) NOT NULL,
  `headline` varchar(500) DEFAULT NULL,
  `bio` varchar(4000) DEFAULT NULL,
  `userImg` varchar(500) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`idUsers`, `userLevel`, `name`, `uidUsers`, `emailUsers`, `pwdUsers`, `gender`, `headline`, `bio`, `userImg`) VALUES
(24, 1, 'Crazy', 'saad', 'muhammadsaad.crytek@gmail.com', '$2y$10$NlmqH7ELe9VUFwLqWuFcv.2Js/8jJ36Jga3KWYvXFuaaQN4CzaEtO', 'm', 'CEO of Google and Tesla (Elon is my wife)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '5c2268b62fa342.98640611.jpg'),
(25, 0, '', 'sadcat', 'a@a.a', '$2y$10$RiiU91TqjjVhPdVpypQBtuq0etClplrZ3HNTLPFrUheJ.sy7ZifwK', 'f', '', '', '5bf28f767563d4.32287587.jpg'),
(26, 0, '', 'crazyblogger', 'aaa@gmail.com', '$2y$10$zXwVteLyKxjwSMDk.a8/HeoYzmfFInzvftURiCyt27z03mgbdkSNy', 'm', '', '', '5c2097e915f3e7.13501262.jpg'),
(27, 0, '', 'vegetapoopoo', 'asd@asd.asd', '$2y$10$S4X2HZUWyQXV7zLwirj2dOBVEbDHFDhsX6y91asglNa6QBnlq9ik.', 'f', '', '', '5bf2ebf077fb14.69408796.gif'),
(29, 0, '', 'yhamster', 'anas.tasadduq@gmail.com', '$2y$10$j5scT2dgJuZGBBYBFRsKVe.n50dLCjdYvcpY1Vy1.jES8f6ojulAi', 'm', '', '', '5c03ad0de59709.45156405.jpg'),
(30, 0, '', 'Owais', 'owaisrehman110@gmail.com', '$2y$10$EM.p1ed./gfrenQRn5Je1etujHptdTebKy8fgDU0de1wGqQvOOCcK', 'm', '', '', 'default.png'),
(31, 0, '', 'constipated', 'was@was.was', '$2y$10$BnAjjEdfYa0koUab7jB2wuK/Hw5PEoRHMsIjuPOgFDK3umLLPnE2a', 'm', '', '                                Tell people about yourself\r\n                            ', '5c2099a0e98e21.69993944.jpg'),
(32, 0, 'burhan', 'progamer', 'qq@qq.qq', '$2y$10$9RwEOoQi4i7BHcVuN9sihOQ156yAqPOi1/cGayAc83glZMUJ8B702', 'f', 'what to do with myself', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '5c1b521a779e33.90465765.jpg'),
(33, 0, 'soSaad', 'sad', 'sad@sad.sad', '$2y$10$MgXJs2KXFHDywcokNF.Ya.FubCPFkCV5WhvpzyDw7KioB.hImzjpS', 'm', '', '', '5c1e837c23fbd4.49025477.jpg'),
(34, 0, 'aass', 'designer', 'sss@sss.sss', '$2y$10$a/DczAbcWogc9E.QVtQ27uaIaQKIY.qi.d7OSyOI/XHT.g.DCF0XG', 'f', 'hallo hallo', 'pls go die, seriously', '5c20049a28f083.62453939.jpg'),
(35, 0, 'Anas', 'aitasadduq', 'atasadduq.bese17seecs@seecs.edu.pk', '$2y$10$mE..r1B9evnZeZ03CRmChO6hOCzWyzSOiciIjvYynq4atCtWBZtfy', 'm', 'I\'m great!', 'I don\'t really want to tell much about myself...', '5c207f31c827d2.61541321.jpg'),
(36, 0, 'Ubaid', 'UbaidAsim', 'ubaidasim514@gmail.com', '$2y$10$mJY/nezYA6PXFy0t.xXMyuVQOAdLi5I/ag.SWwUVFvHkZGcfqwd3S', 'm', 'Freelance Graphics and Brand Designer, Social Media Strategist', 'Software Engineering Student at SEECS, NUST', '5c207f7341e066.29286370.jpg'),
(37, 0, 'Syed', 'syedanaskamal', 'syedanaskamal@gmail.com', '$2y$10$.fUUvM3BoaCPV9Blp8CobONwQpI1r6kSUnts.QTm3a9Yovo5le.N6', 'm', 'wassup', 'no', 'default.png'),
(38, 0, '', 'testuser', 'testuser@test.com', '$2y$10$80YI6fiwFyOLHhn4CIOG/.xSAmkvG1L12LHGXjlNMdjwxeQCx/GNy', 'm', '', '', '5c20b68db30f81.29224418.jpg'),
(39, 0, '', 'marium', 'ms.merium.fatima@gmail.com', '$2y$10$l0AOTRif1CfL7pONxdOxHuyg4worYd4yagtUcom9u/LPeQs6n4ZN2', 'f', '', '', 'default.png'),
(40, 0, 'kaiwei', 'kaiwei', 'kaiweiwang0106@gmail.com', '$2y$10$Nu4NlvaERaa1XA6lkLyCsulZ0Fb3CESWkLFwd7gHYvMbRtrtl/r4y', 'm', 'fuck you', NULL, 'default.png'),
(46, 0, '123', '123', '123@gmail.com', '$2y$10$2Z6pSYOl0dr.rO.H0K/q1eD/RU0meV5OoAIFmu3sGBqYYnLSSM5su', 'm', '', '', 'default.png'),
(51, 0, '王凱', '321', '321@gmail.com', '$2y$10$Z6InT/I.owAZIryuP5idPeipieLWjU9VG6HGLsQ5m4RxB.qbJ0vpG', 'm', '', '', '6477699c8d3190.19631461.jpg'),
(52, 0, '878', '456', '456@gmail.com', '$2y$10$LQVNqiuKsVWlaoGhB1ACJuX5Vp.qnDvDaT7Fw3G4PPGz6HGxV38Bq', 'f', '我好帥', '義大利麵、ramen\r\n', '64778d4ca4a378.26228403.jpg'),
(55, 0, '135', '135', '135@gmail.com', '$2y$10$k07//BgvA4dbdau0hOf0teYX7gK9.H9TIcT7udt6695udhGB1POve', 'm', '', '', '647756f7e666a6.46635208.jpg'),
(56, 0, '陳啓恩', 'a1103316', 'a1103316@mail.nuk.edu.tw', '$2y$10$o558Ie.TK7mJhD1BKloPBery2TxssvRST2yA9jX8LBS9qo0zhybOG', 'm', '', '', '647986d93550c9.04963003.png');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_by` (`blog_by`);

--
-- 資料表索引 `blogvotes`
--
ALTER TABLE `blogvotes`
  ADD PRIMARY KEY (`voteId`),
  ADD KEY `voteBlog` (`voteBlog`),
  ADD KEY `voteBy` (`voteBy`);

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name_unique` (`cat_name`);

--
-- 資料表索引 `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `events_ibfk_1` (`event_by`);

--
-- 資料表索引 `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event` (`event`),
  ADD KEY `title` (`title`);

--
-- 資料表索引 `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- 資料表索引 `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- 資料表索引 `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `poll_option_id` (`poll_option_id`),
  ADD KEY `vote_by` (`vote_by`);

--
-- 資料表索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_topic` (`post_topic`),
  ADD KEY `post_by` (`post_by`);

--
-- 資料表索引 `postvotes`
--
ALTER TABLE `postvotes`
  ADD PRIMARY KEY (`voteId`),
  ADD KEY `voteBy` (`voteBy`);

--
-- 資料表索引 `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `topic_cat` (`topic_cat`),
  ADD KEY `topic_by` (`topic_by`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blogvotes`
--
ALTER TABLE `blogvotes`
  MODIFY `voteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `postvotes`
--
ALTER TABLE `postvotes`
  MODIFY `voteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`blog_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `blogvotes`
--
ALTER TABLE `blogvotes`
  ADD CONSTRAINT `blogvotes_ibfk_1` FOREIGN KEY (`voteBlog`) REFERENCES `blogs` (`blog_id`),
  ADD CONSTRAINT `blogvotes_ibfk_2` FOREIGN KEY (`voteBy`) REFERENCES `users` (`idUsers`);

--
-- 資料表的限制式 `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`event_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `event_info`
--
ALTER TABLE `event_info`
  ADD CONSTRAINT `event_info_ibfk_1` FOREIGN KEY (`event`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE;

--
-- 資料表的限制式 `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD CONSTRAINT `poll_votes_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_2` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_3` FOREIGN KEY (`vote_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;

--
-- 資料表的限制式 `postvotes`
--
ALTER TABLE `postvotes`
  ADD CONSTRAINT `postvotes_ibfk_1` FOREIGN KEY (`voteBy`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;

--
-- 資料表的限制式 `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`topic_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
