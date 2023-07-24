-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 04:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'michaelsaiba84@gmail.com', NULL, '$2a$12$tHNxVvRGcQLMU367wvrhyuyaYlyRP4VGJrOVAIVnqHDHv/Xq0qix2', 'oVjaI5IkHpnO49Vz3Phs605GKqoaZ42d8irYQDy1uX6udrgkRRuxDv7BKgku', NULL, '2020-03-04 13:39:05', '2020-11-23 07:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `admins_password_resets`
--

CREATE TABLE `admins_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `category` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_mime` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `synopsis` varchar(600) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `blog_type` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `visibility` varchar(100) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `comment` varchar(15) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `synopsis`, `thumbnail`, `blog_type`, `url`, `meta_tags`, `meta_description`, `status`, `visibility`, `publish_time`, `featured`, `comment`, `view_count`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Adding a personal touch to rentals', '<h3 class=\"blog-title\">Adding a personal touch to rentals</h3>\r\n<div>\r\n<p>You are probably tired of putting up with bland wall in your rented house but afraid of making somewhat permanent changes on account of being at loggerheads with your landlord. However most landlords have come to understand that the design might not satisfy every tenant&rsquo;s appetite. When consulted in advance they allow you add a different paint if you offer to paint over when moving out if your shades is not their cup of coffee.</p>\r\n<p><img class=\"wp-image-770 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/dining-room-3108037_960_720-1-300x178.jpg\" sizes=\"(max-width: 320px) 100vw, 320px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/dining-room-3108037_960_720-1-300x178.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/dining-room-3108037_960_720-1-768x457.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/dining-room-3108037_960_720-1.jpg 960w\" alt=\"\" width=\"100%\" /></p>\r\n<p>In spite of the type of space you want to decorate, the most important thing is paying attention to detail. Here are some tricks that can be employed that can be done with nominal cost and effort.</p>\r\n<ul>\r\n<li><strong>Do light colors if your rooms are small to make them feel bigger</strong></li>\r\n</ul>\r\n<p><img class=\"wp-image-769 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/chairs-2181968_960_720-300x198.jpg\" sizes=\"(max-width: 320px) 100vw, 320px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/chairs-2181968_960_720-300x198.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/chairs-2181968_960_720-768x506.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/chairs-2181968_960_720.jpg 960w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<ul>\r\n<li><strong>Opt for fun temporary features by using wall hangings as opposed to wallpaper&nbsp;</strong></li>\r\n</ul>\r\n<p><img class=\"wp-image-772 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720-300x200.jpg\" sizes=\"(max-width: 320px) 100vw, 320px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720-768x512.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720-800x533.jpg 800w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/living-room-3498914_960_720.jpg 960w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<ul>\r\n<li>You can choose to create a mini gallery of photographs, arts or a collection of objects that have a special meaning to you on a bare wall.</li>\r\n</ul>\r\n<p><img class=\"alignnone  wp-image-771 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/vintage-traditional-realistic-frames-set-dark-wall-isolated-vector-illustration_1284-12529-300x300.jpg\" sizes=\"(max-width: 320px) 100vw, 320px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/vintage-traditional-realistic-frames-set-dark-wall-isolated-vector-illustration_1284-12529-300x300.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/vintage-traditional-realistic-frames-set-dark-wall-isolated-vector-illustration_1284-12529-150x150.jpg 150w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/vintage-traditional-realistic-frames-set-dark-wall-isolated-vector-illustration_1284-12529.jpg 626w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<p>If you distributing the wall hangings, do not hang them too high, you shouldn&rsquo;t have to look up so see a wall art, do eye level on the chosen wall sides instead.</p>\r\n<p><img class=\" wp-image-776 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/white-frame-mock-up-wall_23-2148374732-300x220.jpg\" sizes=\"(max-width: 319px) 100vw, 319px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/white-frame-mock-up-wall_23-2148374732-300x220.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/white-frame-mock-up-wall_23-2148374732.jpg 626w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<ul>\r\n<li>Don&rsquo;t be afraid to accessorize using assorted pillows in different colors and sizes, a chandelier, etc&nbsp; that helps you to directly inject your personality and style into your room/house.</li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; If monochrome colors are your interest, spice things up with texture.</p>\r\n<p><img class=\" wp-image-765 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/couch-with-blue-cushion_1203-320-300x200.jpg\" sizes=\"(max-width: 319px) 100vw, 319px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/couch-with-blue-cushion_1203-320-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/couch-with-blue-cushion_1203-320-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/couch-with-blue-cushion_1203-320.jpg 626w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<ul>\r\n<li>If you are a lover of nature, invite some plants to your rooms; a vase on the living room table, a flower port in the lounge etc. But be careful not to turn your home into a jungle!</li>\r\n</ul>\r\n<p><img class=\"alignnone  wp-image-777 aligncenter\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/shelves-4032134_960_720-300x169.jpg\" sizes=\"(max-width: 320px) 100vw, 320px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2019/03/shelves-4032134_960_720-300x169.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/shelves-4032134_960_720-768x432.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2019/03/shelves-4032134_960_720.jpg 960w\" alt=\"\" width=\"100%\" loading=\"lazy\" /></p>\r\n<p>P.S</p>\r\n<p>Avoid cluttering a room with stuff to a point of cramping the house but rather give your house that polished look and a space you&rsquo;ll feel proud of and enjoy everyday.</p>\r\n<p>Allows your personality to shine within the theme colors created!</p>\r\n<p>Life is too short to live in a home you don&rsquo;t love.</p>\r\n</div>', 'Incididunt autem exe', 'hosP7N.jpg', 5, 'adding-a-personal-touch-to-rentals', 'Soluta inventore adi', 'Molestias dignissimo', 31, 'public', NULL, NULL, NULL, 1, 1, 1, '2022-05-13 07:50:10', '2022-05-23 10:05:39'),
(2, 'Home Buying Tips', '<p>Home ownership&nbsp;is the passport to long-term and short-term commercial success. Long-term; you will build your net worth and short-term; you will be in a position to enjoy paying yourself instead of a landlord.</p>\r\n<p>&lsquo;Wanting to&rsquo; and &lsquo;being ready&rsquo; are two distinct status. Well, are you ready? Here are some tips;</p>\r\n<p><strong>Do a check on your credit score</strong><br /><a href=\"https://www.rochman-properties.co.ke/\">Mortgage rates</a>&nbsp;are greatly impacted by your credit score. The higher the credit score, the lower the interest rates. But just what are some of the main determinants of a credit score?</p>\r\n<p>a. Payment history<br />b. Credit utilization<br />c. Length of history<br />d. Types of credit<br />e. New Credit</p>\r\n<p>Shy away from getting new credit in under a year of buying a home as this might temporarily lower your score.</p>\r\n<p>Longer credit history also makes you look more credit-responsible.<br />Maybe it&rsquo;s about time you create a healthy credit relationship with your bank.</p>\r\n<p><strong>Choose a financier</strong><br />Don&rsquo;t just settle for the first lender you get to know. Instead, research on various banks, lenders and credit unions, comparing their interest rates, fees and repayment terms.</p>\r\n<p><strong>Boost your down payment</strong><br />Irrespective of the cost of the house, the more the down payment the lesser you get to pay per month and consequently the more comfortable you will be throughout the loan payment season.</p>\r\n<p>Land selling properties or agents also give you a more flexible payment plan when you deposit a higher percentage as this offers them security as well.</p>\r\n<p><strong>Look for the Company/Agent</strong><br />The real estate industry is currently saturated with agents and companies looking to get business from you. How do you know which ones to work with and which ones to kick out?</p>\r\n<p>Think of the one with excellent credentials with a proven&nbsp;<a href=\"https://www.rochman-properties.co.ke/about-us-2/\">track record</a>&nbsp;to deliver. How long the company or agent has been in existence in the industry and talking to a potential agent&rsquo;s former client(s) may help you determine if they&rsquo;re the right fit for you.</p>\r\n<p><strong>Location! Location! Location!</strong><br />This is by far the most common mantra in real estate but a location that appeal to you will largely be a matter of personal choice factoring in accessibility, appearance and amenities. What makes a good location?</p>\r\n<p>a. Centrality<br />b. Neighbourhood<br />c. Development</p>\r\n<p>A great location should at least include important amenities such as grocery stores, shops and restaurants. Most people like to frequent places that are convenient.</p>\r\n<p>It&rsquo;s not just present amenities that matter, future plans can dramatically improve property values in the area. When shopping for a house, try to find out the planned public, commercial or residential developments and how they might affect the desirability of the surrounding areas..</p>\r\n<p>It is almost everyone&rsquo;s dream to live in the upmarket but when that dream is not aligned to your current budget, don&rsquo;t be afraid to go on a shopping spree elsewhere.</p>\r\n<p><strong>Read the fine prints</strong><br />Scrutinize carefully the payment terms and involve a legal practitioner to help you decode the legal English, which is quite different than what we are used to and make certain the property you are about to buy is free from any encumbrances. Lawyers also do due diligence to ensure the property has not been used to secure loans, and if that is the case they ensure the contract protects the buyer in case of default.</p>\r\n<p><strong>Conclusion</strong><br /><a href=\"https://www.rochman-properties.co.ke/\">Home ownership</a>&nbsp;in Kenya has become a fashion statement and attracting fraud in the real estate market who sell ghost houses and plots to naive real estate investors.</p>\r\n<p>Site visit(s) is a major step that cannot be in any way ignored whether you are buying a ready house, one under construction or off-plan. Site Visits helps you ascertain the authenticity of the property, the progress of the developments in the area and verify the amenities close by.</p>\r\n<p>If you are a Kenyan in Diaspora, send a trusted relative or friend to view the house on your behalf before you commit to buying the property.</p>', 'Home ownership is the passport to long-term and short-term commercial success. Long-term; you will build your net worth and short-term; you will be in a position to enjoy paying yourself instead of a landlord.', 'Xdc0QQ.jpg', NULL, 'home-buying-tips', NULL, NULL, 31, 'public', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:34:23', '2022-06-13 14:34:23'),
(3, 'Digitization of Property Registration process in Kenya', '<p>Technology has overtime proved to provide transformative impact in improving the effectiveness of the government. New technologies hold great promise for improving government effectiveness, a multi-faceted concept that includes, but not limited to, efficient delivery of public goods such as education, health, social security, and transport and eventually control of corruption.</p>\r\n<p>On the 18<sup>th</sup>&nbsp;of April the Ministry of Lands announced a change in the property registration process whose target is to ease the property registration process thereby making the business process easy-peasy, well maybe not so easy.</p>\r\n<p>Lands Cabinet Secretary Farida Karoney, while addressing a stakeholder&rsquo;s forum on the 22<sup>nd</sup>&nbsp;of April 2019, said all security measures of ensuring safety of the documents will be put in place and members of the public should trust the system.</p>\r\n<p>&ldquo;Our aspiration is to make property registration process possible within 24 hours which will make Kenya the first in Africa since Mauritius is still ahead of Kenya,&rdquo; said the CS. &ldquo;With the best internet penetration in the Country there is no other good reason that will keep us behind from making it easier for every Kenyan to do business,&rdquo; she added.</p>\r\n<p>This is indeed good news for both buyers and sellers in the Real Estate industry and success of the system will greatly improve business and reduce errors of missing documents that have been experienced from time in memorial.</p>', 'Technology has overtime proved to provide transformative impact in improving the effectiveness of the government. New technologies hold great promise for improving government effectiveness, a multi-faceted concept that includes, but not limited to, efficient delivery of public goods such as education, health, social security, and transport and eventually control of corruption.', '1iUyLU.jpeg', NULL, 'digitization-of-property-registration-process-in-kenya', NULL, NULL, 7, 'public', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:38:37', '2022-06-13 14:38:37'),
(4, 'Process of buying Land in Kenya', '<p>Buying land in Kenya can be an ordeal especially if you are a first time buyer. With so many vendors including individuals, legit and briefcase companies the experience and process will vary depending on who you choose to work with in order to acquire land.</p>\r\n<p>You probably have already gone for several site visits and ascertained the physical availability of the land and gone to the vendor&rsquo;s office to established their physical address but then what do you do next?</p>\r\n<ol>\r\n<li><strong>Conduct a search at the Ministry of Lands</strong></li>\r\n</ol>\r\n<p>Request for a copy of the title through your advocate who will conduct a search with the Ministry of Land at the district or county headquarters.&nbsp;</p>\r\n<p>This process helps to ascertain the seller&rsquo;s right to transfer ownership, tax records, past ownerships, financial transactions tied to the title e.g. if the title is charged/used to secure a loan and any court order that may have prohibited any transaction of the land among others.</p>\r\n<p>It will only cost you 520 Kenyan Shillings to conduct a search which is normally out within 2 hours.</p>\r\n<p>2.&nbsp;<strong>Find any unpaid rates</strong></p>\r\n<p>Land cannot be transferred if there are outstanding land rates. It is therefore safe to know the money you would be topping up on the plot&rsquo;s purchase price or how you can amicably agree with the seller to clear the balance before you purchase or have it deducted from the purchase price</p>\r\n<p>To confirm this, visit your municipal council or county council. If you are in Nairobi, this process will cost you Ksh 7,500 but the rates varies from county to county.</p>\r\n<p>3.&nbsp;<strong>Land Map/Mutation</strong></p>\r\n<p>You can further request a copy of the mutation showing the exact size of the piece of land you are buying and the neighboring lands. These maps can also be bought at the Lands Ministry although a local surveyor would be better and faster.</p>\r\n<p>If you do choose to buy, expect two copies; one drawn to scale also known as the mutation or tracing and another that displays the adjacent farms.</p>\r\n<p>Do not be duped, the maps should not cost you more than Ksh 1,000</p>\r\n<p>4.&nbsp;<strong>Verify Size</strong></p>\r\n<p>Armed with your mutation you can visit the property you wish to buy and ascertain the size with the help of a surveyor. This step is especially necessary if the beacons are missing. Most surveyors in Kenya charge Ksh 1,000 per beacon.</p>\r\n<p>5.&nbsp;<strong>Sale agreement</strong></p>\r\n<p>Once you are satisfied, agree on the purchase price with the vendor and request for an offer letter which will contain details and terms to be included in the sale agreement. The sale agreement will be prepared by the vendors advocate and reviewed by the purchasers advocate (it is advisable to have a lawyer although it is not a must).</p>\r\n<p>LSK&rsquo;s tariff provide that a lawyer should charge Ksh 3,000 for land costing less than a million and Ksh 8,000 for land whose value is above 1 million Kenyan Shillings.</p>\r\n<p>6.&nbsp;<strong>Land Control Board</strong></p>\r\n<p>All thanks to the digitization of the process, you now need not book a meeting with the Lands Control Board (LCB) that previously used to meet once a month. Your advocate (or yourself if you don&rsquo;t have one) will apply for consent which will be approved by the LCB.</p>\r\n<p>7.&nbsp;<strong>Transfer of Title</strong></p>\r\n<p>After making all the payments, the land seller will sign land transfer forms which should be taken to the Ministry of Lands to change ownership.</p>\r\n<p>&nbsp;The transfer forms must be accompanied by the following;</p>\r\n<ul>\r\n<li>Consent from LCB</li>\r\n<li>2 Passport photos</li>\r\n<li>Copy of KRA PIN</li>\r\n<li>Dully signed sale agreement (by both parties)</li>\r\n<li>Old title deed</li>\r\n<li>Clearance from county/municipal council,</li>\r\n</ul>\r\n<p>A fee of Ksh 1,000 is charged for Consent to&nbsp;<strong>Transfer</strong>&nbsp;from commissioner of Lands.</p>\r\n<p>A&nbsp;<strong>stamp duty</strong>&nbsp;is 4% of property value for urban lands and 2% for rural lands is payable.</p>\r\n<p>It costs Ksh. 5,000 to obtain a new&nbsp;<strong>title</strong>&nbsp;deed certificate which is normally out within two weeks.</p>\r\n<p><strong>P.S</strong></p>\r\n<p>Play Safe!<br />You would not buy a home without first having a home inspection, right? It also makes sense to &ldquo;inspect&rdquo; the title. Title problems can be the most costly problems to fix; far more expensive than the cost of constructing your home!</p>\r\n<p>With the increase of cartels and rogue brokers in the Real Estate market who are robbing unsuspecting Kenyans of their land and hard earned money, people are now finding it safer to buy from established companies than from individuals.</p>\r\n<p>At Rochman properties limited, we endeavor to make the land buying process as seamless as possible. It is our commitment and promise that your experience in buying land will be transparent, fluid and memorable before and after the purchase.</p>', 'Buying land in Kenya can be an ordeal especially if you are a first time buyer. With so many vendors including individuals, legit and briefcase companies the experience and process will vary depending on who you choose to work with in order to acquire land.', 'W7TXez.jpg', 1, 'process-of-buying-land-in-kenya', NULL, NULL, 7, 'public', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:42:45', '2022-06-13 14:42:45'),
(5, 'Rochman Properties receives an award at the 2019 Real Estate Excellence Awards', '<p><a href=\"https://www.rochman-properties.co.ke/\">Rochman Properties Limited</a>&nbsp;won the coveted&nbsp;<strong>Most Improved Residential Estate Agency Award,</strong>&nbsp;during the recently convened&nbsp;<strong>Real Estate Excellence Awards 2019</strong>&nbsp;Gala Dinner at Movenpick Hotel, Westlands, Nairobi.</p>\r\n<p>This was the second annual edition of The&nbsp;<strong>Real Estate Excellence Awards</strong>&nbsp; whose objective is to recognize and celebrate the key players in various realms of the real estate sector who have over the years achieved excellent results and have positively impacted the lives of their clients.</p>\r\n<p>The Event brought together various players and stakeholders in the sector from land agents, property developers, property consultants, and real estate related suppliers under one roof&nbsp; creating a networking opportunity to different organizations&rsquo; senior management attendees. Different players in the industry were recognized for their unique impact and effort in the sector during the Gala Dinner.</p>\r\n<p>&rdquo;<strong>We are honored to be recognized with an award and we are so thankful for the trust and support we have received from our clients.&nbsp;We look forward to serving them even better as we en-devour to surpass their expectations in line with our mantra of delivering the promise, always!</strong>&rdquo; Wanjiku Nyoro-Ashoya, Managing Director, Rochman Properties Limited said while receiving the award.</p>\r\n<p>Rochman Properties Limited was recognized for the unique role of providing residential estate solutions ranging from ready to build&nbsp;<a href=\"https://rochman-properties.co.ke/properties/?q=plot\">value added plots</a>&nbsp;in highly grown&nbsp;satellite towns such as;&nbsp;<a href=\"https://rochman-properties.co.ke/plot/syokimau/\">Syokimau</a>, Kitengela, Ruai, Athi River etc,&nbsp;as well as completed houses that are ideal for both&nbsp;family seclusion and investment.</p>\r\n<p>We encourage Kenyans living abroad to consider investing back in Kenya with the help of&nbsp;<a href=\"https://rochman-properties.co.ke/\">trusted real estate Companies</a>&nbsp;that follow the due&nbsp;<a href=\"https://rochman-properties.co.ke/process-of-buying-land-in-kenya/\">legal process of property acquisition</a>. Title deeds can be shipped to clients after they complete payments or handed over to clients&rsquo; lawyers or family members upon receipt of a written instruction from clients.</p>\r\n<p><strong>Who is Rochman Properties Limited</strong>?</p>\r\n<p>They are a trusted Real Estate company based in Kenya that offers quality comprehensive real estate solutions. We have epitomized the mantra of delivering the promise, always.<br />With&nbsp;<strong>14 years&nbsp;experience&nbsp;</strong>in the Real Estate industry, Rochman Properties has continuously sharpened their&nbsp;expertise to secure properties that meets their&nbsp;clients needs and taste without compromising on quality.&nbsp; They are dedicated to selling and letting environmentally sustainable, strategically located and economically viable properties in Kenya with the aim of&nbsp;delivering quality homes to Kenyans while&nbsp;maximizing their&nbsp;return on investments.</p>\r\n<p>#REawards2019</p>', 'Rochman Properties Limited won the coveted Most Improved Residential Estate Agency Award, during the recently convened Real Estate Excellence Awards 2019 Gala Dinner at Movenpick Hotel, Westlands, Nairobi.', 'oYXJbA.jpg', NULL, 'rochman-properties-receives-an-award-at-the-2019-real-estate-excellence-awards', NULL, NULL, 7, 'public', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:48:47', '2022-06-13 14:48:47'),
(6, 'WHAT IS THE DIFFERENCE BETWEEN FREEHOLD AND LEASEHOLD PROPERTY?', '<p><strong>Land Tenure</strong>&nbsp;are rules that define&nbsp;how property rights to&nbsp;land&nbsp;are to be allocated within societies. They&nbsp;establish&nbsp;how access is granted to rights to use, control, and transfer&nbsp;land property, as well as associated responsibilities and restraints.</p>\r\n<p>There are two main land tenure system in Kenya.</p>\r\n<ul>\r\n<li><strong>Freehold</strong></li>\r\n</ul>\r\n<p>Also known as absolute possession, in practice it means the outright ownership of land or property for an unlimited period of time. This therefore means that the property can be transferred from one generation to another (Inherited) for as long as the family lineage exists.</p>\r\n<p>A&nbsp;<a href=\"https://rochman-properties.co.ke/plot/bustani/\">freehold title&nbsp;</a>deed generally has no restrictions as to the use or occupation. However, there are conditional freeholds, which restrict the use of the land, example agricultural land. A real estate developer who wishes to change the user of a parcel of land from residential or single-dwelling to multi-dwelling more often than not might require the services of a registered and practicing physical planner, surveyor and lawyer in view of the documentation involved.</p>\r\n<p>The process involves the initial application and approval stage at the local authorities and the final approval and processing of the title at the Department of Lands.</p>\r\n<ul>\r\n<li><strong>Leasehold</strong></li>\r\n</ul>\r\n<p>A temporary right to occupy land or property for a fixed period of time, based on contractual law which sets out the rights and obligations of both the Landlord (Lessor) and Tenant (Lessee).</p>\r\n<p>The maximum period for government leases is 999 years for agricultural land and 99 years for urban plots</p>\r\n<p><a href=\"https://rochman-properties.co.ke/property/grand-eben-park/\">For apartments/flats</a>, it is the method of owning property for a fixed term but not the land on which it stands. When the lease expires, ownership of the property reverts back to the freeholder.</p>', 'Land Tenure are rules that define how property rights to land are to be allocated within societies. They establish how access is granted to rights to use, control, and transfer land property, as well as associated responsibilities and restraints', 'ciEtfA.png', NULL, 'what-is-the-difference-between-freehold-and-leasehold-property', NULL, NULL, 31, 'public', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:51:56', '2022-06-13 14:51:56'),
(7, 'Construction Tips', '<p>Constructing your own customized house from scratch can be a rewarding experience that helps you tailor every details to suit your needs now and in the future.&nbsp;</p>\r\n<p>Building a house should be cheaper than getting a new home, however most home owners end up using more due to lack of information.</p>\r\n<p>Here are some tips that will help you get into the process with your eyes open:</p>\r\n<ol>\r\n<li><strong>Get design ideas</strong></li>\r\n</ol>\r\n<p><img class=\"size-medium wp-image-714 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2-300x240.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2-300x240.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2-1024x819.jpg 1024w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2-768x614.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2-1536x1229.jpg 1536w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/Untitled-design-2.jpg 2000w\" alt=\"\" width=\"300\" height=\"240\" /></p>\r\n<p>There is no need of going through the hustle of construction if you are going to end up with a house you don&rsquo;t fall in love with or one that looks just like any other.</p>\r\n<p>Bring your fantasy to play &amp; if it means getting a scrapbook to stick picture of your dream kitchen (s) and master bedroom, by all means get one. The whole joy of constructing new is to customize.</p>\r\n<ol start=\"2\">\r\n<li><strong>Estimate the costs &amp; set a Budget</strong></li>\r\n</ol>\r\n<p><img class=\"wp-image-707 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/triangle-3125882_960_720-300x180.jpg\" sizes=\"(max-width: 333px) 100vw, 333px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/triangle-3125882_960_720-300x180.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/triangle-3125882_960_720-768x461.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/triangle-3125882_960_720.jpg 960w\" alt=\"\" width=\"333\" height=\"200\" loading=\"lazy\" /></p>\r\n<p>Find out the amount of money you can raise for your home construction visa vie how much the project is likely to cost in total.</p>\r\n<p>If you realize that you need a construction loan, find out which financial institution can provide the same and how much you qualify for.</p>\r\n<ol start=\"3\">\r\n<li><strong>Involve an Architect</strong></li>\r\n</ol>\r\n<p>Give the Architect a brief of what you want and take him for a site visit to your piece of land. A Site visit is paramount as certain site features can influence the design of the house as well as the budget.</p>\r\n<ol start=\"4\">\r\n<li><strong>Choose a Plan</strong></li>\r\n</ol>\r\n<p><img class=\"wp-image-710 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/building-plan-354233_960_720-300x197.jpg\" sizes=\"(max-width: 332px) 100vw, 332px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/building-plan-354233_960_720-300x197.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/building-plan-354233_960_720-768x503.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/building-plan-354233_960_720.jpg 960w\" alt=\"\" width=\"332\" height=\"218\" loading=\"lazy\" />Get the Architect to come up with a customized house plan based on the ideas communicated to him. Alternatively buy ready-made house plan from the Architect or various online sites that provide such.</p>\r\n<ol start=\"5\">\r\n<li><strong>Deal with professionals</strong></li>\r\n</ol>\r\n<p><img class=\"wp-image-709 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/team-architects-working-construction-plan_23-2147842999-300x200.jpg\" sizes=\"(max-width: 324px) 100vw, 324px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/team-architects-working-construction-plan_23-2147842999-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/team-architects-working-construction-plan_23-2147842999-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/team-architects-working-construction-plan_23-2147842999.jpg 626w\" alt=\"\" width=\"324\" height=\"216\" loading=\"lazy\" /></p>\r\n<p>With your Architect as the Project&rsquo;s lead consultant, now get a team of professionals that include a quantity surveyor, structural engineer, contractor, etc.</p>\r\n<p>The Architect can as well recommend those that they have worked with in the past.</p>\r\n<p>Every professional, be it a building engineer, contractor, quantity surveyor or architect, must be a member of a professional body and should possess a membership certificate from the respective association.</p>\r\n<ol start=\"6\">\r\n<li><strong>Understand the contract you are signing</strong></li>\r\n</ol>\r\n<p><img class=\"size-medium wp-image-711 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/two-men-shaking-hands_53876-63180-300x200.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/two-men-shaking-hands_53876-63180-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/two-men-shaking-hands_53876-63180-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/two-men-shaking-hands_53876-63180.jpg 626w\" alt=\"\" width=\"300\" height=\"200\" loading=\"lazy\" /></p>\r\n<p>This will help you establish expectations from both sides and gives an accurate estimated cost and a clear breakdown of where your money is going.</p>\r\n<p>To be safe, always list in detail anything that you expect the builder to do, even if the contract doesn&rsquo;t specify it.</p>\r\n<p>Some of areas likely to be left out may include but not limited to:</p>\r\n<ul>\r\n<li>Liability insurance, for instance Builders Risk, which protects incomplete structure from fires, vandalism, etc.</li>\r\n<li>How to handle a garage or basement. Are they included? Should they be finished?</li>\r\n<li>&nbsp;Utility connections- water, electricity, gas</li>\r\n</ul>\r\n<ol start=\"7\">\r\n<li><strong>Leave room in the budget for additional costs</strong></li>\r\n</ol>\r\n<p><img class=\"size-medium wp-image-715 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/options-396266_960_720-300x225.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/options-396266_960_720-300x225.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/options-396266_960_720-768x575.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/options-396266_960_720.jpg 960w\" alt=\"\" width=\"300\" height=\"225\" loading=\"lazy\" /></p>\r\n<p>Apart from cost of materials and construction, there are other costs you might also need to consider:</p>\r\n<ul>\r\n<li>Labor costs, which can fluctuate as a result of supply and demand</li>\r\n<li>Fees for all the permits required</li>\r\n<li>Costs for altering the land before construction e.g, clearing trees, removal of huge rocks, hauling dirt etc.</li>\r\n<li>Damage/theft: This is largely a part of the construction process and can carry additional costs. Workers need to be paid for those extra days if there is delay, damaged or defective materials need to be replaced and so is the case for stolen tools.</li>\r\n</ul>\r\n<p>It is advisable that you add a 10% cost as a contigency</p>\r\n<p><strong>8. Master the art of give and take&nbsp;</strong></p>\r\n<p><img class=\"size-medium wp-image-716 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/the-interior-of-the-1508271_960_720-300x199.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/the-interior-of-the-1508271_960_720-300x199.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/the-interior-of-the-1508271_960_720-768x510.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/the-interior-of-the-1508271_960_720-800x533.jpg 800w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/the-interior-of-the-1508271_960_720.jpg 960w\" alt=\"\" width=\"300\" height=\"199\" loading=\"lazy\" /></p>\r\n<p>Balance the cost-adding items that you wouldn&rsquo;t want to forego with cost cutting items to ensure your overall budget is in check.</p>\r\n<p>Do you want&nbsp; exquisite living room tiles and master bath appliances, opt for cheaper sinks.&nbsp;</p>\r\n<p><strong>9. Prepare for delay</strong></p>\r\n<p><img class=\"wp-image-713 alignleft\" src=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1-300x200.jpg\" sizes=\"(max-width: 354px) 100vw, 354px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1-768x512.jpg 768w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1-800x533.jpg 800w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2020/01/new-home-4083239_960_720-1.jpg 960w\" alt=\"\" width=\"354\" height=\"236\" loading=\"lazy\" /></p>\r\n<p>As soon as the construction commence, get a backup plan lest you take the contractor&rsquo;s date as cast in stone and end up homeless.</p>\r\n<p>You can research on apartments or hotels nearby where you can crush for a couple of weeks or month(s). Don&rsquo;t be too quick to give your landlord notice as your current home might still be the viable option on your table until the construction is complete.</p>\r\n<p><strong>P.S:</strong>&nbsp;Plan with a budget in mind but build with your heart.</p>\r\n<p>&nbsp;</p>', 'Constructing your own customized house from scratch can be a rewarding experience that helps you tailor every details to suit your needs now and in the future. ', '87S2kZ.jpg', 1, 'construction-tips', NULL, NULL, 7, 'private', NULL, NULL, NULL, 1, 1, NULL, '2022-06-13 14:55:07', '2022-06-13 14:55:07'),
(8, 'THE PROCESS OF CONSTRUCTING A HOME IN KENYA', '<p>Owning a home&nbsp;is one of the smartest moves one can ever make and if getting one is one of your resolutions this year, there are several facts you need to be aware of.</p>\r\n<p>Not knowing the process might be nerve wrecking not to mention financially implicating- having to pay the penalties to authorized institutions and delay costs.</p>\r\n<p>Below are some of the requisite procedures of construction in Kenya.</p>\r\n<h3><strong>Get a House Plan</strong></h3>\r\n<p><img class=\"alignnone  wp-image-787\" src=\"https://crm.rochman-properties.co.ke/media/plan-b-300x200.jpg\" sizes=\"(max-width: 360px) 100vw, 360px\" srcset=\"https://rochman-properties.co.ke/wp-content/uploads/2020/03/plan-b-300x200.jpg 300w, https://rochman-properties.co.ke/wp-content/uploads/2020/03/plan-b-272x182.jpg 272w, https://rochman-properties.co.ke/wp-content/uploads/2020/03/plan-b.jpg 626w\" alt=\"\" width=\"360\" height=\"240\" /></p>\r\n<p>Sounds like a no brainer right?</p>\r\n<p>Avoid creating a house plan for a piece of land they have not officially purchased or you might end up not being able to implement it in the future.</p>\r\n<p>There are certain things that dictate the plan; size, state and shape of land topping the list.</p>\r\n<p>Before embarking on a design, first ascertain land ownership then get an architect that has the knowhow of designing economical, functional and attractive house plans in Kenya.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<h3><strong>Choose a Professional Team</strong></h3>\r\n<p><img class=\"\" src=\"https://cdn.pixabay.com/photo/2017/05/04/16/37/meeting-2284501_960_720.jpg\" alt=\"Meeting, Business, Architect, Office, Team, Plan\" width=\"437\" height=\"273\" loading=\"lazy\" /></p>\r\n<p>No Bank or financial institution will give you funding, if you require any, for a housing project in Kenya save you have qualified and registered professionals in your construction squad.</p>\r\n<ul>\r\n<li>Architect: The lead player in the team who plans, designs and reviews the construction of buildings, getting involved from earliest stages right through to completion.</li>\r\n<li>QS (Quantity Surveyor) is charged with the responsibility of preparing bill of quantities.&nbsp;The QS calculates and manages all project related costs from assisting create opening estimates to confirming the complete budget requirement. This is the guy who ensures that the drawings produced by the Architect have been harmonized with his descriptions and specifications of the construction materials to be used.</li>\r\n<li>Contractor: The one who implements the house plans and mostly selected on the basis of ability to construct, price and most importantly previous track record.</li>\r\n<li>Electrical Engineer: For all your electrical and electronic services such telecommunication and IT installations, closed circuit television (CCTV) and security installations, aerial installations etc</li>\r\n<li>Mechanical Engineer: Responsible for services such as plumbing, drainage and firefighting.</li>\r\n</ul>\r\n<h3><strong>Seek Approvals</strong></h3>\r\n<p><img class=\"\" src=\"https://cdn.pixabay.com/photo/2012/04/11/17/53/approved-29149_960_720.png\" alt=\"Approved, Stamp, Approval, Quality, Agreement, Label\" width=\"449\" height=\"255\" loading=\"lazy\" /></p>\r\n<p>Submit your plans to the local authority for approvals from the city/county council, and all the relevant bodies depending with your location and kind of structure.</p>\r\n<p>Plots/land that is close to airports also require permits from bodies such as Kenya Civil Aviation Authority.</p>\r\n<p>Approvals needed may vary from a County to another but the basic standard ones include;</p>\r\n<ul>\r\n<li>Completed applications for approval documents</li>\r\n<li>Copies of blueprints for the proposed house plans in Kenya.</li>\r\n<li>Registration certificates for registered professionals, i.e. the architect and structural engineer</li>\r\n<li>Proof of ownership documents</li>\r\n<li>Registration certificate with NCA</li>\r\n<li>Land rates clearance</li>\r\n<li>Payment for the entire approval process</li>\r\n</ul>\r\n<p>Your plan may also be subjected to environmental impact assessment (EIA) prior to construction by a registered environmentalist to be submitted to NEMA</p>\r\n<p>It may take upto 14-21 days for your documents to be certified</p>\r\n<h3><strong>Construct</strong></h3>\r\n<p><img class=\"\" src=\"https://cdn.pixabay.com/photo/2016/09/12/13/26/new-home-1664284_960_720.jpg\" alt=\"New Home, Construction, Build, Architecture, Industry\" width=\"435\" height=\"310\" loading=\"lazy\" /></p>\r\n<p>Once your plans are approved, you may give your project team the go ahead for construction to commence.</p>\r\n<p>It is advisable that you make site visits every now and then to ascertain if the project is being undertaken as planned.</p>\r\n<h3><strong>Obtain an Occupation Certificate</strong></h3>\r\n<p>Once your project is complete, invite county officers to approve your house so that they can expedite the processing of the building&rsquo;s certificate of occupation.</p>\r\n<p>At this stage, you can move into your home, however, you might still need to apply for sewerage, electricity and water connection from the service providers if you had not already done so.</p>\r\n<p>P.S</p>\r\n<p>When your budget is tight, the idea of cutting corners in an attempt to save money might seem inviting. &nbsp;Unfortunately, this may end up jeopardizing the safety standards of your home- a situation that may cost you a mint few years from today!</p>', 'Owning a home is one of the smartest moves one can ever make and if getting one is one of your resolutions this year, there are several facts you need to be aware of.', '44TMxe.jpg', NULL, 'the-process-of-constructing-a-home-in-kenya', NULL, 'Owning a home is one of the smartest moves one can ever make and if getting one is one of your resolutions this year, there are several facts you need to be aware of.', 31, 'public', NULL, NULL, NULL, 1, 1, 1, '2022-06-13 15:20:25', '2022-06-22 09:17:38'),
(12, 'Tips for Finding the Perfect Rental Home in Kenya: A Comprehensive Guide', '<p><strong>Determine Your Budget</strong></p>\r\n<p><strong><img src=\"https://media.istockphoto.com/id/875247398/photo/getting-her-home-business-up-and-running.jpg?b=1&amp;s=170667a&amp;w=0&amp;k=20&amp;c=eMXGakijqLRTgzk-EV1uT0YuHPyC8fD2qsdoCNC4rNg=\" /></strong></p>\r\n<p>Before you start your search for a rental home in Kenya, it&rsquo;s important to determine your budget. Deciding on a budget will help you narrow down your search and focus on properties that are within your financial reach.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Location Matters</strong></p>\r\n<p><strong><img src=\"https://3cloudsolutions.com/wp-content/uploads/2022/01/3-Ways-to-Leverage-Machine-Learning-for-Business-Locations-Strategy_Thumbnail.png\" alt=\"3 Ways to Leverage Machine Learning for Business Locations Strategy\" width=\"843\" height=\"534\" /></strong></p>\r\n<p>Location is an important factor to consider when looking for a rental home in Kenya. Consider the proximity to your workplace, schools, hospitals, shopping centers, and other important places. Think about your lifestyle and what will work best for you. Also, take time to research the safety and security of the area.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Think About Your Needs</strong></p>\r\n<p>It&rsquo;s essential to think about your lifestyle and the features you need in a rental property. Do you require a lot of space, a pet-friendly environment, or access to outdoor activities? Understanding your needs will help you choose the right rental property in Kenya.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Inspect the Property Carefully</strong></p>\r\n<p>Before signing a lease for a rental home in Kenya, inspect the property carefully to ensure that it&rsquo;s in good condition. Look for signs of wear and tear, and check for any damage or maintenance issues that need to be addressed. This will help you avoid any unexpected expenses in the future.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Read the Lease Agreement</strong></p>\r\n<p><strong><img src=\"https://images.prop24.com/294223746\" alt=\"What happens when you wish to cancel a lease agreement before occupation? -  Guest Experts, Advice\" /></strong></p>\r\n<p>It&rsquo;s important to review the lease agreement carefully to understand all the terms and conditions. If there\'s anything you don\'t understand, ask the landlord or a legal expert to explain it to you. This will help you avoid any potential disputes or misunderstandings with the landlord in the future.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Consider the Landlord</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Choosing a good landlord can make all the difference in your rental experience. Look for a landlord who is responsive, easy to communicate with, and who takes care of their properties. It&rsquo;s always a good idea to ask for referrals from friends, family, and colleagues when looking for a rental home in Kenya.</p>\r\n<p>&nbsp;</p>', 'Finding the perfect rental home in Kenya can be a challenge, but it doesn’t have to be stressful. By following these tips for finding a rental home in Kenya, you can find a rental home that fits your lifestyle and budget. Remember to take your time, do your research, and carefully review the lease agreement before signing. With a little bit of effort, you\'ll soon find a rental home that you can happily call your own in Kenya.', 'GltOGX.jpg', NULL, 'tips-for-finding-the-perfect-rental-home-in-kenya-a-comprehensive-guide', 'Rental homes in Kenya Finding rental homes in Kenya Tips for finding rental homes in Kenya Comprehensive guide to finding rental homes in Kenya Affordable rental homes in Kenya Best rental homes in Kenya How to find rental homes in Kenya', 'Finding a rental home in Kenya that fits your needs and budget can be a daunting task. However, with a little bit of research and careful consideration, you can find the perfect rental home for you. Here are some tips to help you along the way:', 7, 'public', NULL, 1, 'Yes', 1, 1, 1, '2023-03-24 13:11:59', '2023-03-24 13:14:39');
INSERT INTO `blogs` (`id`, `title`, `content`, `synopsis`, `thumbnail`, `blog_type`, `url`, `meta_tags`, `meta_description`, `status`, `visibility`, `publish_time`, `featured`, `comment`, `view_count`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(14, 'INVESTING IN OFFPLAN PROPERTIES: PROS & CONS', '<p style=\"text-align: justify;\">Off-plan properties are a type of real estate investment that has gained popularity in recent years. These are properties that are purchased before construction is completed, with the buyer investing in the property while it is still in the planning or construction phase. In this article, we will discuss off-plan properties in relation to real estate, and the benefits and drawbacks of investing in them.</p>\r\n<p><strong>Benefits of Off-Plan Properties</strong></p>\r\n<ol>\r\n<li><strong>Lower Price Point:&nbsp;</strong>One of the primary benefits of investing in off-plan properties is the lower price point. Buyers can secure a property at a lower cost than the market value once construction is completed. This can make off-plan properties an attractive investment option for those looking to enter the property market.</li>\r\n<li><strong>Customization:&nbsp;</strong>Another benefit of off-plan properties is the ability to customize the property. Buyers can select the layout, finishes, and materials, which can make the property unique and potentially more attractive to future buyers or renters.</li>\r\n<li><strong>Capital Appreciation:&nbsp;</strong>Off-plan properties can offer significant capital appreciation, which means the value of the property can increase over time. This can result in a higher resale value, generating profits for the investor.</li>\r\n<li><strong>Higher Rental Yields:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Off-plan properties can also generate higher rental yields as they are often located in areas with high demand and limited supply. This can result in higher rental income for the investor, which can be a significant source of passive income.</li>\r\n</ol>\r\n<p><strong>Drawbacks of Off-Plan Properties</strong></p>\r\n<ol>\r\n<li>Construction Delays: One of the primary drawbacks of off-plan properties is the potential for construction delays. These delays can lead to a longer waiting period before the property is completed and rented out, which can affect the investor\'s cash flow.</li>\r\n<li>Market Fluctuations: The property market is subject to fluctuations, and off-plan properties can be affected by these fluctuations. This can result in the value of the property decreasing, leading to lower returns on investment.</li>\r\n<li>Developer Reputation: Off-plan properties are often developed by new or lesser-known developers. Investors must be cautious when selecting a developer as a poor reputation can lead to issues with construction quality and delays.</li>\r\n<li>Financing Challenges: Securing financing for off-plan properties can be challenging. Lenders may be hesitant to provide financing for a property that has not yet been completed.</li>\r\n</ol>\r\n<p><strong>Conclusion</strong></p>\r\n<p>Off-plan properties can be an attractive investment option for those looking to enter the property market at a lower price point, customize the property, and potentially generate significant capital appreciation and rental yields. However, investors must be aware of the potential drawbacks, including construction delays, market fluctuations, developer reputation, and financing challenges. As with any&nbsp;investment, it is crucial to conduct due diligence and seek advice from a financial professional before investing in off-plan properties.</p>', 'Off-plan properties can be an attractive investment option for those looking to enter the property market at a lower price point, customize the property, and potentially generate significant capital appreciation and rental yields. However, investors must be aware of the potential drawbacks, including construction delays, market fluctuations, developer reputation, and financing challenges. As with any investment, it is crucial to conduct due diligence and seek advice from a financial professional before investing in off-plan properties.', 'xIAdv4.jpg', NULL, 'investing-in-offplan-properties-pros-cons', 'Rental homes in Kenya Finding rental homes in Kenya Tips for finding rental homes in Kenya Comprehensive guide to finding rental homes in Kenya Affordable rental homes in Kenya Best rental homes in Kenya How to find rental homes in Kenya', NULL, 7, 'public', NULL, NULL, 'Yes', 1, 1, NULL, '2023-04-05 12:58:08', '2023-04-05 12:58:08'),
(15, 'How to Increase the Value of Your Home in Kenya: 10 Tips to Help You Sell Faster and for a Better Price', '<p>Are you thinking about selling your home? If so, you\'ll definitely want to get the best possible price for your property. One way to do this is by increasing the value of your home. Here are 10 tips to help you make your home more attractive to potential buyers:</p>\r\n<p><strong>Upgrade the kitchen: </strong>The kitchen is often the heart of the home. Consider upgrading your appliances, cabinets, and countertops to create a modern, functional space that will appeal to buyers.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Revamp the bathrooms:</strong></p>\r\n<p>Bathrooms are important to buyers too. Consider upgrading the fixtures, lighting, and tiles to create a spa-like oasis that will impress potential buyers.</p>\r\n<p><strong>Improve exterior appeal:</strong></p>\r\n<p>First impressions matter. Consider planting flowers, painting your front door, and trimming your lawn to create a welcoming entrance to your home.</p>\r\n<p><strong>Add more living space:</strong></p>\r\n<p>Buyers are looking for homes with extra living space. Consider converting your attic or basement into a living area or adding an outdoor living area to increase your home\'s value.</p>\r\n<p><strong>Update the lighting:</strong></p>\r\n<p><strong><img src=\"https://media.istockphoto.com/id/1054750666/photo/down-lights-hang-lighting-interior-design-modern-home-decoration-style.jpg?b=1&amp;s=170667a&amp;w=0&amp;k=20&amp;c=aMvAefMOMPN8TVqC-0XngzTnPH6MX99nyPatcKl-ifc=\" /></strong></p>\r\n<p>Good lighting can make your home feel warm and inviting. Consider upgrading your fixtures and installing dimmer switches to create the right ambiance.</p>\r\n<p><strong>Make energy-efficient upgrades:</strong></p>\r\n<p>Buyers are increasingly looking for energy-efficient homes. Consider upgrading your insulation, adding double-paned windows, and installing solar panels to make your home more attractive to environmentally-conscious buyers.</p>\r\n<p><strong>Repair any damages: </strong></p>\r\n<p>Before selling your home, make any necessary repairs. Fix any leaks, cracks, or other damages to ensure that your home is in good condition.</p>\r\n<p><strong>Create storage space:</strong></p>\r\n<p>Buyers are always looking for ample storage space. Consider adding extra closets or storage units to your home.</p>\r\n<p><strong>Repaint the walls:</strong></p>\r\n<p><img src=\"https://media.istockphoto.com/id/134248179/photo/construction-working-putting-plaster-on-a-wall.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=O2dRTQiLTt30Yo0H0drST9o47-CAU_stUhrUn-2b6-A=\" alt=\"Construction working putting plaster on a wall Young painting facade builder worker with roller at thermal insulation works house painting stock pictures, royalty-free photos &amp; images\" /></p>\r\n<p>A fresh coat of paint can go a long way in making your home look new again. Choose neutral colors that appeal to a wide range of buyers.</p>\r\n<p><strong>Work with a professional real estate agent:</strong></p>\r\n<p>Selling a home in Kenya can be complex. Working with a professional real estate agent who is experienced in the Kenyan market can help you navigate the process and get the best possible price for your home.</p>\r\n<p>&nbsp;</p>\r\n<p>By implementing these 10 tips, you can increase the value of your home and make it more attractive to potential buyers in Kenya. And at Rochman Properties, we specialize in helping homeowners sell their properties quickly and for the best possible price. Contact us today to learn more about our expertise in the Kenyan real estate market and how we can help you sell your home.</p>\r\n<p>Remember, selling your home can be a complex process, but by following these tips and working with a professional real estate agent, you can increase the value of your home, make it more attractive to buyers, and ultimately sell faster and for a better price.</p>', 'By implementing these 10 tips, you can increase the value of your home and make it more attractive to potential buyers in Kenya. And at Rochman Properties, we specialize in helping homeowners sell their properties quickly and for the best possible price. Contact us today to learn more about our expertise in the Kenyan real estate market and how we can help you sell your home.\r\n\r\nRemember, selling your home can be a complex process, but by following these tips and working with a professional real estate agent, you can increase the value of your home, make it more attractive to buyers', 'v5UAvJ.jpg', NULL, 'how-to-increase-the-value-of-your-home-in-kenya-10-tips-to-help-you-sell-faster-and-for-a-better-price-UJ3K', 'Home improvement tips in Kenya Selling your home for a better price in Kenya How to increase the value of your home in Kenya Quick home selling tips in Kenya Boosting your home\'s value in Kenya Easy home renovation ideas in Kenya Smart home selling strategies in Kenya Property value enhancement in Kenya Increasing property value in Kenya Home staging tips for selling in Kenya.', 'By implementing these 10 tips, you can increase the value of your home and make it more attractive to potential buyers in Kenya. And at Rochman Properties, we specialize in helping homeowners sell their properties quickly and for the best possible price. Contact us today to learn more about our expertise in the Kenyan real estate market and how we can help you sell your home.\r\n\r\nRemember, selling your home can be a complex process, but by following these tips and working with a professional real estate agent, you can increase the value of your home, make it more attractive to buyers, and ultimately sell faster and for a better price.', 7, 'public', NULL, NULL, 'Yes', 1, 1, 1, '2023-04-05 13:20:23', '2023-04-19 13:46:16'),
(16, 'Kenya Real Estate Investment 101: How to Evaluate ROI', '<p>Investing in real estate can be a lucrative way to earn passive income and build wealth over time. However, not all properties are created equal, and it\'s essential to evaluate the potential return on investment (ROI) before making a purchase. In this blog, we\'ll go over how to evaluate the potential ROI for a property in Kenya, including factors to consider and strategies for calculating ROI.</p>\r\n<p><strong>Factors to Consider When Evaluating ROI for a Property in Kenya</strong></p>\r\n<p><strong>Location: &nbsp;</strong></p>\r\n<p>Location is one of the most critical factors to consider when evaluating the potential ROI for a property in Kenya. Properties in desirable locations, such as near major transportation hubs or in areas with a high demand for housing, are likely to have higher rental yields and appreciate in value more quickly.</p>\r\n<p><strong>Property Type: </strong></p>\r\n<p>The type of property you invest in will also affect your potential ROI. For example, apartments and multi-family units tend to have higher rental yields than single-family homes. On the other hand, single-family homes may appreciate in value more quickly than apartments, making them a better long-term investment<strong>.</strong></p>\r\n<p><strong>Property Condition: </strong></p>\r\n<p>The condition of the property can also affect its potential ROI. A property that requires extensive repairs or renovations may have a lower ROI than a turnkey property. However, if you\'re willing to put in the work, a fixer-upper can be an excellent investment opportunity.</p>\r\n<p><strong>Rental Demand</strong>:&nbsp;</p>\r\n<p>Before investing in a rental property, it\'s essential to evaluate the rental demand in the area. Properties in areas with a high demand for rentals are more likely to have high occupancy rates and generate stable rental income.</p>\r\n<p><strong>Financing: </strong></p>\r\n<p>Finally, the financing terms you secure for your investment property will also affect your potential ROI. Higher interest rates or down payments may lower your ROI, while lower interest rates or down payments can increase your potential ROI.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Strategies for Calculating ROI for a Property in Kenya</strong></p>\r\n<p><strong>Gross Rental Yield: </strong></p>\r\n<p>Gross rental yield is a simple way to calculate the potential ROI for a rental property. To calculate gross rental yield, divide the annual rental income by the property\'s purchase<strong> </strong>price, and<strong> </strong>multiply the result by 100. For example, if you purchase a rental property for Ksh 10,000,000 and generate Ksh 1,000,000 in annual rental income, your gross rental yield would be 10%.</p>\r\n<p>Gross Rental Yield = (Annual Rental Income / Property Purchase Price) x 100</p>\r\n<p><strong>Net Rental Yield: </strong></p>\r\n<p>Net rental yield takes into account expenses such as property management fees, maintenance costs, and property taxes. To calculate net rental yield, subtract your annual expenses from your annual rental income, and divide the result by the property\'s purchase price. For example, if your rental property generates Ksh 1,000,000 in annual rental income but has Ksh 200,000 in annual expenses, your net rental yield would be 8%.</p>\r\n<p>Net Rental Yield = ((Annual Rental Income - Annual Expenses) / Property Purchase Price) x 100</p>\r\n<p><strong>Capitalization Rate (Cap Rate): </strong></p>\r\n<p>Cap rate is a more complex way to evaluate the potential ROI for a rental property. Cap rate takes into account the property\'s net operating income (NOI) and the property\'s value. To calculate cap rate, divide the property\'s NOI by its value. For example, if your rental property generates Ksh 1,000,000 in NOI and is valued at Ksh 10,000,000, your cap rate would be 10%.</p>\r\n<p>Cap Rate = (Net Operating Income / Property Value) x 100</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Conclusion</strong></p>\r\n<p><strong>&nbsp;</strong>Evaluating the potential ROI for a property in Kenya is essential to making a sound investment decision. By considering factors such as location, property type, property condition, rental demand, and financing, you can make an informed decision about whether or not you should Invest in that property.</p>', 'Evaluating the potential ROI for a property in Kenya is essential to making a sound investment decision. By considering factors such as location, property type, property condition, rental demand, and financing, you can make an informed decision about whether or not you should Invest in that property.', 'i4pePA.jpg', 1, 'kenya-real-estate-investment-101-how-to-evaluate-roi', 'Rental homes in Kenya Finding rental homes in Kenya Tips for finding rental homes in Kenya Comprehensive guide to finding rental homes in Kenya Affordable rental homes in Kenya Best rental homes in Kenya How to find rental homes in Kenya', 'Kenya Real Estate Investment 101: How to Evaluate ROI \r\nInvesting in real estate can be a lucrative way to earn passive income and build wealth over time. However, not all properties are created equal, and it\'s essential to evaluate the potential return on investment (ROI) before making a purchase. In this blog, we\'ll go over how to evaluate the potential ROI for a property in Kenya, including factors to consider and strategies for calculating ROI.', 7, 'public', NULL, 1, 'Yes', 1, 1, NULL, '2023-04-20 12:16:12', '2023-04-20 12:16:12'),
(17, 'Top Locations to Buy Land in Kenya', '<p><strong>Top Locations to Buy Land in Kenya</strong></p>\r\n<p>If you\'re looking to invest in real estate in Kenya, buying land is a great way to start. Land is a tangible asset that appreciates in value over time and provides long-term investment returns. However, choosing the right location is crucial for a successful investment. In this blog, we\'ll discuss the top locations to buy land in Kenya.</p>\r\n<p><strong>1. Athi River</strong></p>\r\n<p><strong><img src=\"https://firstavenueproperties.co.ke/wp-content/uploads/2017/10/BqQQojUCQAIF4tm.jpg\" alt=\"GREEN PARK ESTATE-ATHI RIVER | First Avenue Properties\" /></strong></p>\r\n<p>Athi River is a fast-growing town located in Machakos County, about 30 kilometers from Nairobi. The area is known for its industrial parks, which have attracted several multinational companies, including Coca-Cola, Colgate-Palmolive, and Del Monte. Athi River is also home to several residential developments, making it an attractive location for real estate investors. Land prices in Athi River are relatively affordable, making it an ideal location for first-time investors.</p>\r\n<p><strong>2. Juja</strong></p>\r\n<p>Juja is a fast-growing town located in Kiambu County, about 30 kilometers from Nairobi. The area is home to several universities and colleges, including Jomo Kenyatta University of Agriculture and Technology (JKUAT), Kenyatta University, and Juja Preparatory School. Juja is also known for its numerous gated communities, which offer affordable housing to middle-class families. Land prices in Juja have been appreciating steadily, making it an attractive investment opportunity.</p>\r\n<p><strong>3. Kisaju</strong></p>\r\n<p>Kisaju is a town located in Kajiado County, about 25 kilometers from Nairobi. The area is known for its scenic views of the Ngong Hills and its proximity to several tourist destinations, including the Nairobi National Park and the Maasai Mara Game Reserve. Kisaju is also home to several residential developments, including the KCB Kisaju Estate and the Green Park Estate. Land prices in Kisaju are relatively affordable, making it an ideal location for first-time investors.</p>\r\n<p><strong>4. Malindi</strong></p>\r\n<p><strong><img src=\"https://images.trvl-media.com/lodging/6000000/5240000/5234300/5234263/04fec363.jpg?impolicy=resizecrop&amp;rw=500&amp;ra=fit\" alt=\"Billionaire Resort &amp; Retreat Reviews, Deals &amp; Photos 2023 - Expedia\" /></strong></p>\r\n<p>Malindi is a coastal town located in Kilifi County, about 120 kilometers from Mombasa. The area is known for its white sandy beaches, coral reefs, and warm weather, which make it a popular tourist destination. Malindi is also home to several residential developments, including the Casuarina Estate and the Coral Gardens Estate. Land prices in Malindi have been appreciating steadily, making it an attractive investment opportunity.</p>\r\n<p><strong>5. Ruiru</strong></p>\r\n<p><strong><img src=\"https://www.constructionkenya.com/wp-content/uploads/2020/07/Ruiru-town.jpeg\" alt=\"Ruiru: What City Status Means for Residents | CK\" width=\"619\" height=\"343\" /></strong></p>\r\n<p>Ruiru is a fast-growing town located in Kiambu County, about 20 kilometers from Nairobi. The area is known for its industrial parks, which have attracted several multinational companies, including Unilever and Bidco Africa. Ruiru is also home to several residential developments, including the Tatu City and the Migaa Gardens Estate. Land prices in Ruiru have been appreciating steadily, making it an attractive investment opportunity for real estate investors.</p>\r\n<p><strong>6. Kitengela</strong></p>\r\n<p><strong><img src=\"https://i0.wp.com/www.zerox24.com/wp-content/uploads/2019/10/Kitengela-Properties.jpg?resize=678%2C381&amp;ssl=1\" alt=\"Where Is Kitengela Located? Everything You Need To Know - ZEROX 24\" width=\"578\" height=\"325\" /></strong></p>\r\n<p>Kitengela is a fast-growing town located in Kajiado County, about 30 kilometers from Nairobi. The area is known for its affordable housing and its proximity to several schools, including the Kitengela International School and the Acacia Crest Academy. Kitengela is also home to several residential developments, including the Kajiado Hills Estate and the Kitengela Heights Estate. Land prices in Kitengela have been appreciating steadily, making it an attractive investment opportunity.</p>\r\n<p><strong>7. Syokimau</strong></p>\r\n<p><strong><img src=\"https://i0.wp.com/kenyafromwithin.com/wp-content/uploads/2022/10/houses-for-sale-in-syokimau.jpg?fit=1024%2C576&amp;ssl=1\" alt=\"Top 3 Prime Houses for Sale in Syokimau - Kenya From Within\" width=\"579\" height=\"326\" /></strong></p>\r\n<p>Syokimau is a fast-growing town located in Machakos County, about 20 kilometers from Nairobi. The area is known for its affordable housing and its proximity to several schools, including the Gateway School and the Syokimau Primary School. Syokimau is also home to several residential developments, including the Gateway Park Estate and the Syokimau Gardens Estate. Land prices in Syokimau have been appreciating steadily, making it an attractive investment opportunity.</p>\r\n<p><strong>8. Kiserian</strong></p>\r\n<p><strong><img src=\"https://mlamuvblainx.i.optimole.com/scfuUg0-A3gtMc8m/w:auto/h:auto/q:mauto/f:avif/https://royalpropertiesmarket.com/wp-content/uploads/2022/08/IMG_0857.jpg\" alt=\"Kiserian, Corner Baridi: 4 Bedroom House for Sale - Royal Properties Market\" width=\"513\" height=\"385\" /></strong></p>\r\n<p>Kiserian is a town located in Kajiado County, about 20 kilometers from Nairobi. The area is known for its scenic views of the Ngong Hills and its proximity to several tourist destinations, including the Nairobi National Park and the Maasai Mara Game Reserve. Kiserian is also home to several residential developments, including the Oletepesi Gardens Estate and the Kiserian Springs Estate. Land prices in Kiserian have been appreciating steadily, making it an attractive investment opportunity.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Conclusion</strong></p>\r\n<p>&nbsp;Buying land in Kenya is a great way to invest in real estate, but choosing the right location is crucial for a successful investment. Athi River, Juja, Kisaju, Malindi, Ruiru, Kitengela, Syokimau, and Kiserian are all top locations to buy land in Kenya, offering affordable housing, scenic views, and proximity to schools, shopping malls, and tourist destinations. By considering these locations and doing proper research, you can make an informed investment decision and reap the benefits of a long-term real estate investment</p>', 'Buying land in Kenya is a great way to invest in real estate, but choosing the right location is crucial for a successful investment. Athi River, Juja, Kisaju, Malindi, Ruiru, Kitengela, Syokimau, and Kiserian are all top locations to buy land in Kenya, offering affordable housing, scenic views, and proximity to schools, shopping malls, and tourist destinations. By considering these locations and doing proper research, you can make an informed investment decision and reap the benefits of a long-term real estate investment.', 'ivy7u9.jpeg', NULL, 'top-locations-to-buy-land-in-kenya', 'Rental homes in Kenya Finding rental homes in Kenya Tips for finding rental homes in Kenya Comprehensive guide to finding rental homes in Kenya Affordable rental homes in Kenya Best rental homes in Kenya How to find rental homes in Kenya', 'If you\'re looking to invest in real estate in Kenya, buying land is a great way to start. Land is a tangible asset that appreciates in value over time and provides long-term investment returns. However, choosing the right location is crucial for a successful investment. In this blog, we\'ll discuss the top locations to buy land in Kenya.', 7, 'public', NULL, 1, 'Yes', 1, 1, 1, '2023-05-05 07:39:22', '2023-05-05 07:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `blog_id`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '2022-05-23 10:05:39', '2022-05-23 10:05:39'),
(10, 3, 1, '2022-06-13 14:38:37', '2022-06-13 14:38:37'),
(11, 4, 1, '2022-06-13 14:42:45', '2022-06-13 14:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `feature` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_types`
--

CREATE TABLE `blog_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_types`
--

INSERT INTO `blog_types` (`id`, `name`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Standard', '<i class=\"fa fa-wpforms\" aria-hidden=\"true\"></i>', '15', '2016-05-11 23:29:23', '2016-05-11 23:56:44'),
(2, 'Aside ', '<i class=\"fa fa-file-powerpoint-o\" aria-hidden=\"true\"></i>', '15', '2016-05-11 23:57:52', '2016-05-11 23:57:52'),
(3, 'Image', '<i class=\"fa fa-picture-o\" aria-hidden=\"true\"></i>', '15', '2016-05-11 23:59:09', '2016-05-11 23:59:09'),
(4, 'Video', '<i class=\"fa fa-video-camera\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:00:25', '2016-05-12 00:00:25'),
(5, 'Quote ', '<i class=\"fa fa-quote-left\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:05:38', '2016-05-12 00:05:38'),
(6, 'Link', '<i class=\"fa fa-link\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:08:14', '2017-08-04 22:28:57'),
(7, 'Gallery ', '<i class=\"fa fa-file-image-o\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:15:00', '2016-05-12 00:15:00'),
(8, 'Status', '<i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:15:55', '2016-05-12 00:15:55'),
(9, 'Audio', '<i class=\"fa fa-volume-up\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:17:08', '2017-07-10 20:01:32'),
(10, 'Chat', '<i class=\"fa fa-comments-o\" aria-hidden=\"true\"></i>', '15', '2016-05-12 00:18:03', '2016-12-01 18:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `keywords` varchar(180) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `keywords`, `url`, `userID`, `created_at`, `updated_at`) VALUES
(1, 'Tusker', NULL, 'bar', 1, '2019-06-13 18:18:34', '2019-06-13 20:53:05'),
(2, 'Johnny walker', NULL, 'restaurant', 1, '2019-06-13 19:10:21', '2019-06-13 20:55:03'),
(3, 'White cup', NULL, 'beers', 1, '2019-06-13 19:38:29', '2019-06-13 20:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `brand_product`
--

CREATE TABLE `brand_product` (
  `id` int(11) NOT NULL,
  `brands_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_blogs`
--

CREATE TABLE `category_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `featured` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_blogs`
--

INSERT INTO `category_blogs` (`id`, `parentID`, `name`, `url`, `description`, `keywords`, `meta_description`, `image`, `featured`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, 'News', 'news', '<p>News</p>', 'News', 'News', NULL, 'Yes', '15', NULL, NULL, '2021-01-22 10:04:30', '2021-01-22 10:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `product_parent_comment` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `comment_text` text DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `communication`
--

CREATE TABLE `communication` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `adminID` int(11) DEFAULT NULL,
  `conversationID` char(255) NOT NULL,
  `conversation` text NOT NULL,
  `repyto` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication`
--

INSERT INTO `communication` (`id`, `userID`, `adminID`, `conversationID`, `conversation`, `repyto`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '50FTqL', 'Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.', NULL, '2020-04-01 12:56:51', '2020-04-01 12:56:51'),
(2, NULL, 1, '50FTqL', ' Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.', NULL, '2020-04-01 16:17:36', '2020-04-01 16:17:36'),
(3, 1, NULL, '50FTqL', 'When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream', NULL, '2020-04-01 13:23:05', '2020-04-01 13:23:05'),
(4, 1, NULL, '50FTqL', 'A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox.', NULL, '2020-04-01 13:23:56', '2020-04-01 13:23:56'),
(5, NULL, 1, '50FTqL', ' How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk.', NULL, '2020-04-01 16:24:16', '2020-04-01 16:24:16'),
(6, 1, NULL, '34FEgU', 'Test test', NULL, '2020-04-06 19:06:23', '2020-04-06 19:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'China', 'CHN', 156, 86),
(45, 'CX', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'Congo', 'COG', 178, 242),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'France', 'FRA', 250, 33),
(74, 'GF', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'India', 'IND', 356, 91),
(100, 'ID', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'Niger', 'NER', 562, 227),
(156, 'NG', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'Peru', 'PER', 604, 51),
(169, 'PH', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'Poland', 'POL', 616, 48),
(172, 'PT', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'United States', 'USA', 840, 1),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'Kosovo', '---', 0, 381),
(250, 'BL', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `custome_field`
--

CREATE TABLE `custome_field` (
  `id` int(11) NOT NULL,
  `pageID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `custome_field`
--

INSERT INTO `custome_field` (`id`, `pageID`, `title`, `content`, `type`, `created_at`, `updated_at`) VALUES
(10, 7, 'Number 2', '<div class=\"col-sm-4\">\r\n                  <div class=\"pxp-numbers-item mt-4 mt-md-5\">\r\n                     <div class=\"pxp-numbers-item-number\"><span class=\"numscroller\" data-min=\"0\" data-max=\"3000\" data-delay=\"1\" data-increment=\"20\">3000</span>+</div>\r\n                     <div class=\"pxp-numbers-item-title\">Property Units</div>\r\n                  </div>\r\n               </div>', 'plain', '2022-07-15 15:09:43', '2022-07-15 15:09:43'),
(11, 7, 'Number 1', '<div class=\"col-sm-4\">\r\n<div class=\"pxp-numbers-item mt-4 mt-md-5\">\r\n                     <div class=\"pxp-numbers-item-number\"><span class=\"numscroller\" data-min=\"0\" data-max=\"195\" data-delay=\"1\" data-increment=\"1\">995</span>M</div>\r\n                     <div class=\"pxp-numbers-item-title\">Property value</div>\r\n                  </div>\r\n               </div>', 'plain', '2022-07-15 15:09:43', '2022-07-15 15:09:43'),
(12, 7, 'Number 3', '<div class=\"col-sm-4\">\r\n<div class=\"pxp-numbers-item mt-4 mt-md-5\">\r\n<div class=\"pxp-numbers-item-number\"><span class=\"numscroller\" data-min=\"0\" data-max=\"63\" data-delay=\"1\" data-increment=\"1\">70</span>%</div>\r\n<div class=\"pxp-numbers-item-title\">Home ownership</div>\r\n</div>\r\n</div>', 'plain', '2022-07-15 15:09:43', '2022-07-15 15:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_manager`
--

CREATE TABLE `file_manager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_name` char(191) DEFAULT NULL,
  `file_mime` char(191) DEFAULT NULL,
  `file_size` char(191) DEFAULT NULL,
  `cover` int(11) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_manager`
--

INSERT INTO `file_manager` (`id`, `parentID`, `name`, `file_name`, `file_mime`, `file_size`, `cover`, `section`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 1, NULL, 'Bjot3Tshelves-4032134_960_720-768x432.jpg', 'image/jpeg', '92968', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:51', '2022-06-13 14:06:51'),
(5, 1, NULL, 'KJC7FTcouch-with-blue-cushion_1203-320.jpg', 'image/jpeg', '80399', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:51', '2022-06-13 14:06:51'),
(6, 1, NULL, 'z07QSvwhite-frame-mock-up-wall_23-2148374732.jpg', 'image/jpeg', '86900', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:51', '2022-06-13 14:06:51'),
(7, 1, NULL, 'hQI14qvintage-traditional-realistic-frames-set-dark-wall-isolated-vector-illustration_1284-12529.jpg', 'image/jpeg', '99139', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:51', '2022-06-13 14:06:51'),
(8, 1, NULL, '8z9oO7living-room-3498914_960_720-768x512.jpg', 'image/jpeg', '70975', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:52', '2022-06-13 14:06:52'),
(9, 1, NULL, '8ElqKCchairs-2181968_960_720-768x506.jpg', 'image/jpeg', '50151', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:53', '2022-06-13 14:06:53'),
(10, 1, NULL, 'YWk5UKdining-room-3108037_960_720-1-768x457.jpg', 'image/jpeg', '57263', NULL, 'gallery', 1, NULL, '2022-06-13 14:06:53', '2022-06-13 14:06:53'),
(11, 1, NULL, '5JInuknew-home-4083239_960_720-1-768x512.jpg', 'image/jpeg', '108772', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:41', '2022-06-13 14:58:41'),
(12, 1, NULL, 'fALo3Ythe-interior-of-the-1508271_960_720-300x199.jpg', 'image/jpeg', '14838', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:41', '2022-06-13 14:58:41'),
(13, 1, NULL, 'lGRnD8options-396266_960_720-300x225.jpg', 'image/jpeg', '13272', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(14, 1, NULL, 'CVsi18two-men-shaking-hands_53876-63180-300x200.jpg', 'image/jpeg', '12590', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(15, 1, NULL, 'JwIfFlteam-architects-working-construction-plan_23-2147842999.jpg', 'image/jpeg', '130391', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(16, 1, NULL, 'AadY6Pbuilding-plan-354233_960_720-768x503.jpg', 'image/jpeg', '54432', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(17, 1, NULL, 'glUzNRtriangle-3125882_960_720-768x461.jpg', 'image/jpeg', '74205', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(18, 1, NULL, 'yKje4FUntitled-design-2-300x240.jpg', 'image/jpeg', '17457', NULL, 'gallery', 1, NULL, '2022-06-13 14:58:42', '2022-06-13 14:58:42'),
(19, 1, NULL, 'jQMgF1new-home-1664284_960_720.jpg', 'image/jpeg', '130646', NULL, 'gallery', 1, NULL, '2022-06-13 15:22:14', '2022-06-13 15:22:14'),
(20, 1, NULL, 'b0yvouapproved-29149_960_720.webp', 'image/webp', '149756', NULL, 'gallery', 1, NULL, '2022-06-13 15:22:14', '2022-06-13 15:22:14'),
(21, 1, NULL, 'Hqvccimeeting-2284501_960_720.jpg', 'image/jpeg', '117701', NULL, 'gallery', 1, NULL, '2022-06-13 15:22:14', '2022-06-13 15:22:14'),
(22, 1, NULL, 'wQo3u8plan-b.jpg', 'image/jpeg', '98643', NULL, 'gallery', 1, NULL, '2022-06-13 15:22:14', '2022-06-13 15:22:14'),
(23, 1, NULL, 'MNdTWSWhatsApp Image 2022-07-20 at 10.08.18 AM.jpeg', 'image/jpeg', '397903', NULL, 'gallery', 1, NULL, '2022-07-20 11:29:51', '2022-07-20 11:29:51'),
(24, 1, NULL, 'DggXzKWhatsApp Image 2022-07-19 at 4.53.18 PM.jpeg', 'image/jpeg', '174357', NULL, 'gallery', 1, NULL, '2022-07-20 11:29:52', '2022-07-20 11:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) NOT NULL,
  `cover_image` char(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'General', 'WlQjOV.png', NULL, 15, 1, 1, '2022-03-21 06:55:46', '2022-03-21 07:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `names` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `view_date` date DEFAULT NULL,
  `view_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `type`, `names`, `subject`, `email`, `phone_number`, `message`, `property_id`, `view_date`, `view_time`, `created_at`, `updated_at`) VALUES
(1, 'Property', 'megadej@mailinator.com', 'Biashara Plaza, Naivasha Viewing inquiry', 'zetyfy@mailinator.com', NULL, 'Omnis aspernatur ut', 5, NULL, NULL, '2022-05-26 10:45:36', '2022-05-26 10:45:36'),
(2, 'Property', 'megadej@mailinator.com', 'Biashara Plaza, Naivasha Viewing inquiry', 'zetyfy@mailinator.com', NULL, 'Omnis aspernatur ut', 5, NULL, NULL, '2022-05-26 10:47:25', '2022-05-26 10:47:25'),
(3, 'Property', 'qodisu@mailinator.com', 'Biashara Plaza, Naivasha Viewing inquiry', 'tokiqevepu@mailinator.com', '545', 'In odio quasi Nam qu', 5, '2018-11-09', '20:13:00', '2022-05-26 11:13:28', '2022-05-26 11:13:28'),
(4, 'Property', 'vymyni@mailinator.com', 'Woodley Springs- 3 Bedroom apartment To Let Viewing inquiry', 'sixufagif@mailinator.com', '581', 'Laborum eius ut aute', 4, '1977-04-16', '22:09:00', '2022-06-14 18:07:54', '2022-06-14 18:07:54'),
(5, 'Property', 'Michel Mutabazi', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'mutabazimich@yahoo.fr', '0725984499', 'Would you email me the prices please', 7, '2022-09-12', '15:00:00', '2022-08-11 14:07:13', '2022-08-11 14:07:13'),
(6, 'Property', 'MATHEW', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'mmusau2005@yahoo.com', '0722294161', NULL, 7, '2022-08-19', '10:00:00', '2022-08-16 11:03:04', '2022-08-16 11:03:04'),
(7, 'Property', 'Eliakim', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'kimeliakim2005@gmail.com', '0716228548', 'Hi', 7, '2022-09-09', '00:31:00', '2022-08-17 05:31:39', '2022-08-17 05:31:39'),
(8, 'Property', 'Daki Abkase Huka', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'dakihuka65@gmail.com', '254702176654', 'I would like to know more about the course offered in USIU that is computer course', 7, '2022-08-24', '18:17:00', '2022-08-22 09:17:07', '2022-08-22 09:17:07'),
(9, 'Property', 'Isaac Odhiambo', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'isaac.odhiambo@ncbagroup.com', '0721844552', 'Good Morning. I was at the location on saturday and interested. However looking at acquiring next year March through bank financing. Hope will find something  then.', 7, '2022-12-12', '10:00:00', '2022-11-28 07:58:02', '2022-11-28 07:58:02'),
(10, 'Property', 'Dominic Tioko', 'Bustani Park ll, Kitengela Milimani Viewing inquiry', 'dominictioko@gmail.com', '0700149621', 'My hope is to enjoy the right more services and to maintain a good nice', 10, '2022-12-13', '23:04:00', '2022-12-13 20:06:26', '2022-12-13 20:06:26'),
(11, 'Property', 'BERNARD OSURE', 'Acacia Plots, Kitengela Viewing inquiry', 'bernardapput@gmail.com', '0722709730', 'I know the place. Payment terms', 12, '2022-12-23', '12:00:00', '2022-12-19 13:24:46', '2022-12-19 13:24:46'),
(12, 'Property', 'Irene', 'Bustani Park ll, Kitengela Milimani Viewing inquiry', 'iwambui@kiambuwater.com', '0721472262', 'When do you have sight visits?', 10, '2022-12-31', '09:35:00', '2022-12-22 22:36:42', '2022-12-22 22:36:42'),
(13, 'Property', 'Mumo Philip', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'mumophilip@hotmail.com', '0725090098', 'Confirm possibility to pay in installments.', 7, '2023-01-09', '11:28:00', '2023-01-02 04:29:42', '2023-01-02 04:29:42'),
(14, 'Property', 'John Akot', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'akotnyal7@gmail.com', '0704684469', 'I want to view the plot', 7, '2023-01-04', '11:40:00', '2023-01-02 21:19:38', '2023-01-02 21:19:38'),
(15, 'Property', 'Lucy Riley', '3 Bedrooms Master Ensuite Viewing inquiry', 'lucciriley@gmail.com', '0721553834', NULL, 8, '2023-01-08', '14:30:00', '2023-01-04 09:19:21', '2023-01-04 09:19:21'),
(16, 'Property', 'Peter Wanambisi', 'Residential Plots in Kiserian, Near Olerai School Viewing inquiry', 'pwanambisi@gmail.com', '0720403962', NULL, 20, '2023-01-07', '11:00:00', '2023-01-05 12:30:27', '2023-01-05 12:30:27'),
(17, 'Property', 'Jones Mananda', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'manandajones@yahoo.com', '0733703569', 'Call me', 7, '2023-01-07', '10:45:00', '2023-01-06 21:34:06', '2023-01-06 21:34:06'),
(18, 'Property', 'Jones Mananda', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'manandajones@yahoo.com', '0733703569', 'Call me', 7, '2023-01-07', '10:45:00', '2023-01-06 21:34:06', '2023-01-06 21:34:06'),
(19, 'Property', 'Maingi', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'antmaing@yahoo.com', '0792505660', 'I am interested with this project. Are available plots', 7, '2023-01-11', '15:58:00', '2023-01-08 10:59:37', '2023-01-08 10:59:37'),
(20, 'Property', 'George', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'gngwako@yahoo.com', '0779732911', NULL, 7, '2023-01-21', '11:00:00', '2023-01-12 21:09:28', '2023-01-12 21:09:28'),
(21, 'Property', 'ABDIRIZAK', 'Acacia Plots, Kitengela Viewing inquiry', 'bilaalg8@hotmail.com', '0748440607', NULL, 12, '2023-01-14', '03:05:00', '2023-01-14 00:05:38', '2023-01-14 00:05:38'),
(22, 'Property', 'kinuthia kenneth', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'kinuthia1961@gmail.com', '0722512210', 'I am interested in the plots', 7, '2023-01-18', '11:07:00', '2023-01-16 02:09:04', '2023-01-16 02:09:04'),
(23, 'Property', 'Moureen khatioli', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'khatiolimaureen57@gmail.com', '0759842043', 'Sir or madam, Application for job as a cleaner,l here by apply for job mentioned above with all respect and lam willing and capable of working in any condition I have been a cleaner in many restorants and my work has aways been appreciate l will be appreciative if you will lend me this wonderful opportunity iam kindly looking forward for hearing from you , thank in advance,', 7, '2023-01-18', '05:40:00', '2023-01-18 02:53:02', '2023-01-18 02:53:02'),
(24, 'Property', 'Moureen khatioli', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'khatiolimaureen57@gmail.com', '0759842043', 'Sir or madam, Application for job as a cleaner,l here by apply for job mentioned above with all respect and lam willing and capable of working in any condition I have been a cleaner in many restorants and my work has aways been appreciate l will be appreciative if you will lend me this wonderful opportunity iam kindly looking forward for hearing from you , thank in advance,', 7, '2023-01-18', '05:40:00', '2023-01-18 02:55:58', '2023-01-18 02:55:58'),
(25, 'Property', 'Lynn Kimeto', 'Residential Plots in Kiserian, Near Olerai School Viewing inquiry', 'lynnkimeto55@gmail.com', '0717269050', NULL, 20, '2023-03-12', '20:52:00', '2023-03-12 17:52:31', '2023-03-12 17:52:31'),
(26, 'Property', 'Lynn Kimeto', 'Residential Plots in Kiserian, Near Olerai School Viewing inquiry', 'lynnkimeto55@gmail.com', '0717269050', NULL, 20, '2023-03-12', '16:52:00', '2023-03-12 17:52:55', '2023-03-12 17:52:55'),
(27, 'Property', 'Joyce Rogito', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'knrjoy@yahoo.com', '7636478197', 'got interest in your property.', 7, '2023-03-21', '16:39:00', '2023-03-14 08:40:13', '2023-03-14 08:40:13'),
(28, 'Property', 'Joyce Rogito', 'Serenity Meadows, Syokimau Community road Viewing inquiry', 'knrjoy@yahoo.com', '7636478197', 'got interest in your property.', 7, '2023-03-21', '16:39:00', '2023-03-14 08:40:13', '2023-03-14 08:40:13'),
(29, 'Property', 'Michael Saiba', '5 Bedroom Maisonette in Thome Estate-SOLD OUT Viewing inquiry', 'michaelsaiba84@gmail.com', '0716202298', 'I\'m interested in land/apartments', 6, NULL, NULL, '2023-03-16 09:33:04', '2023-03-16 09:33:04'),
(30, 'Property', 'Willis lutta', '3 Bedroom Apartments with DSQ Viewing inquiry', 'werewillis@gmail.com', '0706500694', NULL, 9, NULL, NULL, '2023-03-24 07:52:51', '2023-03-24 07:52:51'),
(31, 'Property', 'Johnstone Michael Obiero K\'Owino', '3 Bedroom Apartments with DSQ Viewing inquiry', 'johnstonmichael129@gmail.com', '0721907586', NULL, 9, NULL, NULL, '2023-04-20 07:04:12', '2023-04-20 07:04:12'),
(32, 'Property', 'Richard', 'Magnificent 2 and 3 bedroom Apartments located along Kindaruma Rd, Kilimani. Viewing inquiry', NULL, '254723763332', 'I am interested with the 2or 3 bedroom with dsq', 29, NULL, NULL, '2023-04-21 17:43:25', '2023-04-21 17:43:25'),
(33, 'Property', 'Edwin', 'Residential Plots For Sale in Kitengela Milimani Viewing inquiry', 'ekeverenge@yahoo.com', '0721127876', 'Would like to view the milimani kitengela plots', 10, NULL, NULL, '2023-04-26 12:30:36', '2023-04-26 12:30:36'),
(34, 'Property', 'Washington Dinga', 'Residential Plots For Sale in, Community Road, Syokimau Viewing inquiry', 'mcdinga86@gmail.com', '0757625156', 'Interested in the Land 50*100', 7, NULL, NULL, '2023-04-30 10:18:58', '2023-04-30 10:18:58'),
(35, 'Property', 'Washington Dinga', 'Residential Plots For Sale in Kitengela Milimani Viewing inquiry', 'mcdinga86@gmail.com', '0757625156', 'Interested in Mlimani plots Kitengela. Size 50*100', 10, NULL, NULL, '2023-04-30 10:24:28', '2023-04-30 10:24:28'),
(36, 'Property', 'Washington Dinga', 'Residential Plots For Sale in Kitengela Milimani Viewing inquiry', 'mcdinga86@gmail.com', '0757625156', 'Interested in Mlimani plots Kitengela. Size 50*100', 10, NULL, NULL, '2023-04-30 10:24:46', '2023-04-30 10:24:46'),
(37, 'Property', 'Gagan', 'Mixed Use Plots For Sale in Lower Kabete Viewing inquiry', 'gagandeep.hayer@gmail.com', '0737331490', NULL, 35, NULL, NULL, '2023-05-07 14:07:42', '2023-05-07 14:07:42'),
(38, 'Property', 'Dominic Tioko', 'Mixed Use Plots For Sale in Acacia, Kitengela Viewing inquiry', 'dominictioko@gmail.com', '0700149621', NULL, 12, NULL, NULL, '2023-05-11 05:50:39', '2023-05-11 05:50:39'),
(39, 'Property', 'Dominic tioko', 'Mixed Use Plots For Sale in Acacia, Kitengela Viewing inquiry', 'dominictioko@gmail.com', '0700149621', 'I am very interested in this job opportunity', 12, NULL, NULL, '2023-05-11 05:53:10', '2023-05-11 05:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, '2017-04-20 12:33:55'),
(2, 'Kiswahili', 'ksw', NULL, NULL),
(3, 'French', 'fr', '2017-04-06 19:09:26', '2017-04-20 12:37:32'),
(4, 'Germany', 'gr', '2017-04-20 11:01:58', '2017-04-20 11:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `language_sections`
--

CREATE TABLE `language_sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language_sections`
--

INSERT INTO `language_sections` (`id`, `name`, `directory`, `created_at`, `updated_at`) VALUES
(1, 'General Section', 'general', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(2, 'Finance Section', 'finance', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(3, 'Human Resource Section', 'hr', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(4, 'Customer Relationship Management Section', 'crm', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(5, 'Project Management Section', 'project', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(6, 'Mail Section', 'mail', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(7, 'Content Management System', 'cms', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(8, 'Personal', 'personal', '2018-07-09 00:00:00', '2018-07-09 00:00:00'),
(9, 'Settings', 'settings', '2018-07-09 00:00:00', '2018-07-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) NOT NULL,
  `status` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `status`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'main', 15, NULL, 1, NULL, '2022-05-13 06:16:14', '2022-05-13 06:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_04_192705_create_admins_table', 2),
(5, '2020_03_04_192749_create_admins_password_resets_table', 2),
(6, '2020_04_01_143931_create_communication_table', 3),
(7, '2020_11_24_085729_create_gallery_table', 4),
(8, '2020_11_24_153759_create_page_menu_table', 5),
(9, '2020_11_24_154132_create_menu_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `visibility` varchar(100) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `template` int(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parentID`, `title`, `content`, `url`, `custom_url`, `thumbnail`, `meta_tags`, `meta_description`, `status`, `visibility`, `publish_time`, `template`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2022-05-13 06:15:57', '2022-05-13 06:15:57'),
(2, 0, 'Blog', '<p>Blog</p>', 'blog', NULL, NULL, NULL, NULL, 31, 'public', NULL, 1, 1, NULL, '2022-05-13 06:17:36', '2022-05-13 07:35:10'),
(3, 0, 'About us', NULL, 'about-us', NULL, NULL, NULL, NULL, 31, 'public', NULL, 1, 1, NULL, '2022-05-13 06:17:53', '2022-05-13 07:36:32'),
(4, 0, 'contact us', NULL, 'contact-us', NULL, NULL, NULL, NULL, 31, 'public', NULL, 2, 1, NULL, '2022-05-13 06:18:03', '2022-05-13 07:41:42'),
(6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2022-05-13 06:21:02', '2022-05-13 06:21:02'),
(7, 0, 'Home', '<p>Rochman Properties has a heritage of 15 years in the real estate industry, driven by a vision to provide quality property solutions in Kenya that offers optimum returns of investment. With its wealth of experience, Rochman Properties Limited is continuously dedicated to providing environmentally sustainable, strategically located and economically viable properties within Kenya.</p>', 'home', NULL, NULL, 'Rochman Properties, Real estate,', 'Rochman Properties has a heritage of 15 years in the real estate industry, driven by a vision to provide quality property solutions in Kenya that offers optimum returns of investment.', 31, 'public', NULL, NULL, 1, NULL, '2022-05-13 06:25:43', '2022-07-15 12:09:42'),
(8, 0, 'Our Services', NULL, 'our-services', NULL, NULL, NULL, NULL, 31, 'public', NULL, 3, 1, NULL, '2022-05-13 08:40:12', '2022-05-16 04:13:58'),
(9, 0, 'Awards', NULL, 'awards', NULL, NULL, NULL, NULL, 31, 'public', NULL, 4, 1, NULL, '2022-05-24 08:06:17', '2022-05-24 08:07:08'),
(10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2022-06-22 07:21:33', '2022-06-22 07:21:33'),
(11, 0, 'Careers', '<p>Send your cv to sales@rochman-properties.co.ke</p>', 'careers', NULL, NULL, NULL, NULL, 31, 'public', NULL, NULL, 1, NULL, '2022-07-15 12:14:44', '2022-07-20 11:44:22'),
(12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2022-07-20 11:27:40', '2022-07-20 11:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `page_menu`
--

CREATE TABLE `page_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menuID` int(11) NOT NULL,
  `pageID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_menu`
--

INSERT INTO `page_menu` (`id`, `menuID`, `pageID`, `parentID`, `position`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0, 5, 1, NULL, '2022-05-13 06:21:32', '2022-07-15 12:15:36'),
(2, 1, 3, 0, 2, 1, NULL, '2022-05-13 06:21:33', '2022-07-15 12:15:38'),
(3, 1, 2, 0, 4, 1, NULL, '2022-05-13 06:21:35', '2022-07-15 12:15:36'),
(4, 1, 8, 0, 1, 1, NULL, '2022-05-13 08:40:33', '2022-07-15 12:15:38'),
(5, 0, 9, 0, 0, 1, NULL, '2022-05-24 08:07:16', '2022-05-24 08:07:25'),
(6, 0, 11, 0, 3, 1, NULL, '2022-07-15 12:15:34', '2022-07-15 12:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `page_template`
--

CREATE TABLE `page_template` (
  `id` int(11) NOT NULL,
  `blade_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `page_template`
--

INSERT INTO `page_template` (`id`, `blade_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'about', 1, NULL, '2022-05-13 10:35:06', '2022-05-13 10:35:06'),
(2, 'contact', 1, NULL, '2022-05-13 10:41:38', '2022-05-13 10:41:38'),
(3, 'services', 1, NULL, '2022-05-16 07:12:38', '2022-05-16 07:12:38'),
(4, 'awards', 1, NULL, '2022-05-24 11:07:04', '2022-05-24 11:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `keywords` varchar(180) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `parentID`, `name`, `description`, `status`, `meta_description`, `keywords`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Properties', NULL, '15', NULL, NULL, 'properties', NULL, '2022-05-13 09:19:14', '2022-05-13 09:19:14'),
(2, NULL, 'Projects', NULL, '15', NULL, NULL, 'projects', NULL, '2022-05-13 09:19:23', '2022-05-13 09:19:23'),
(3, 1, 'For Rent', NULL, '15', NULL, NULL, 'to-let', NULL, '2022-05-13 10:04:57', '2022-06-04 13:09:21'),
(6, 2, 'Completed Projects', NULL, '15', NULL, NULL, 'completed-projects', NULL, '2022-05-13 11:41:50', '2022-05-13 11:41:50'),
(7, 2, 'Ongoing Projects', NULL, '15', NULL, NULL, 'ongoing-projects', NULL, '2022-05-13 11:42:23', '2022-05-13 11:42:23'),
(8, 1, 'For Sale', NULL, '15', NULL, NULL, 'for-sale', NULL, '2022-06-04 13:09:40', '2022-06-04 13:10:28'),
(9, 1, 'Land for Sale', NULL, '15', NULL, NULL, 'land-for-sale', NULL, '2022-06-07 20:53:43', '2022-06-07 20:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_product_information`
--

CREATE TABLE `product_category_product_information` (
  `id` int(11) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_category_product_information`
--

INSERT INTO `product_category_product_information` (`id`, `categoryID`, `productID`, `created_at`, `updated_at`) VALUES
(203, 9, 19, '2022-11-30', '2022-11-30'),
(209, 1, 21, '2023-01-19', '2023-01-19'),
(210, 8, 21, '2023-01-19', '2023-01-19'),
(273, 1, 8, '2023-03-03', '2023-03-03'),
(274, 8, 8, '2023-03-03', '2023-03-03'),
(282, 8, 29, '2023-03-08', '2023-03-08'),
(286, 8, 22, '2023-03-08', '2023-03-08'),
(293, 1, 9, '2023-03-08', '2023-03-08'),
(294, 8, 9, '2023-03-08', '2023-03-08'),
(297, 3, 5, '2023-03-08', '2023-03-08'),
(298, 1, 4, '2023-03-08', '2023-03-08'),
(299, 3, 4, '2023-03-08', '2023-03-08'),
(304, 1, 1, '2023-03-10', '2023-03-10'),
(305, 3, 1, '2023-03-10', '2023-03-10'),
(306, 6, 17, '2023-03-10', '2023-03-10'),
(307, 6, 16, '2023-03-10', '2023-03-10'),
(308, 6, 15, '2023-03-10', '2023-03-10'),
(309, 6, 14, '2023-03-10', '2023-03-10'),
(314, 1, 6, '2023-03-10', '2023-03-10'),
(315, 3, 6, '2023-03-10', '2023-03-10'),
(316, 1, 2, '2023-03-10', '2023-03-10'),
(317, 3, 2, '2023-03-10', '2023-03-10'),
(319, 9, 18, '2023-03-17', '2023-03-17'),
(322, 7, 23, '2023-03-20', '2023-03-20'),
(323, 8, 23, '2023-03-20', '2023-03-20'),
(324, 7, 32, '2023-03-20', '2023-03-20'),
(325, 8, 32, '2023-03-20', '2023-03-20'),
(326, 6, 24, '2023-03-20', '2023-03-20'),
(327, 8, 24, '2023-03-20', '2023-03-20'),
(328, 1, 11, '2023-03-20', '2023-03-20'),
(329, 8, 11, '2023-03-20', '2023-03-20'),
(330, 7, 30, '2023-03-23', '2023-03-23'),
(331, 8, 30, '2023-03-23', '2023-03-23'),
(334, 7, 28, '2023-03-23', '2023-03-23'),
(335, 8, 28, '2023-03-23', '2023-03-23'),
(336, 7, 27, '2023-03-23', '2023-03-23'),
(337, 8, 27, '2023-03-23', '2023-03-23'),
(340, 7, 25, '2023-03-23', '2023-03-23'),
(341, 8, 25, '2023-03-23', '2023-03-23'),
(342, 7, 31, '2023-03-23', '2023-03-23'),
(343, 8, 31, '2023-03-23', '2023-03-23'),
(345, 8, 34, '2023-03-28', '2023-03-28'),
(353, 7, 26, '2023-03-30', '2023-03-30'),
(354, 8, 26, '2023-03-30', '2023-03-30'),
(357, 9, 36, '2023-04-20', '2023-04-20'),
(358, 9, 37, '2023-04-20', '2023-04-20'),
(359, 9, 35, '2023-04-20', '2023-04-20'),
(360, 9, 33, '2023-04-20', '2023-04-20'),
(361, 9, 20, '2023-04-20', '2023-04-20'),
(362, 1, 13, '2023-04-20', '2023-04-20'),
(363, 9, 13, '2023-04-20', '2023-04-20'),
(364, 1, 12, '2023-04-20', '2023-04-20'),
(365, 9, 12, '2023-04-20', '2023-04-20'),
(366, 1, 10, '2023-04-20', '2023-04-20'),
(367, 9, 10, '2023-04-20', '2023-04-20'),
(368, 1, 7, '2023-04-20', '2023-04-20'),
(369, 9, 7, '2023-04-20', '2023-04-20'),
(370, 1, 3, '2023-04-20', '2023-04-20'),
(371, 9, 3, '2023-04-20', '2023-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `stories` varchar(20) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `amenities` text DEFAULT NULL,
  `item_condition` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `bedrooms` varchar(11) DEFAULT NULL,
  `bathrooms` varchar(11) DEFAULT NULL,
  `garadge` varchar(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `schools` text DEFAULT NULL,
  `feature_alert` varchar(255) DEFAULT NULL,
  `feature_color` varchar(255) DEFAULT NULL,
  `video` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `parentID`, `type`, `product_name`, `stories`, `latitude`, `longitude`, `short_description`, `description`, `size`, `year`, `url`, `map`, `amenities`, `item_condition`, `status`, `price`, `bedrooms`, `bathrooms`, `garadge`, `location`, `schools`, `feature_alert`, `feature_color`, `video`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'House', 'Amara Ridge – Karen- SOLD OUT', NULL, NULL, NULL, 'Amara Ridge, an exclusive private gated community in Karen, is close to everything in Karen yet tucked away from it all. Conveniently located with easy access to Lang’ata Road and Ngong’ Road, residents have an array of amenities to enjoy, and events to keep their calendars buzzing with activity all year round.', '<p>Amara Ridge, an exclusive private gated community in Karen, is close to everything in Karen yet tucked away from it all. Conveniently located with easy access to Lang&rsquo;ata Road and Ngong&rsquo; Road, residents have an array of amenities to enjoy, and events to keep their calendars buzzing with activity all year round.</p>\r\n<p>A simple view of Amara Classic takes one back to the &nbsp;ancient yet timeless feel of empirical housing structure; giving a true feel of Grecian inspired architecture. The enduring atmosphere brought about by the classic pillars and moldings on the exterior gives one an expectation of priceless Persian rugs and pottery, ancient paintings and sculptures by famous artists and ornate mirrors in the interior.</p>\r\n<p>The sumptuous floor plans and expansive multi-functional spaces cater for every &nbsp;family need to create a signature lifestyle.</p>\r\n<p>The &nbsp;amenities include:</p>\r\n<ul>\r\n<li>Expansive state of the art kitchen</li>\r\n<li>Grand double height lobby</li>\r\n<li>Entertainment area</li>\r\n<li>Study room</li>\r\n<li>Classic &nbsp;ample parking for 5 cars</li>\r\n<li>Two servant quarters</li>\r\n<li>Common swimming pool</li>\r\n<li>Water recycling plant</li>\r\n</ul>', NULL, NULL, 'amara-ridge-karen-sold-out', NULL, 'null', NULL, 15, '450000', '5', NULL, '5', 'Karen', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 07:06:47', '2023-03-10 13:52:47'),
(2, NULL, 'House', 'Bel Air – Karen-SOLD OUT', NULL, NULL, NULL, 'The exquisite and intricate 4 bedroom homes with two servant quarters sitting on 0.5  acres in a gated community of only 10 princely units.', '<p>The exquisite and intricate 4 bedroom homes with two servant quarters sitting on 0.5 &nbsp;acres in a gated community of only 10 princely units.</p>\r\n<p>Located off Miotoni road Minutes drive to The Hub Shopping Centre, Karen Crossroads, The Talisman Restaurant and the newly opened DOJO Fitness Club.Easy access to the Southern Bypass. This location is ideal for families where the working spouse is commuting to the Industrial Area, JKIA to the East and also those commuting to Westlands.</p>\r\n<h3>The amenities include:</h3>\r\n<ul>\r\n<li>Open plan dining room and lounge with a fireplace with double doors off each leading to the terrace</li>\r\n<li>Covered terrace overlooking the garden replete with slide and trampoline set</li>\r\n<li>Superb kitchen with granite countertops and elegant mahogany cabinetry</li>\r\n<li>Bar area off the living room</li>\r\n<li>Visitors restroom</li>\r\n<li>Guest bedroom with ensuite bathroom</li>\r\n<li>Master bedroom with fireplace, walk in cupboard, ensuite bathroom and balcony</li>\r\n<li>Two children&rsquo;s bedrooms with ensuite bathrooms</li>\r\n<li>Study room</li>\r\n</ul>', NULL, NULL, 'bel-air-karen-sold-out', NULL, 'null', NULL, 15, '350000', '4', NULL, '4', 'Karen', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 07:37:31', '2023-03-10 13:56:30'),
(3, NULL, 'Land', 'Commercial Plots For Sale in Eastern Bypass', NULL, '36.992880', '-1.234616', 'This is an investment opportunity second to none just 200m from the Eastern by pass behind the Afro Sayari Park.', '<p>This is an investment opportunity second to none just 200m from the Eastern by pass behind the Afro Sayari Park.</p>\r\n<p style=\"text-align: justify;\">The demand for land in this area is being driven by the increased economic activities in the vicinity and its accessibility through major roads i.e. Mombasa Road &amp; Thika Road as well as other smaller roads. With the tremendous investment in industrial parks, ware housing and the road network in the area, Ruai is one of the fastest growing satellite towns in Nairobi.</p>\r\n<p>Get a 1/8 acre piece of land in one of the most envied locations in the satellite town of Ruai, ideal for a residential home. With the tremendous growth rate in the area, you don&rsquo;t want to miss the investment opportunity where capital appreciation is as high as 8%</p>\r\n<p><strong>CASH OFFER</strong></p>\r\n<p>Ksh 4,500,000/-&nbsp;</p>', NULL, NULL, 'commercial-plots-for-sale-in-eastern-bypass', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.372426088263!2d36.98865281573564!3d-1.2346106334392035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x41a2a3bdd1cb30b6!2zMcKwMTQnMDQuNiJTIDM2wrA1OSczNC40IkU!5e1!3m2!1sen!2ske!4v1656493377569!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '5200000', NULL, NULL, NULL, 'Eastern Bypass, behind Afro Sayari', NULL, 'Featured', 'black', NULL, NULL, NULL, '2022-05-16 07:46:04', '2023-04-20 12:31:33'),
(4, NULL, 'Apartments', 'Woodley Springs- 3 Bedroom apartment To Let', NULL, '1°18\'15.6\"S', '36°46\'47.1\"E', NULL, '<p style=\"text-align: justify;\">3 Bedroom apartment +dsq (Open plan kitchen) to let at Woodley Springs, a timeless yet contemporary development strategically located off Ngong Road within a pristine gated neighborhood with close proximity to major business and social amenities i.e. Shopping Centers, Schools, Hospitals, Sports facilities, Offices, Good Transport Links etc.</p>\r\n<p style=\"text-align: justify;\">The luxurious apartments can be accessed through Suna road, which connects to Ngong Road at Adams Arcade roundabout.</p>\r\n<p style=\"text-align: justify;\">3 Bedroom unit (Plinth area 150sqm)</p>\r\n<p><strong>Unique Features</strong></p>\r\n<ul>\r\n<li>A domestic quarters</li>\r\n<li>A foyer entrance</li>\r\n<li>Living room</li>\r\n<li>Dining area</li>\r\n<li>Grand kitchen with pantry</li>\r\n<li>High spec fitted bathrooms</li>\r\n<li>Master en suite</li>\r\n<li>Spacious fitted wardrobes</li>\r\n<li>Large french windows</li>\r\n<li>parquet floors</li>\r\n<li>Mahogany doors</li>\r\n</ul>', NULL, NULL, 'woodley-springs-3-bedroom-apartment-to-let', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d853.070105250838!2d36.779199829162884!3d-1.304323659183026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x533d4decff0b0cf5!2zMcKwMTgnMTUuNiJTIDM2wrA0Nic0Ny4xIkU!5e1!3m2!1sen!2ske!4v1657876442965!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '[\"Internet\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Large closets\",\"Walk-in closets\",\"Garbage disposal\",\"Large windows with lots of light\",\"Fitness center\",\"Spa\",\"Fitness center\",\"Gated community\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Conference rooms\",\"Elevator\"]', NULL, 15, '70000', '3', NULL, '3', 'Woodley, Nairobi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:38:13', '2023-03-08 09:34:01'),
(5, NULL, 'Commercial property', 'Biashara Plaza, Naivasha', NULL, '-0.716671', '36.434981', NULL, '<p style=\"text-align: justify;\">Biashara plaza&nbsp;is a majestic five storey business hub located at the heart of&nbsp;Naivasha&nbsp;town, along Biashara street just next to Naivas Supermarket. It is strategically located at the central business district and hosts serious brands such as Safaricom and Kenya Institute of Management (KIM) Naivasha.</p>\r\n<p><strong>Why Biashara Plaza?</strong></p>\r\n<ul>\r\n<li>No goodwill</li>\r\n<li>Strategic location: high customers traffic</li>\r\n<li>Management office on site</li>\r\n<li>24 hours security with security alarm system</li>\r\n<li>Cleaners round the clock</li>\r\n<li>Business space ideal for both corporate offices and retail outlets.</li>\r\n</ul>\r\n<p><em><strong>Book your space today and enjoy special prices</strong></em></p>\r\n<p>&nbsp;</p>', NULL, NULL, 'biashara-plaza-naivasha', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1376.2403653988304!2d36.43406716237296!3d-0.7169648177949332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182917b24f40aeb1%3A0xe8afa927409fbec!2sBiashara%20Plaza!5e1!3m2!1sen!2ske!4v1657876207620!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '10000', NULL, NULL, NULL, 'Biashara Street, Naivasha Town', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 09:14:52', '2023-03-08 09:33:12'),
(6, NULL, 'House', '5 Bedroom Maisonette in Thome Estate-SOLD OUT', NULL, '-1.3159505', '36.6874308', NULL, '<p>Thome Estate is one of the most prestigious and sort after residence located only 2 km from Mountain Mall in Roasters and 1 km away from Northern By-pass. The five Bedroom house is located in a gated community of only five units with an electric fence. The amenities include:</p>\r\n<ul>\r\n<li>Master en-suite</li>\r\n<li>Three bathrooms</li>\r\n<li>Three parking slots</li>\r\n<li>24/7 security guards</li>\r\n<li>Electric fence</li>\r\n</ul>', NULL, NULL, '5-bedroom-maisonette-in-thome-estate-sold-out', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7977.5320485393895!2d36.68743049043797!3d-1.3159506132800856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1c809869d64b%3A0x199b5604a77f13f5!2sKaren%2C%20Nairobi!5e0!3m2!1sen!2ske!4v1654347143634!5m2!1sen!2ske\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '[\"Internet\",\"Garage\",\"Air Conditioning\",\"Dishwasher\",\"Disposal\",\"Balcony\",\"Gym\",\"Bar\"]', NULL, 15, '115000', '5', NULL, '7', 'Thome Estate', '<table class=\"table\" style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48.3258%; text-align: center;\">School Name</td>\r\n<td style=\"width: 48.3258%; text-align: center;\">School Type</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">Makini</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n<td style=\"width: 48.3258%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, '2022-05-23 09:20:54', '2023-03-10 13:55:32'),
(7, NULL, 'Land', 'Residential Plots For Sale in, Community Road, Syokimau', NULL, '36.954050', '-1.351486', '50x100 serviced plots', '<p style=\"text-align: justify;\">This prime gated community is located only 4.5km from Mombasa Road near JKIA and touches the main Syokimau Community road (Under construction for tarmacking). The community comprises of 40 plots which are 1/8 acre in size and are for controlled residential developments of either a Maisonette or bungalows with your own design.</p>\r\n<p style=\"text-align: justify;\"><br />With the tarmacking of Community road all the way to Mombasa road, residents will be able to enjoy the luxury of movement to and from their beautiful homes. The secure gated community allows for development of homes to everyone who seek for tranquility and quiet ambience, peace, comfort, security and joyful feeling out of the noisy and buzzling city. With this high demand of housing units in the fast growing area, Serenity Meadows is a golden opportunity to multiply your investment due to the high appreciation returns attached to it.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Key Features</strong><br />&bull; Proximity to Midland Preparatory school, Notre Dame International School, and Koolridge Academy.<br />&bull; Proximity to Gateway Mall, 4.5km only.<br />&bull; Proximity to the J.K.I.A and the Syokimau SGR station, 10 minutes&rsquo; drive.<br />&bull; Easy to Access from both Syokimau Airport road, Kiungani Road and Katani Road<br />&bull; Electricity available<br />&bull; Religious places of worship- St. Veronica Catholic Church, Syokimau East SDA Church, A.I.C Syokimau<br />Church, Masjid Futuhaat &amp; Syokimau Jamia Mosques.<br />As Rochman Properties Limited, our value additions for the community include:<br />&bull; Borehole water on site<br />&bull; Perimeter wall<br />&bull; Internal access roads<br />&bull; Provision of kids playing area</p>', NULL, NULL, 'residential-plots-for-sale-in-community-road-syokimau', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1999.9487287800562!2d36.951625391671854!3d-1.3515448554385556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7aaf7472010fee8f!2zMcKwMjEnMDUuNiJTIDM2wrA1NycxNC44IkU!5e1!3m2!1sen!2ske!4v1655910086098!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '4600000', NULL, NULL, NULL, 'Syokimau Community Road', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 47.8812%;\"><strong>Name</strong></td>\r\n<td style=\"width: 47.8812%;\"><strong>Location</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.8812%;\">Midland Preparatory School</td>\r\n<td style=\"width: 47.8812%;\">Community road</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.8812%;\">Notre Dame School</td>\r\n<td style=\"width: 47.8812%;\">Kiungani Road</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.8812%;\">The Daniel School</td>\r\n<td style=\"width: 47.8812%;\">Community Road</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.8812%;\">Destiny Life Church</td>\r\n<td style=\"width: 47.8812%;\">Community road</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Offer!', 'red', NULL, NULL, NULL, '2022-06-22 12:47:38', '2023-04-20 12:29:55'),
(8, NULL, 'Apartments', '2 and 3 Bedrooms Master Ensuite', NULL, '36.753829', '-1.300742', 'Grand Eben Park Apartments', '<p>The Grand Eben is an elite architectural jewel located along Ngong Road just 2 km from the lavish Ngong Race course &amp; Golf club and a within walking distance from The Junction Mall. Sitting on a distending acre and towering 20 meters high (7 floors), The Grand Eben is an iconic development designed for absolute luxury and class, ideal for living and investing.</p>\r\n<p>At The Grand Eben&rsquo;s strategic sphere of potential, one will continue to relish convenient urban living with the perfect blend of residential, commercial, cultural, retail and recreation. With there being oversupply of apartments in the current Kenyan market, noteworthy and distinctive developments such as The Grand Eben carry the light of day, with no close comparatives in the area, making them sound investment choices.</p>\r\n<p>It consists of exquisite 28 three bedroom apartments and 14 two bedroom apartments measuring 1216 sq. ft. and 958 sq. ft. respectively.</p>\r\n<p><strong>Amenities include:</strong><br />&bull; A fitted breakfast bar<br />&bull; Borehole water with a treatment plant<br />&bull; Standby generator for common areas<br />&bull; Dual lifts<br />&bull; DSTV, CCTV, Internet &amp; Intercom connections<br />&bull; Spacious balcony\\</p>\r\n<p>Basement and ground floor parking.<br />&bull; Dining area<br />&bull; Laundry area<br />&bull; Solar water heating system<br />&bull; Electric fence<br />&bull; 24hrs security guards</p>\r\n<p>&nbsp;</p>', NULL, NULL, '2-and-3-bedrooms-master-ensuite', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.28526750329!2d36.751644614274774!3d-1.3007446360078205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2852197e58da08d2!2zMcKwMTgnMDIuNyJTIDM2wrA0NScxMy44IkU!5e1!3m2!1sen!2ske!4v1655908940473!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '[\"Internet\",\"Garage\",\"Balcony\",\"Built-in microwave\",\"Large windows with lots of light\",\"Spa\",\"Security guard\",\"Parking space\",\"Elevator\"]', NULL, 15, '9900000', '3', NULL, '1', 'Ngong Road', NULL, 'Limited Offer!', 'gold', NULL, NULL, NULL, '2022-06-22 14:51:20', '2023-03-03 09:00:07'),
(9, NULL, 'Apartments', '3 Bedroom Apartments with DSQ', NULL, '36.779761', '-1.304353', '3 Bedrooms+Dsq All En-suite', '<p>Every inch of Woodley Springs has been designed to provide ultimate functionality and luxury, at the same time providing a perfect venue for family seclusion within a serene neighborhood.<br />Woodley Springs Apartments are available in a choice of three (3) bedroom units that are master ensuite with Dsq and two bedroom units with a master en-suite.<br /><strong>The Address</strong><br />The apartment is located off Ngong Road within a pristine gated neighbourhood<br />within close proximity to major business and social amenities. i.e Shopping<br />Centres, Schools, Hospitals, Sports facilities, Offices, Good Transport Links etc.<br />The apartments can be accessed through Suna road, which connects to Ngong<br />Road at Adams Arcade roundabout. Please refer to the google coordinate<br />below</p>\r\n<p><strong>3 Bedroom units are characterized by;</strong><br />&bull; A foyer entrance<br />&bull; Living room<br />&bull; dining area<br />&bull; grand kitchen with pantry<br />&bull; high spec fitted bathrooms<br />&bull; master + 1 ensuite<br />&bull; spacious fitted wardrobes<br />&bull; Large french windows<br />&bull; vast balcony with magnificent views<br />&bull; parquet floors<br />&bull; mahogany doors<br />&bull; stylish domestic quarters</p>\r\n<p><strong>Common Amenities</strong><br />&bull; Rooftop Entertainment Area<br />&bull; 24/7 Water Supply<br />&bull; Back Up Generator<br />&bull; Dual lifts<br />&bull; Gym<br />&bull; Basement Parking<br />&bull; Electric Fence</p>', NULL, NULL, '3-bedroom-apartments-with-dsq', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.2803884940113!2d36.77553381573683!3d-1.3043476333942423!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc7ea6199cc7fa43d!2zMcKwMTgnMTUuNyJTIDM2wrA0Nic0Ny4xIkU!5e1!3m2!1sen!2ske!4v1656491541740!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '[\"Garage\",\"Disposal\",\"Balcony\",\"Storage space\",\"Large closets\",\"Walk-in closets\",\"Garbage disposal\",\"Large windows with lots of light\",\"Hardwood floors\",\"Fitness center\",\"Spa\",\"Fitness center\",\"Security guard\",\"Secured garage\",\"Access to public transportation\",\"Guest parking\",\"Conference rooms\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '13500000', '3', NULL, '1', 'Woodley Estate, Off Ngong road', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 08:48:27', '2023-03-08 09:21:49'),
(10, NULL, 'Land', 'Residential Plots For Sale in Kitengela Milimani', NULL, '36.939639', '-1.506583', NULL, '<p style=\"text-align: justify;\">After the successful sell out and settlement of residents in Bustani phase I plots, we introduce to you Bustani phase II. The gated community of 1/8 acre plots comprises a total of 17 plots located right behind Bustani phase l in the well zoned &amp; lush residential estate of Milimani in the heart of Kitengela, only 2 km passed Kitengela Town and 1.5 km off Nairobi-Namanga highway, with ready title deeds. This exclusive gated Community plots are accessed from Yukos opposite the Total petrol station through the marram road that connects to Almond Grove Estate. Do you wish to begin construction on your land immediately but lack expertise or desire the hustle to be taken away from you? Well, we have a ready design (optional) and also recommend professionals, who offer advice and expertise within construction.<br />If you have been looking for land in a secure and peaceful estate in Kitengela, Bustani phase II gated community Estate is the right investment for you.<br /><strong>Key features</strong><br />&bull; A Gated community-Fenced with chain link<br />&bull; Zoned and controlled residential community for Maisonettes and bungalows<br />&bull; All weather access road<br />&bull; Prestigious schools: The Orchard School, Kitengela International School, Acacia Crest School<br />&bull; Religious places of worship: A.I.C Namelock Church, CITAM Kitengela,<br /><strong>Value additions by Rochman Properties limited</strong><br />&bull; Ready Borehole water<br />&bull; Full set of architectural drawings (Optional)<br />&bull; Perimeter chain link fence<br />&bull; Internal access roads</p>', NULL, NULL, 'residential-plots-for-sale-in-kitengela-milimani', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3411.9849238820216!2d36.9353968157401!3d-1.5065656333089443!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa274fd8382335854!2zMcKwMzAnMjMuNyJTIDM2wrA1NicyMi43IkU!5e1!3m2!1sen!2ske!4v1656494019470!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '2200000', NULL, NULL, NULL, 'Milimani Kitengela', NULL, 'Offer!', 'red', NULL, NULL, NULL, '2022-06-29 09:20:23', '2023-04-20 12:28:47'),
(11, NULL, 'Apartments', 'Luxore, 2Bedroom Apartment', NULL, '36.923265', '-1.364836', NULL, '<p>Luxore is an exclusively designed development,&nbsp; conveniently located on Chady Road off Mombasa Road, just behind Gateway Mall. Luxore is set on a vast 3 acres, offering 400 modern apartments, just a stone\'s throw from the new Nairobi railway terminus. With breathtaking views from the comfort of your home, each apartment unifies style with comfort while conveying cozy family living. The design&nbsp; parades admirable taste inspired by the glorious surrounds.</p>\r\n<div id=\"m4687\" class=\"module text\">\r\n<p data-children-count=\"0\"><strong>TWO&nbsp;BEDROOM APARTMENTS</strong></p>\r\n</div>\r\n<div id=\"m4998\" class=\"module text\">\r\n<p data-children-count=\"0\">From 775 Sq.ft to 906 Sq.ft</p>\r\n</div>\r\n<div id=\"m4966\" class=\"module text\">\r\n<ul>\r\n<li>Entrance lobby leading to a spacious lounge and dining area boasting modern lighting design.</li>\r\n<li>Modern open-plan fitted Kitchen with oven, extractor and hob.</li>\r\n<li>Lavish master bedroom featuring private access to the balcony.</li>\r\n<li>Brilliantly lit second bedroom with access to a spacious bathroom.</li>\r\n<li>Provision for washing machine.</li>\r\n<li>Car Park for 1.</li>\r\n</ul>\r\n</div>', NULL, NULL, 'luxore-2bedroom-apartment', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d693.7295265128979!2d36.922682937472274!3d-1.3645130627715503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f0d1ac11d1e09%3A0x67382248c778d18f!2sLuxore%20Apartments%20-%20Syokimau!5e1!3m2!1sen!2ske!4v1656496817522!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '[\"Internet\",\"Balcony\",\"Gym\"]', NULL, 15, '8000000', '2', NULL, '1', 'Syokimau, Behind Gateway Mall', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 11:28:18', '2023-03-20 12:50:53'),
(12, NULL, 'Land', 'Mixed Use Plots For Sale in Acacia, Kitengela', NULL, '36.935288', '-1.525949', NULL, '<p style=\"text-align: justify;\">This exquisite piece of land is located along the Acacia Main Feeder road only 800 meters from Nairobi-Namanga Highway (From Ola Petrol Station) and 3.5 kilometers from Kitengela town. The gated community plots is comprised of 15 eighth acre (1/8th) plots ideal for immediate residential and commercial development.<br />This high-yielding land is best to up your dream home. Some plots have been set aside for commercial development and can be used for shops &amp; mini marts due to the fast growing population of Acacia and also they are touching the Old Namanga road giving an assurance for best returns on Investment.<br />This is a must-have land due to its cumulative value and prime area. It comprises of a beautiful landscape which provides easy accessibility to famed banks, holiday resort centers, shopping centers and businesses, schools and medical facilities.<br /><strong>Key Features</strong><br />&bull; Controlled gated community<br />&bull; Close to prestigious schools: Kitengela International School, Acacia Crest Senior School, and The Orchard School.<br />&bull; Ready borehole water from neighbors<br />&bull; Walking distance from Nairobi-Namanga Highway<br />&bull; Touching both old Namanga Road and Acacia Main Feeder Road</p>', NULL, NULL, 'mixed-use-plots-for-sale-in-acacia-kitengela', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1344.9973385455287!2d36.93362164332139!3d-1.5259468854390394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xea58cfc4a82a0967!2zMcKwMzEnMzMuNCJTIDM2wrA1NicwNy4wIkU!5e1!3m2!1sen!2ske!4v1656506681459!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '2300000', NULL, NULL, NULL, 'Acacia Kitengela', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 47.7825%;\">&nbsp;</td>\r\n<td style=\"width: 47.7825%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.7825%;\">Name</td>\r\n<td style=\"width: 47.7825%;\">Location</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.7825%;\">Kiengela International School</td>\r\n<td style=\"width: 47.7825%;\">500 meters away</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.7825%;\">Acacia Crest School</td>\r\n<td style=\"width: 47.7825%;\">1km away</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.7825%;\">Orchard School</td>\r\n<td style=\"width: 47.7825%;\">1.2km away</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Offer!', 'red', NULL, NULL, NULL, '2022-06-29 12:54:08', '2023-04-20 12:27:52'),
(13, NULL, 'Land', 'Residential Plots For Sale in Mwalimu Farm', NULL, '37.140478', '-1.208167', NULL, '<p style=\"text-align: justify;\">This gated community of 1/8th acre plots is set up in the plains of Mwalimu Farm with a view of Mount Kilimbogo in Ruiru East. The plots are easily accessible through the newly tarmacked link road from Ruai Quick mart shopping center which is only 11km and 2km only off the tarmac road. With residential homes and learning institutions already built in the area, Mwalimu Farm is currently the most sought after place to build residential homes due to affordability and its strategic location from Nairobi CBD only 35km away.</p>', NULL, NULL, 'residential-plots-for-sale-in-mwalimu-farm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.4060107777186!2d37.136250815735266!3d-1.208161633458335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5a7b96c134e512df!2zMcKwMTInMjkuNCJTIDM3wrAwOCcyNS43IkU!5e1!3m2!1sen!2ske!4v1656661359312!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '700000', NULL, NULL, NULL, 'Ruiru East, Mwalimu Farm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 07:54:40', '2023-04-20 12:26:57'),
(14, NULL, 'House', 'Oasis Park l &  ll Kitengela-SOLD OUT', NULL, NULL, NULL, NULL, '<p>A gated community estate of 3 bedrooms master enssuite bungalows located only 200 meters from the highway at Yukos Kitengela.</p>', NULL, NULL, 'oasis-park-l-ll-kitengela-sold-out', NULL, 'null', NULL, 15, '7500000', NULL, NULL, NULL, 'Kitengela, Yukos', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 08:57:09', '2023-03-10 13:54:29'),
(15, NULL, 'House', 'Wema Villas-SOLD OUT', NULL, NULL, NULL, NULL, '<p>4 Bedrooms Villas +Dsq in&nbsp; agated community of 42 units.</p>', NULL, NULL, 'wema-villas-sold-out', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2036.6582192186565!2d36.98427629808729!3d-1.4331448729233336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f750f98570bff%3A0x895e353dd03e7c5d!2sWema%20Villas%2C%20Athi%20River!5e1!3m2!1sen!2ske!4v1656753831620!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '15000000', NULL, NULL, NULL, 'Athiriver', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 09:26:22', '2023-03-10 13:54:11'),
(16, NULL, 'Apartments', 'Kingara Greens Apartments-SOLD OUT', NULL, NULL, NULL, NULL, '<p>These are 3 blocks on 16 units located along Kingara Road in Lavington.</p>', NULL, NULL, 'kingara-greens-apartments-sold-out', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.79765614171!2d36.75851101475388!3d-1.296020199054727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1a15540d855b%3A0xc1441a3abbf18829!2sKing\'ara%20Greens!5e0!3m2!1sen!2ske!4v1656925046160!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '28000000', NULL, NULL, NULL, 'Lavington, Kingara Road', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 08:58:27', '2023-03-10 13:53:46'),
(17, NULL, 'House', 'Bel Air Villas-SOLD OUT', NULL, NULL, NULL, NULL, '<p>These are 8 Villas of 4 bedrooms+Dsq located in Miotoni Ridge Karen</p>', NULL, NULL, 'bel-air-villas-sold-out', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7790091901243!2d36.69972051475396!3d-1.30780589904614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1b9829fd6d79%3A0xf5ca1fb8a0b708de!2sBel%20Air%20Villas!5e0!3m2!1sen!2ske!4v1656925395976!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '100000000', NULL, NULL, NULL, 'Karen', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 09:42:38', '2023-03-10 13:53:23'),
(18, NULL, 'Land', '1/2 Acre Commecrial Plot in Yukos Kitengela', NULL, '36.952775', '-1.505569', NULL, '<p>This is a prime 1/2 acre plot located only 200 meters from the Nairobi Namanga Highway. The plot is for commercial purpose with a ready title and can be used to put apartments or a hotel. Call our team for site visit and more information.</p>', NULL, NULL, '12-acre-commecrial-plot-in-yukos-kitengela', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3411.9864927027184!2d36.94854781573991!3d-1.5055636333091935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc50f2039734046f1!2zMcKwMzAnMjAuMSJTIDM2wrA1NycxMC4wIkU!5e1!3m2!1sen!2ske!4v1657870011646!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '10000000', NULL, NULL, NULL, 'Yukos Kitengela, Behind Grey Oak Hotel', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 07:33:22', '2022-10-06 08:53:40'),
(19, NULL, 'Land', '5 Acres Prime Land in Lukenya, Athiriver', NULL, '37.051748', '-1.482852', NULL, '<p>5 acres of prime residential parcel of land located in Lukenya Athiriver. The land can be used for both commercial and residential use due to its location. Contact our team for more information and viewing arrangements.</p>', NULL, NULL, '5-acres-prime-land-in-lukenya-athiriver', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3370.1878479327074!2d37.04904082717462!3d-1.4827412730220408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf4db9b2ce5cc0efb!2zMcKwMjgnNTguMyJTIDM3wrAwMycwNi4zIkU!5e1!3m2!1sen!2ske!4v1657874346701!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '125000000', NULL, NULL, NULL, 'Lukenya, Athiriver', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 08:42:21', '2022-11-30 14:39:57'),
(20, NULL, 'Land', 'Residential Plots For Sale in Kiserian', NULL, '1°29\'39.3\"S', '36°41\'39.0\"E', NULL, '<p>Prime residential plots of 50x100 with ready title deeds located only 5km from the Pipeline Road in Kiserian near Olerai School. The plots are in a gated community setup and ready to build. Call our team for more information and site visits</p>', NULL, NULL, 'residential-plots-for-sale-in-kiserian', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.004131391516!2d36.68992781573981!3d-1.4942516333122124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xff45f64eb4e5dd9e!2zMcKwMjknMzkuMyJTIDM2wrA0MSczOS4wIkU!5e1!3m2!1sen!2ske!4v1657885870789!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '900000', NULL, NULL, NULL, 'Kiserian, Near Olerai Boarding School', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 11:56:05', '2023-04-20 12:25:47'),
(21, NULL, 'Commercial property', 'Commercial Building For Sale - Naivasha Town', NULL, '36.434912', '-0.716602', NULL, '<p>This 5 storey commercial building comprising shops and offices is located in the heart of Naivasha Town along Biashara Street. The building has Safaricom Customer care as the main anchor tenant with other major firms and businesses operating in the premises.&nbsp;</p>\r\n<p>The building has brings a total collection of Ksh 2.5M revenue on full occupancy and its it current revenue is Ksh 1.26M</p>\r\n<p>The location of this building is very prime and attracts institutions due to the large spaces that are available on the 4th and 5th floor areas. Call us on 0707111777 for more information</p>', '23,770 sqft', NULL, 'commercial-building-for-sale-naivasha-town', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.897839740747!2d36.43067281572852!3d-0.7166016340223944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc13849682c203efc!2zMMKwNDInNTkuOCJTIDM2wrAyNicwNS42IkU!5e1!3m2!1sen!2ske!4v1658838896270!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '250000000', NULL, NULL, NULL, 'Naivasha Town', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 12:48:43', '2023-01-19 09:25:35'),
(22, NULL, 'Commercial property', 'Commercial Property For Sale in Rongai Town', NULL, '-1.396460', '36.742869', NULL, '<p>Shoppers Square is a complex comprising of 62 stalls containing shops and offices set up in 1/4 acre land. This premise is located in Rongai town touching the main Magadi road. The current income from the shops is Ksh 315,000 while on full occupation the premises income is Ksh 400,000.</p>\r\n<p>The land can be used to put up a commercial structure of flats or any other suitable use given that currently the stalls are constructed using temporary containers. Call our team on 0707111777 for more information and site visits.</p>', '1/2 Acre', NULL, 'commercial-property-for-sale-in-rongai-town', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d495.28611446275835!2d36.742704014626696!3d-1.3964233176354877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f05ceaaaaaaab%3A0xc9e10c2e13b41ccd!2sShoppers%20Square!5e1!3m2!1sen!2ske!4v1658842454083!5m2!1sen!2ske\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'null', NULL, 15, '51750000', NULL, NULL, NULL, 'Rongai Town', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 14:03:19', '2023-03-08 09:00:55'),
(23, NULL, 'Apartments', '1 and 2 Bedroom Apartments - Riara Road, Kilimani (Completion Date: October 2024)', NULL, NULL, NULL, 'Exquisite 1 and 2 En Suite Bedrooms For Sale', '<p>This is a development of 0.85 Acre with 3 impressive 17 floors towers. It comprises of 425 units of 1 &amp; 2 bedroom modern design apartments with luxurious amenities and best quality finishing including 1050sqm of Entertainment Centre and 1150sqm open floor garden.</p>\r\n<p>It&rsquo;s located on Riara Road right behind The Junction Mall, 1min walk to the shopping center, which boasts over 100 premium retails stores, IMAX, Cafes, Restaurants, Banks &amp; Pharmacy. Just 5-10 Min drive to southern bypass, 25-30 min to JKIA and 10-15 min to Nairobi CBD. It&rsquo;s in close proximity to more than 20 schools, 5 sports clubs, 10 Hospitals, 6 Petrol stations, 5 car wash, restaurants from different cultures and other life supporting services around the project. It is the most popular, convenient and exclusive residential area in Nairobi.</p>\r\n<p><strong>Amenities:</strong><br />&bull; &nbsp; &nbsp;Borehole<br />&bull; &nbsp; &nbsp;Backup Generator&nbsp;<br />&bull; &nbsp; &nbsp;Equipped Gym<br />&bull; &nbsp; &nbsp;Open floor Garden<br />&bull; &nbsp; &nbsp;Children\'s Paradise<br />&bull; &nbsp; &nbsp;Business Centre<br />&bull; &nbsp; &nbsp;Ample Parking<br />&bull; &nbsp; &nbsp;Lounge Area<br />&bull; &nbsp; &nbsp;CCTV &amp; 24Hr Security<br />&bull; &nbsp; &nbsp;Heated Swimming Pool</p>\r\n<p><br /><strong>Prices:</strong><br />&bull; &nbsp; &nbsp;1Br - 65sqm - Ksh 7M<br />&bull; &nbsp; &nbsp;2Br - 110sqm - Ksh 12.5M<br />&bull; &nbsp; &nbsp;2Br - 120sqm - Ksh 14M</p>\r\n<p><br /><strong>Completion Date: October 2024</strong></p>', '65 sqm', NULL, '1-and-2-bedroom-apartments-riara-road-kilimani-completion-date-october-2024', NULL, '[\"Internet\",\"Garage\",\"Balcony\",\"Gym\",\"Bar\",\"Storage space\",\"Large closets\",\"Walk-in closets\",\"Patio\",\"Energy-efficient appliances\",\"Marble or granite countertops\",\"Built-in microwave\",\"Large windows with lots of light\",\"Views\",\"Fireplace\",\"Hardwood floors\",\"Pet-friendly\",\"Wheelchair accessible\",\"Pet walking\",\"Pet grooming\",\"Laundry facilities\",\"Laundry services\",\"Dry-cleaning\",\"Swimming pool\",\"Fitness center\",\"Yoga studio\",\"Spa\",\"Sports court\",\"Grilling areas\",\"Fitness center\",\"Rooftop deck\",\"Garden\",\"Patio\",\"Playground\",\"On-site daycare\",\"Gated community\",\"Controlled access\",\"Security guard\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Printing services\",\"Wi-Fi in common areas\",\"Complimentary coffee bar\",\"On-site convenience store\",\"Daily trash pick up\",\"Elevator\"]', NULL, 15, '7000000', '1', NULL, '1', 'Riara Road Kilimani', '<ul>\r\n<li>Riara International School</li>\r\n<li>Makini School</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, '2022-12-02 14:21:23', '2023-03-20 06:13:02'),
(24, NULL, 'Apartments', '1, 2 and 3 Bedroom Apartment For Sale in Garden City', NULL, NULL, NULL, '1, 2 and 3 Bedroom Apartment For Sale in Garden City', '<p style=\"text-align: justify;\">This housing development is part of Garden City, an already established 47- acre mixed use development designed around a lush 3-acre central park with a flourishing retail, residential and office community.</p>\r\n<p style=\"text-align: justify;\"><br />Conveniently located at Exit 7 along Thika Highway, your new home is a short drive from Nairobi&rsquo;s central business district and a range of schools, hotels, sports clubs and medical facilities, as well as easy access to Jomo Kenyatta International Airport.<br />Living at Garden City means you have both Garden City Mall and Garden City Business Park on your doorstep along with direct access to all the amenities that this award-winning residential development has to offer. You can pick up your morning coffee as you walk to work, choose from over 100 shops, restaurants and cafes at the Mall, including the recently opened Carrefour supermarket. You can take in the latest blockbuster movie at East Africa&rsquo;s largest iMAX cinema or enjoy a quiet stroll in Garden City&rsquo;s 3-acre central park, with a children&rsquo;s playground and water park &lsquo;on tap&rsquo;.</p>\r\n<p style=\"text-align: justify;\"><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li style=\"text-align: justify;\">Private jogging track</li>\r\n<li style=\"text-align: justify;\">Heated swimming pool</li>\r\n<li style=\"text-align: justify;\">Large commercial scale gym</li>\r\n<li style=\"text-align: justify;\">Clubhouse and BBQ</li>\r\n<li style=\"text-align: justify;\">1-Acre of planned green space</li>\r\n<li style=\"text-align: justify;\">Kidsplay area</li>\r\n</ol>\r\n<p><strong>Pricing</strong><br />1 Bedroom-FROM KES 9.1M<br />2 Bedroom-FROM KES 12.1M<br />3 Bedroom-FROM KES 15.7M</p>', NULL, NULL, '1-2-and-3-bedroom-apartment-for-sale-in-garden-city', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Wheelchair accessible\",\"Swimming pool\",\"Fitness center\",\"Yoga studio\",\"Spa\",\"Grilling areas\",\"Fitness center\",\"Rooftop deck\",\"Playground\",\"On-site daycare\",\"Gated community\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '9100000', '1', NULL, '1', '1, 2 and 3 Bedroom Apartment For Sale in Garden City', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 08:48:25', '2023-03-08 08:58:21'),
(25, NULL, 'Apartments', '1, 2 & 3 BEDROOM APARTMENTS-(COMPLETION DATE: JUNE 2026)', NULL, NULL, NULL, 'Amaiya1, 2 & 3 Bedroom Apartments', '<p style=\"text-align: justify;\">Offering 1 and 2 bedroom luxurious duplex Units and beautifully designed 3 bedroom apartments. The apartment is the newest residential development with Garden City, an already established 47 acre mix-use development Investing in this residential units gets you more than the unit. You effectively get to be a part owner of our 47-acre City with unlimited access to all the amenities and spaces that come with it.</p>\r\n<p style=\"text-align: justify;\"><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li style=\"text-align: justify;\">Private jogging track</li>\r\n<li style=\"text-align: justify;\">Heated swimming pool</li>\r\n<li style=\"text-align: justify;\">Large commercial scale gym</li>\r\n<li style=\"text-align: justify;\">1-Acre of planned green space</li>\r\n<li style=\"text-align: justify;\">Kids play area</li>\r\n<li style=\"text-align: justify;\">Club house and BBQ</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>Pricing</strong></p>\r\n<p>1 Bedroom Deluxe 70sqm- KES 9,200,0000</p>\r\n<p>2 Bedroom Deluxe 96sqm- KES 13,500,000</p>\r\n<p>3 Bedroom with SQ 112sqm- KES 16,000,000</p>\r\n<p><strong>COMPLETION DATE: JUNE 2026</strong></p>', NULL, NULL, '1-2-3-bedroom-apartments-completion-date-june-2026', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Fitness center\",\"Yoga studio\",\"Spa\",\"Grilling areas\",\"Fitness center\",\"Playground\",\"Gated community\",\"Controlled access\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Recycling center\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '9200000', '1', NULL, '1', 'Garden City, Thika Road', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 13:14:31', '2023-03-23 07:21:54'),
(26, NULL, 'Apartments', 'STUDIOS,1 & 2 BEDROOM APARTMENTS IN RIRUTA, NAIROBI-(COMPLETION DATE: JUNE 2023)', NULL, NULL, NULL, 'Keza Apartments', '<p style=\"text-align: justify;\">Conveniently located 100m away from the Kikuyu/Naivasha Road Junction, the apartment has been designed to provide a unique investment opportunity in affordable housing. Spanning over 4.5 acres and centered around a green park with recreational facilities, the apartment is planned to be Riruta\'s Only Urban Oasi. The apartment is built around a giant Fig Tree that forms a center of its green park.</p>\r\n<p style=\"text-align: justify;\">The apartment is uniquely positioned to provide a beautifully designed and integrated residential community. For the discerning investor, this will mean sustained high occupancy rates, inflation-hedged rental income with yields above 8% and a projected total overall return of more than20% over the medium term.</p>\r\n<p style=\"text-align: justify;\"><strong>PAYMENT PLAN</strong></p>\r\n<p style=\"text-align: justify;\">Standard Studio</p>\r\n<p style=\"text-align: justify;\">KSH KES 2,300,000</p>\r\n<p style=\"text-align: justify;\">Premium Studio</p>\r\n<p style=\"text-align: justify;\">KSH KES 2,500,000</p>\r\n<p style=\"text-align: justify;\">1 Bedroom Apartment<br />KSH 4,700,000<br />40sqm<br />2 Bedroom Apartment<br />KSH 6,000,000<br />61sqm</p>\r\n<p style=\"text-align: justify;\"><strong>COMPLETION DATE: JUNE 2023</strong></p>', '40sqm', NULL, 'studios1-2-bedroom-apartments-in-riruta-nairobi-completion-date-june-2023', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Large windows with lots of light\",\"Wheelchair accessible\",\"Yoga studio\",\"Spa\",\"Playground\",\"Gated community\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '2300000', '1', NULL, '1', 'Riruta', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-17 08:03:53', '2023-03-30 12:48:37'),
(27, NULL, 'Apartments', 'Studio, 1 and 2 Bedroom Apartment For Sale in Kilimani Estate-(Completion Date: December 2024)', NULL, NULL, NULL, 'Padmore Residences', '<p style=\"text-align: justify;\">Padmore Residences is a magnificent 16-storey apartment project located along George Padmore Road off Marcus Garvey Street in the upmarket Nairobi&rsquo;s Kilimani Estate. It comprises of bespoke Studios, 1 and 2 Bedroom apartments tucked in a serene environment yet accessible via both public and private means.</p>\r\n<p>It enjoys close proximity to shopping amenities like Yaya Centre, Adlife Plaza, Prestige Plaza and The Junction. Nearby schools include St Nicholas, Riara and Makini International Schools. Hospitals within the neighborhood include Coptic and Nairobi Women&rsquo;s.</p>\r\n<p><strong>Amenities:</strong></p>\r\n<ul>\r\n<li>Generator</li>\r\n<li>High Speed Lifts</li>\r\n<li>CCTV Surveillance</li>\r\n<li>Borehole</li>\r\n<li>Rooftop Terrace</li>\r\n<li>Access control System</li>\r\n<li>Kids Play Area</li>\r\n<li>Ample Parking</li>\r\n</ul>\r\n<p><strong>Prices with Flexible Payment Plans:</strong></p>\r\n<ul>\r\n<li>Studio 35sqm 3.5M</li>\r\n<li>1 Bedroom 50sqm 4.5M</li>\r\n<li>1 Bedroom 60sqm 5.5M</li>\r\n<li>2 Bedroom 85sqm 7.5M</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Project Completion Date: December 2024</strong></p>', NULL, NULL, 'studio-1-and-2-bedroom-apartment-for-sale-in-kilimani-estate-completion-date-december-2024', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Spa\",\"Rooftop deck\",\"Playground\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '4500000', '1', NULL, NULL, 'Padmore Road, Kilimani', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-17 12:24:44', '2023-03-23 07:00:40');
INSERT INTO `product_information` (`id`, `parentID`, `type`, `product_name`, `stories`, `latitude`, `longitude`, `short_description`, `description`, `size`, `year`, `url`, `map`, `amenities`, `item_condition`, `status`, `price`, `bedrooms`, `bathrooms`, `garadge`, `location`, `schools`, `feature_alert`, `feature_color`, `video`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(28, NULL, 'Apartments', '1 and 2 bedroom Apartment Along Kindaruma Rd, for sale- (Completion Date: June 2024)', NULL, NULL, NULL, '1 and 2 bedroom Apartment for sale in Nairobi\'s Kilimani area', '<p style=\"text-align: justify;\">The apartment is a 14-storey mega project ideally located along Kindaruma Road in Nairobi&rsquo;s Kilimani area. It is a high-end estate in Nairobi, fully equipped with best living facilities. It has easy access to shopping areas like Yaya Center, The Junction Mall, Prestige Plaza, Lavington Mall, Upperhill Suburbs, Nairobi CBD and the Westlands area. The development enjoys a serene environment, easy proximity to social, medical, religious and educational amenities.<br />Common Internal Features: -Living room opening to the spacious balcony, open plan fitted kitchen, laundry area, quality flooring and high quality finished cabinets, drawers and wardrobes.</p>\r\n<p><strong>Prices:</strong></p>\r\n<p>- Kid&rsquo;s playground<br />- High speed lifts<br />- Borehole<br />- Standby generator<br />- Adequate parking<br />- Equipped gym<br />- DSTV and internet connection</p>\r\n<p><strong>Amenities</strong><br />1 bedroom (45 sqm): Kes. 4.8M<br />1 bedroom plus study room (65 sqm): Kes. 5.9M<br />1 bedroom plus study room (75 sqm) Kes. 6.9M<br />2 bedroom master en-suite (80 Sq.m) Kes. 7.9M<br />2 bedroom master en-suite (85 Sq.m) Kes. 8.8M</p>\r\n<p><strong>&nbsp;(Completion Date: June 2024)</strong></p>', '45SQ', NULL, '1-and-2-bedroom-apartment-along-kindaruma-rd-for-sale-completion-date-june-2024', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Swimming pool\",\"Fitness center\",\"Spa\",\"Fitness center\",\"Playground\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '4800000', '1', NULL, '1', 'Kindaruma Road in Nairobi’s Kilimani area', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-20 12:11:09', '2023-03-23 06:57:11'),
(29, NULL, 'Apartments', 'Magnificent 2 and 3 bedroom Apartments located along Kindaruma Rd, Kilimani.', NULL, NULL, NULL, 'Magnificent 2 and 3 bedroom apartments located along Kindaruma Rd, Kilimani.', '<p style=\"text-align: justify;\">These are magnificent 2 and 3 bedroom apartments with maximized natural light and cross ventilation. They have light filled living areas areas with stylishly tiled floor finish and laminated floor in the bedroom areas. They are strategically located along Kindaruma Road in Kilimani with close proximity to all basic amenities and easily accessible via both private and public transport.</p>\r\n<ul>\r\n<li><strong>Unique Features</strong><br />&bull; Indoor Play Area<br />&bull; 24 hours CCTV Surveillance<br />&bull; Backup generator in all areas<br />&bull; Intercom<br />&bull; Solar System<br />&bull; Sky Garden &amp; Landscaping<br />&bull; Children Play Area<br />&bull; High speed lifts<br />&bull; Borehole</li>\r\n<li>Fully Equipped Gym</li>\r\n</ul>\r\n<p><br /><br /><strong>Prices</strong></p>\r\n<p>2-bedroom 95sqm 8.5M<br />3-bedroom plus Dsq 135sqm 12.8M</p>', '95SQM', NULL, 'magnificent-2-and-3-bedroom-apartments-located-along-kindaruma-rd-kilimani', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Garbage disposal\",\"Large windows with lots of light\",\"Views\",\"Spa\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '8500000', '2', NULL, '2', 'Kilimani', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-20 12:30:14', '2023-03-08 08:54:57'),
(30, NULL, 'Apartments', 'Studio, 1, 2 & 3 bedroom Apartments-(Completion Date: December 2024)', NULL, NULL, NULL, 'The Apartment is located in Wood Avenue in Kilimani', '<p style=\"text-align: justify;\">The Apartment is located in Wood Avenue in Kilimani opposite Yaya Centre consisting of Studio, 1, 2 &amp; 3 bedroom Apartments. The estate is centrally located in a high density area with good access to public transport. The estate is also well secured with boundary perimeter wall, street lighting, and 24/7 security.</p>\r\n<p style=\"text-align: justify;\">It is the ideal development, with multi-purpose areas suited to host different aspects of your life, such as a kids play area, a jogging loop, sitting areas and multiple green spaces.</p>\r\n<p><strong>Amenities:</strong></p>\r\n<ul>\r\n<li>Borehole water</li>\r\n<li>Ample parking</li>\r\n<li>Electric fence</li>\r\n<li>24-hour security</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Prices:</strong></p>\r\n<ul>\r\n<li>Studio 45sqm 4.2M</li>\r\n<li>1 Bedroom 55sqm 5.6M</li>\r\n<li>2 Bedroom 80sqm 8.5M</li>\r\n<li>2 Bedroom 90sqm 9.6M</li>\r\n<li>2 Bedroom 95sqm 9.8M</li>\r\n<li>2 Bedroom 128sqm 12M</li>\r\n<li>3 Bedroom 134sqm 12.8M</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Completion Date: December 2024</strong></p>', '55SQM', NULL, 'studio-1-2-3-bedroom-apartments-completion-date-december-2024', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Spa\",\"Playground\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '5600000', '1', NULL, '1', 'Wood Avenue in Kilimani', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-20 12:49:14', '2023-03-23 06:42:46'),
(31, NULL, 'Apartments', 'Studio, 1 and 2 Bedroom Apartment in Garden City- (Completion Date: June 2026)', NULL, NULL, NULL, NULL, '<p>We have a diversified mix of amenities that speak to the desires of all demographics. The Garden City Mall is a trolley away with access to East Africa\'s largest IMAX Cinema. Our residential developments are served by large green parks and botanical gardens, kids\' play areas, commercial-scale gyms and swimming pools, and the largest clubhouses of any development in Nairobi.</p>\r\n<p><strong>Amenities</strong></p>\r\n<ul>\r\n<li>Kids playing area</li>\r\n<li>Botanical garden</li>\r\n<li>Kids play area</li>\r\n<li>Commercial scale gym</li>\r\n<li>Swimming pool</li>\r\n</ul>\r\n<p><strong>Prices</strong></p>\r\n<p>Studio&nbsp; -KES 2,800,000<br />Deluxe studio - KES 3,100,000<br />1 Bedroom - KES 4,900,000&nbsp;</p>\r\n<p>2 Bedroom - KES 7,800,000<br /><br /><strong>(Completion Date: June 2026)</strong></p>', NULL, NULL, 'studio-1-and-2-bedroom-apartment-in-garden-city-completion-date-june-2026', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Renovated kitchen\",\"Garbage disposal\",\"Window coverings\",\"Swimming pool\",\"Fitness center\",\"Spa\",\"Fitness center\",\"Garden\",\"Playground\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '4900000', '1', NULL, '1', 'Garden City along Thika Road', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-20 13:05:36', '2023-03-23 07:24:52'),
(32, NULL, 'Apartments', 'Stunning 1 and 2 bedrooms In Kilimani near Yaya Center-(Completion Date: December 2024)', NULL, NULL, NULL, NULL, '<p>The Apartments are located in Kilimani area, near Yaya Center, along Kindaruma Road. It comprises of 195 units of stunning 1 and 2 bedrooms spread across 3 blocks and 15 floors. It&rsquo;s located in a quiet neighborhood with close proximity to major educational, social and recreational facilities.</p>\r\n<p><strong>FEATURES AND AMENITIES</strong></p>\r\n<ul>\r\n<li>Exquisite heated swimming pool</li>\r\n<li>Fully fitted gym</li>\r\n<li>Ample parking</li>\r\n<li>High speed lifts</li>\r\n<li>24 hour CCTV/security system</li>\r\n<li>Full generator back-up</li>\r\n<li>Fire-fighting system</li>\r\n<li>Borehole</li>\r\n<li>Electric fence</li>\r\n<li>Residence lounge</li>\r\n</ul>\r\n<p><strong>PRICES:</strong></p>\r\n<ul>\r\n<li>1Br 51sqm from 5.2M</li>\r\n<li>1BR 56sqm from 5.3M</li>\r\n<li>2Br 112sqm from 10.95M</li>\r\n</ul>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Completion Date: December 2024</strong></p>', '51SQM', NULL, 'stunning-1-and-2-bedrooms-in-kilimani-near-yaya-center-completion-date-december-2024', NULL, '[\"Internet\",\"Garage\",\"Disposal\",\"Balcony\",\"Gym\",\"Storage space\",\"Energy-efficient appliances\",\"Garbage disposal\",\"Large windows with lots of light\",\"Window coverings\",\"Views\",\"Swimming pool\",\"Fitness center\",\"Yoga studio\",\"Spa\",\"Fitness center\",\"Playground\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Wi-Fi in common areas\",\"Guest suites\",\"On-site convenience store\",\"Daily trash pick up\",\"Extra storage space\",\"Elevator\"]', NULL, 15, '5200000', '1', NULL, '1', 'Kilimani area near Yaya Center', '<p>Kilimani Primary school</p>', NULL, NULL, NULL, NULL, NULL, '2023-02-27 11:42:46', '2023-03-20 06:16:48'),
(33, NULL, 'Land', 'Mixed Use Plot For Sale in  Kimalat, Kitengela', NULL, NULL, NULL, NULL, '<p style=\"text-align: justify;\">Serenity Meadows Kitengela is a continuation of our success story of service delivery to our customers looking for prime land in the most strategic areas ideal for family homes or for future prospecting. Following the success of Serenity Meadows Syokimau edition that comprised of 38 fully serviced 50x100 plots we are pleased to introduce edition 2 of 1/8th acre prime serviced plots nested in the vast plains of Kimalat in Kitengela touching the Nairobi- Namanga highway only 7km from Kitengela town. This is the most pristine and prestigious sought a?er area in Kitengela due to its serene ambiance and the surrounding environment of lush green vegetation away from the buzzling city activities. The value added plots are ideal for both commercial and residential development due to its strategic location right on the highway</p>\r\n<p style=\"text-align: justify;\"><strong>Amenities</strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Electricity</li>\r\n<li style=\"text-align: justify;\">Borehole water</li>\r\n<li style=\"text-align: justify;\">Perimeter fence</li>\r\n<li style=\"text-align: justify;\">Steel main gate</li>\r\n</ul>\r\n<p><strong>Prices</strong></p>\r\n<p>4 Acres Ksh 100M<br />1 Acre Ksh30M<br />1/8 Acres Ksh4M</p>', '1/8 Acres', NULL, 'mixed-use-plot-for-sale-in-kimalat-kitengela', NULL, 'null', NULL, 15, '4000000', NULL, NULL, NULL, 'Kitengela', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 11:27:44', '2023-04-20 12:24:56'),
(34, NULL, 'Apartments', 'Modern 1br Apartment in Mitini Escapes, Migaa Golf Course', NULL, NULL, NULL, 'Modern 1br Apartment in Mitini Escapes, Migaa Golf Course', '<p>Modern 1br Apartment in Mitini Escapes, Migaa Golf Course in Kiambu.</p>\r\n<p>The Apartment is an iconic development designed for absolute luxury and class, ideal for living and investment.</p>\r\n<p><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>Ample parking space</li>\r\n<li>Electricity</li>\r\n<li>Water</li>\r\n<li>Large windows</li>\r\n<li>Inbuilt wardrobe</li>\r\n<li>Washing area</li>\r\n<li>Kitchen cabinets</li>\r\n<li>24/7 security</li>\r\n</ol>', NULL, NULL, 'modern-1br-apartment-in-mitini-escapes-migaa-golf-course', 'https://goo.gl/maps/igs5XA3v5NNoT8MF8', '[\"Internet\",\"Garage\",\"Disposal\",\"Storage space\",\"Large closets\",\"Energy-efficient appliances\",\"Marble or granite countertops\",\"Garbage disposal\",\"Large windows with lots of light\",\"Views\",\"Spa\",\"Playground\",\"Gated community\",\"Controlled access\",\"Security guard\",\"Secured garage\",\"Parking space\",\"Access to public transportation\",\"Guest parking\",\"Daily trash pick up\",\"Extra storage space\"]', NULL, 15, '6000000', '1', NULL, '2', 'Migaa Golf Course in Kiambu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 08:43:33', '2023-03-28 08:54:52'),
(35, NULL, 'Land', 'Mixed Use Plots For Sale in Lower Kabete', NULL, NULL, NULL, '50X100 Mixed used Plots for Sale', '<p>50X100 mixed used plots located in Lower Kabete, 350m from Lower Kabete Road/Western Bypass junction opposite Big Cabin Apartments.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>Perimeter wall and steel gate</li>\r\n<li>Electricity and water close by</li>\r\n<li>Good all-weather access from tarmac</li>\r\n<li>Ready title deeds</li>\r\n</ol>', '50X100', NULL, 'mixed-use-plots-for-sale-in-lower-kabete', 'https://goo.gl/maps/cGyTDLNQLuMeGUXu7', 'null', NULL, 15, '8000000', NULL, NULL, NULL, 'Lower kabete', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 09:02:17', '2023-04-20 12:22:06'),
(36, NULL, 'Land', 'Residential Plots For Sale in Thika', NULL, NULL, NULL, '50X100 Residential Plots Located in Thika, Makongeni', '<p>These are 50X100 residential plots in a gated community in Thika Makongeni located 500m off Garissa road from Thika Children Rescue Centre. Close proximity to Ananas Mall, Thika School of Medical and Health Sciences, MKU, worship centres among other facilities.</p>\r\n<p><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>Perimeter wall and steel gate</li>\r\n<li>Internal access roads</li>\r\n<li>Electricity and water</li>\r\n<li>Ready title deeds</li>\r\n<li>Good all-weather access from tarmac</li>\r\n</ol>', '50X100', NULL, 'residential-plots-for-sale-in-thika', 'https://goo.gl/maps/DLR5x1nWUr4WM3kb9', 'null', NULL, 15, '3500000', NULL, NULL, NULL, 'Thika Makongeni Thayu Gardens', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 09:11:35', '2023-04-20 12:20:19'),
(37, NULL, 'Land', 'Residential Plot For Sale in Ndenderu', NULL, NULL, NULL, '50X100 residential plot located in Lower Kabete', '<p>50X100 residential plot located in Lower Kabete 500m from Lilly of the Valley Junior School off Gitaru Road/Limuru Road junction.</p>\r\n<p><strong>Amenities</strong></p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>Live fence and steel gate</li>\r\n<li>Electricity and water</li>\r\n<li>Proximity to Ndenderu Vocational Training Centre, Schools, Worship Centres among other facilities.</li>\r\n<li>Good all-weather access from tarmac</li>\r\n</ol>', '50X100', NULL, 'residential-plot-for-sale-in-ndenderu', 'https://goo.gl/maps/i9kC1RUMLSXz34MZA', 'null', NULL, 15, '8000000', NULL, NULL, NULL, 'Ndenderu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 09:18:51', '2023-04-20 12:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `replenish_level` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `id` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `file_size` varchar(100) DEFAULT NULL,
  `file_mime` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cover` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_media`
--

INSERT INTO `product_media` (`id`, `productID`, `file`, `file_name`, `position`, `file_size`, `file_mime`, `type`, `cover`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'tt0haGamara-classic-front-dusk-800x533.jpg', NULL, '78979', 'image/jpeg', NULL, 1, NULL, NULL, '2022-05-13 07:07:30', '2022-05-13 07:08:54'),
(2, 1, NULL, 'Zpr2FhDjHfissXoAEkzjF-800x533.jpg', NULL, '75814', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-13 07:08:00', '2022-05-13 07:08:00'),
(3, 1, NULL, 'nAV9hEFetchImage-800x533.jpg', NULL, '60224', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-13 07:08:23', '2022-05-13 07:08:23'),
(4, 1, NULL, 'bnlOzGamara1.width-800.jpg', NULL, '58399', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-13 07:08:50', '2022-05-13 07:08:50'),
(5, 2, NULL, '49MMeXkaren-bel-air-country-homes-4-bedroom-2-sq-3.jpg', NULL, '246186', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-16 07:37:42', '2022-05-16 07:37:42'),
(6, 2, NULL, '6Rgyhvkaren-bel-air-country-homes-4-bedroom-2-sq-0.jpg', NULL, '251568', 'image/jpeg', NULL, 1, NULL, NULL, '2022-05-16 07:37:43', '2022-05-16 07:37:50'),
(16, 4, NULL, 'U4y3oeFB_IMG_1513580576887-436x533.jpg', NULL, '37241', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 08:50:12', '2022-05-23 08:50:12'),
(17, 4, NULL, '7mW4ExFB_IMG_1513580580165.jpg', NULL, '21333', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 08:50:13', '2022-05-23 08:50:13'),
(18, 5, NULL, '9eC61Mbiashara-c-493x533.jpeg', NULL, '24028', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:18', '2022-05-23 09:15:18'),
(19, 5, NULL, 'DCLrgcbiashara-d.jpg', NULL, '146522', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:19', '2022-05-23 09:15:19'),
(20, 5, NULL, 'x1c6JEbiashara-b-800x493.jpeg', NULL, '34270', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:19', '2022-05-23 09:15:19'),
(21, 5, NULL, 'o4bFrIbiashara-a-800x493.jpeg', NULL, '26347', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:19', '2022-05-23 09:15:19'),
(22, 5, NULL, 'Xy8oFHbiashara-a-Copy.jpg', NULL, '115134', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:19', '2022-05-23 09:15:19'),
(23, 5, NULL, 'gO3HQpbiashara-2-Copy-500x533.jpg', NULL, '51351', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:15:19', '2022-05-23 09:15:19'),
(24, 5, NULL, 'KJN8UJbiashara-3-Copy-500x533.jpg', NULL, '52823', 'image/jpeg', NULL, 1, NULL, NULL, '2022-05-23 09:15:50', '2022-05-23 09:16:00'),
(25, 6, NULL, 'g3yaGBphoto-1-800x533.jpeg', NULL, '37906', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:15'),
(26, 6, NULL, 'OkVDciPhoto-2-800x533.jpeg', NULL, '64614', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:15'),
(27, 6, NULL, 'C79LuEPhoto-4-800x533.jpeg', NULL, '59925', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:15'),
(28, 6, NULL, 'h1hMs5Photo-5-800x533.jpeg', NULL, '37906', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:15'),
(29, 6, NULL, 'XdKD73Photo-6-800x533.jpeg', NULL, '103810', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:15'),
(30, 6, NULL, 'tXahKVPhoto-7-800x533.jpeg', NULL, '74189', 'image/jpeg', NULL, 1, NULL, NULL, '2022-05-23 09:21:15', '2022-05-23 09:21:22'),
(45, 8, NULL, 'NLG7USDSC_2959.jpg', NULL, '551282', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-22 14:53:26', '2022-06-22 14:53:26'),
(48, 8, NULL, 'aJW8HYDSC_2989.jpg', NULL, '521614', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-22 14:53:29', '2022-06-22 14:53:29'),
(53, 8, NULL, 'VqHVm8DSC_3036.jpg', NULL, '441172', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-22 14:53:33', '2022-06-22 14:53:33'),
(62, 8, NULL, 'ZimGJgDSC_3118.jpg', NULL, '425245', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-22 14:53:42', '2022-06-22 14:53:42'),
(64, 8, NULL, 'emwXPpDSC_8894.jpg', NULL, '6427710', 'image/jpeg', NULL, 1, NULL, NULL, '2022-06-22 14:53:51', '2022-06-22 14:55:54'),
(70, 9, NULL, 'RLxoQFDSC_4300.jpg', NULL, '4010254', 'image/jpeg', NULL, 1, NULL, NULL, '2022-06-29 08:50:28', '2022-08-04 10:06:02'),
(73, 9, NULL, 'FIDcS9DSC_4312.jpg', NULL, '4756705', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 08:50:35', '2022-06-29 08:50:35'),
(80, 9, NULL, '7alBlvDSC_8243.jpg', NULL, '85053', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 08:50:39', '2022-06-29 08:50:39'),
(85, 9, NULL, 'uoDQr7DSC_8380.jpg', NULL, '79252', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 08:50:41', '2022-06-29 08:50:41'),
(91, 9, NULL, 'HiI087IMG-20181101-WA0002.jpg', NULL, '21167', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 08:50:44', '2022-06-29 08:50:44'),
(93, 10, NULL, 'Nl11awIMG20210605113624.jpg', NULL, '1774296', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 09:39:46', '2022-06-29 09:39:46'),
(99, 11, NULL, 'gyIfQEIMG20220401111058.jpg', NULL, '2364723', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:35', '2022-06-29 11:31:35'),
(100, 11, NULL, '73cUIlIMG20220401111642.jpg', NULL, '2275674', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:35', '2022-06-29 11:31:35'),
(101, 11, NULL, 'Sd20HDIMG20220401111647.jpg', NULL, '2407536', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:41', '2022-06-29 11:31:41'),
(102, 11, NULL, 'fClle0IMG20220401111707.jpg', NULL, '3035203', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:42', '2022-06-29 11:31:42'),
(103, 11, NULL, '61uvBGIMG20220401111724_1.jpg', NULL, '2561896', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:47', '2022-06-29 11:31:47'),
(104, 11, NULL, 'MeRrGjIMG20220401111853.jpg', NULL, '2223601', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:47', '2022-06-29 11:31:47'),
(105, 11, NULL, 'NTxHcoIMG20220401111904.jpg', NULL, '2223102', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:54', '2022-06-29 11:31:54'),
(106, 11, NULL, '067yv8IMG20220401112126.jpg', NULL, '3112638', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:31:56', '2022-06-29 11:31:56'),
(107, 11, NULL, 'Jjy1T8IMG20220401112221_1.jpg', NULL, '2990204', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:00', '2022-06-29 11:32:00'),
(108, 11, NULL, 'LfJ0rYIMG20220401112226.jpg', NULL, '2475916', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:01', '2022-06-29 11:32:01'),
(109, 11, NULL, '6OiyrtIMG20220401112402_2.jpg', NULL, '2667497', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:07', '2022-06-29 11:32:07'),
(110, 11, NULL, 'sW0rluIMG20220401112408.jpg', NULL, '2601154', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:08', '2022-06-29 11:32:08'),
(111, 11, NULL, 'BaYKzaIMG20220401112536_1.jpg', NULL, '2504756', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:15', '2022-06-29 11:32:15'),
(112, 11, NULL, '2T90vmIMG20220401112418.jpg', NULL, '3145321', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:15', '2022-06-29 11:32:15'),
(113, 11, NULL, 'c1YgfHIMG20220401112925.jpg', NULL, '2710272', 'image/jpeg', NULL, 1, NULL, NULL, '2022-06-29 11:32:20', '2022-06-29 11:35:09'),
(114, 11, NULL, 'LQXTZjIMG20220401112929_1.jpg', NULL, '2767130', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:22', '2022-06-29 11:32:22'),
(115, 11, NULL, 's2AnwKIMG20220401112930_2.jpg', NULL, '2786332', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:25', '2022-06-29 11:32:25'),
(116, 11, NULL, 'UKYzaJIMG20220401112943.jpg', NULL, '3219689', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 11:32:28', '2022-06-29 11:32:28'),
(117, 12, NULL, 'haKj2YIMG20191129112356.jpg', NULL, '864605', 'image/jpeg', NULL, 0, NULL, NULL, '2022-06-29 12:55:07', '2023-03-17 11:24:00'),
(118, 12, NULL, 'TukyK0IMG20191129111937.jpg', NULL, '1693317', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 12:55:08', '2022-06-29 12:55:08'),
(119, 12, NULL, '4OQJxMIMG20191129112400.jpg', NULL, '966669', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-06-29 12:55:08', '2022-06-29 12:55:08'),
(138, 14, NULL, 'Xkr4Gv_DSC0776.jpg', NULL, '140192', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-01 09:00:17', '2022-07-01 09:00:17'),
(139, 14, NULL, 'OZQsoc_DSC0775.jpg', NULL, '138368', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-01 09:00:17', '2022-07-01 09:00:17'),
(140, 14, NULL, 'dZ1PqN10338744_489149684519187_8838694998043356541_n.jpg', NULL, '101498', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-01 09:00:19', '2022-07-01 09:00:19'),
(141, 14, NULL, 'ILaGAQ_DSC0812.jpg', NULL, '344489', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-01 09:00:19', '2022-07-01 09:00:19'),
(142, 14, NULL, 'JSa22Eg.jpg', NULL, '17724', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-01 09:00:20', '2022-07-01 09:00:36'),
(143, 14, NULL, 'PD0aPIoasis park (2).jpg', NULL, '20442', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-01 09:00:21', '2022-07-01 09:00:21'),
(144, 15, NULL, 'PzuCgtDSC_4398.jpg', NULL, '3286779', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-02 09:27:15', '2022-07-02 09:27:15'),
(145, 15, NULL, 'kQoAG5DSC_4393.jpg', NULL, '4462125', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-02 09:27:15', '2022-07-02 09:27:15'),
(146, 15, NULL, '97mHQaDSC_4399.jpg', NULL, '3641077', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-02 09:27:20', '2022-07-02 09:27:20'),
(147, 15, NULL, '4B4e39DSC_4419.jpg', NULL, '4211189', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-02 09:27:21', '2022-07-02 09:28:28'),
(148, 16, NULL, 'AjDbe2Capture2.PNG', NULL, '167728', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:24', '2022-07-04 09:00:24'),
(149, 16, NULL, 'n9ZrmnCapture.PNG', NULL, '357868', 'image/png', NULL, 1, NULL, NULL, '2022-07-04 09:00:25', '2022-07-04 12:45:01'),
(150, 16, NULL, 'HhYHZaCapture3.PNG', NULL, '309579', 'image/png', NULL, 0, NULL, NULL, '2022-07-04 09:00:25', '2022-07-04 12:45:01'),
(151, 16, NULL, '6EwSKWCapture4.PNG', NULL, '217627', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:26', '2022-07-04 09:00:26'),
(152, 16, NULL, '4U4rcTCapture5.PNG', NULL, '218135', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:27', '2022-07-04 09:00:27'),
(153, 16, NULL, 'XBJF7dCapture6.PNG', NULL, '172846', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:27', '2022-07-04 09:00:27'),
(154, 16, NULL, 'mLNUSnCapture7.PNG', NULL, '140919', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:28', '2022-07-04 09:00:28'),
(155, 16, NULL, 'A5RjYkCapture8.PNG', NULL, '219578', 'image/png', NULL, NULL, NULL, NULL, '2022-07-04 09:00:28', '2022-07-04 09:00:28'),
(156, 17, NULL, 'Sqx6Lg603973_709923802365837_1745543716_n.jpg', NULL, '179894', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-04 09:49:15', '2022-07-04 09:49:44'),
(157, 17, NULL, 'wXrLUk971950_709923282365889_1971024763_n.jpg', NULL, '261393', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:15', '2022-07-04 09:49:15'),
(158, 17, NULL, '42PHkf1508119_709921815699369_97146370_n.jpg', NULL, '177526', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:16', '2022-07-04 09:49:16'),
(159, 17, NULL, 'v4O1561509177_709918499033034_758527930_n.jpg', NULL, '190840', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:16', '2022-07-04 09:49:16'),
(160, 17, NULL, 'qIkIp71545731_709922085699342_1855268068_n.jpg', NULL, '181348', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:17', '2022-07-04 09:49:17'),
(161, 17, NULL, 'pVVaAe1546139_709924272365790_255946276_n.jpg', NULL, '203245', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:18', '2022-07-04 09:49:18'),
(162, 17, NULL, 'yPLzMY1622265_709918769033007_1573318189_n.jpg', NULL, '202950', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:19', '2022-07-04 09:49:19'),
(163, 17, NULL, '4J2xaJ1653572_709918425699708_932996570_n.jpg', NULL, '171051', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:19', '2022-07-04 09:49:19'),
(164, 17, NULL, 'hnKjcs1798239_709918605699690_1248512393_n.jpg', NULL, '207232', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-04 09:49:20', '2022-07-04 09:49:20'),
(166, 19, NULL, 'o6GApx5 acres lukenya.jpg', NULL, '185349', 'image/jpeg', NULL, 0, NULL, NULL, '2022-07-15 08:44:12', '2022-07-16 13:08:45'),
(168, 4, NULL, 'NgVOdy2bed.jpg', NULL, '93818', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-15 09:20:09', '2022-07-15 09:20:09'),
(173, 4, NULL, '0UmnRzDSC_8381.jpg', NULL, '75935', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-15 09:20:13', '2022-07-15 09:20:13'),
(175, 4, NULL, 'EwsND5DSC_8388.jpg', NULL, '92293', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-15 09:20:14', '2022-07-15 09:20:38'),
(187, 19, NULL, 'LHImzWasdasdasd.jpg', NULL, '404216', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-16 13:08:39', '2022-07-16 13:08:45'),
(189, 21, NULL, 'BjaIWfb.jpg', NULL, '189739', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-26 12:51:47', '2022-07-26 12:53:56'),
(192, 21, NULL, 'GPtUCwee.png', NULL, '3370987', 'image/png', NULL, NULL, NULL, NULL, '2022-07-26 12:51:50', '2022-07-26 12:51:50'),
(196, 21, NULL, 'w33ygvIMG20200912124419_1.jpg', NULL, '2714328', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 12:51:56', '2022-07-26 12:51:56'),
(199, 21, NULL, '5t5z24IMG20200912124922.jpg', NULL, '3584001', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 12:52:01', '2022-07-26 12:52:01'),
(205, 21, NULL, '8WrdMZScreenshot 2020-10-01 100409.png', NULL, '1119924', 'image/png', NULL, NULL, NULL, NULL, '2022-07-26 12:52:08', '2022-07-26 12:52:08'),
(207, 22, NULL, 'ZCIAQ912265603_715776661856487_5966529875982537381_o (1).jpg', NULL, '107658', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:52', '2022-07-26 14:04:52'),
(208, 22, NULL, 'RYAoK612265603_715776661856487_5966529875982537381_o.jpg', NULL, '107658', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:52', '2022-07-26 14:04:52'),
(209, 22, NULL, 'f0zqII12291729_715776765189810_4865231678929828950_o.jpg', NULL, '106297', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:52', '2022-07-26 14:04:52'),
(210, 22, NULL, 'BPfC6812291839_715776545189832_8413424276647165069_o.jpg', NULL, '108602', 'image/jpeg', NULL, 1, NULL, NULL, '2022-07-26 14:04:53', '2022-07-27 09:06:54'),
(211, 22, NULL, 'smbdbP12309716_715776855189801_2037646341919271887_o.jpg', NULL, '83083', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:53', '2022-07-26 14:04:53'),
(212, 22, NULL, 'pynRXM12314609_715776585189828_2047770506584207536_o.jpg', NULL, '89777', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:54', '2022-07-26 14:04:54'),
(213, 22, NULL, 'BWRo6BShoppers square Mall.jpg', NULL, '125393', 'image/jpeg', NULL, 0, NULL, NULL, '2022-07-26 14:04:54', '2022-07-27 09:06:54'),
(214, 22, NULL, 'LkATgFShoppers Square.jpg', NULL, '70020', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:54', '2022-07-26 14:04:54'),
(215, 22, NULL, 'Od6QVwWhatsApp Image 2019-04-02 at 5.39.36 PM.jpeg', NULL, '102221', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:55', '2022-07-26 14:04:55'),
(216, 22, NULL, 'iaPxV7WhatsApp Image 2019-04-02 at 5.39.37 PM (1).jpeg', NULL, '85422', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-07-26 14:04:55', '2022-07-26 14:04:55'),
(226, 23, NULL, 'xcQ0ywPhoto2.jpeg', NULL, '109020', 'image/jpeg', NULL, 0, NULL, NULL, '2022-12-03 07:10:59', '2022-12-03 07:14:01'),
(228, 23, NULL, 'vBXg6pPhoto3.jpeg', NULL, '100074', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-12-03 07:11:00', '2022-12-03 07:11:00'),
(229, 23, NULL, 'wO7MOZPhoto4.jpeg', NULL, '73163', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-12-03 07:11:00', '2022-12-03 07:11:00'),
(233, 23, NULL, 'u6IxZJPhoto5.jpeg', NULL, '156289', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-12-03 07:23:17', '2022-12-03 07:23:17'),
(234, 23, NULL, 'n017lcPhoto.jpeg', NULL, '97657', 'image/jpeg', NULL, 1, NULL, NULL, '2022-12-03 07:23:17', '2022-12-03 07:23:28'),
(235, 23, NULL, 'pvMgalPhoto6 (2).jpeg', NULL, '117532', 'image/jpeg', NULL, NULL, NULL, NULL, '2022-12-03 07:23:18', '2022-12-03 07:23:18'),
(258, 24, NULL, 'Mzr8Ag849beaa3f94d60fc849beaa3f94d60fcWhatsAppImage2023-01-20at5.38.54PM-min.jpeg', NULL, '71226', 'image/jpeg', NULL, 0, NULL, NULL, '2023-02-16 09:29:12', '2023-02-16 09:37:18'),
(260, 24, NULL, 'fQtmoQee4fcb2ca9f8aa21ee4fcb2ca9f8aa21WhatsAppImage2023-01-20at5.38.52PM-min.jpeg', NULL, '61472', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 09:29:14', '2023-02-16 09:29:14'),
(270, 24, NULL, 'm2oeVk2-min.jpg', NULL, '165927', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-16 09:45:11', '2023-02-16 09:45:18'),
(271, 24, NULL, 'Y6GihIWhatsApp Image 2023-01-20 at 5.38.55 PM (1)-min.jpeg', NULL, '99057', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 09:46:03', '2023-02-16 09:46:03'),
(272, 24, NULL, 'oJnlnbWhatsApp Image 2023-01-20 at 5.38.53 PM (2)-min.jpeg', NULL, '88069', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 09:46:24', '2023-02-16 09:46:24'),
(287, 25, NULL, 'TX2z06Amaiya2.jpeg', NULL, '226283', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 13:41:10', '2023-02-16 13:41:10'),
(288, 25, NULL, 'vFKnH3Amaiya3.jpeg', NULL, '259527', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 13:41:10', '2023-02-16 13:41:10'),
(289, 25, NULL, 'KBssKsAmaiya4.jpeg', NULL, '171441', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 13:41:12', '2023-02-16 13:41:12'),
(290, 25, NULL, 'TbF1Y8Amaiya6.jpeg', NULL, '125995', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-16 13:41:12', '2023-02-16 13:41:12'),
(291, 26, NULL, 'yldiQFAmaiya1.jpeg', NULL, '271798', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-17 08:07:07', '2023-02-17 08:07:16'),
(292, 25, NULL, 'wHaPRMWeb1.jpeg', NULL, '331534', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-17 08:15:15', '2023-02-17 08:15:21'),
(293, 26, NULL, 'Jpgn91Web2.jpeg', NULL, '190638', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 08:22:40', '2023-02-17 08:22:40'),
(294, 26, NULL, 'Y5cQUgWeb3.jpeg', NULL, '218734', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 08:22:40', '2023-02-17 08:22:40'),
(295, 26, NULL, 'Xq2i9LWeb4.jpeg', NULL, '212934', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 08:22:42', '2023-02-17 08:22:42'),
(296, 27, NULL, 'wjzyBbWeb2.jpeg', NULL, '120152', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 12:27:00', '2023-02-17 12:27:00'),
(297, 27, NULL, 'qQGPBnWeb1.jpeg', NULL, '216757', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-17 12:27:01', '2023-02-17 12:27:54'),
(298, 27, NULL, 'oGPpNxWeb3.jpeg', NULL, '137379', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 12:27:02', '2023-02-17 12:27:02'),
(299, 27, NULL, 'KBfh99Web4.jpeg', NULL, '141884', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-17 12:27:03', '2023-02-17 12:27:03'),
(300, 28, NULL, 'P82Dwr1.jpeg', NULL, '224317', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-20 12:16:50', '2023-02-20 12:17:01'),
(301, 28, NULL, 'ayM1GV2.jpeg', NULL, '197816', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:16:50', '2023-02-20 12:16:50'),
(302, 28, NULL, 'yfkEjs3.jpeg', NULL, '169561', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:16:52', '2023-02-20 12:16:52'),
(303, 28, NULL, 'RxBGvQ4.jpeg', NULL, '130277', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:16:52', '2023-02-20 12:16:52'),
(304, 29, NULL, 'r3xFbj2.jpeg', NULL, '140833', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:30:45', '2023-02-20 12:30:45'),
(305, 29, NULL, '1NyZkc1.jpeg', NULL, '197796', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-20 12:30:46', '2023-02-20 12:31:06'),
(306, 29, NULL, 'awz53e3.jpeg', NULL, '67955', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:30:47', '2023-02-20 12:30:47'),
(307, 29, NULL, 'HlzxIN4.jpeg', NULL, '65502', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:30:47', '2023-02-20 12:30:47'),
(308, 30, NULL, '8xsCIF2.jpeg', NULL, '119944', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:49:39', '2023-02-20 12:49:39'),
(309, 30, NULL, 'HZoK3T1.jpeg', NULL, '383316', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-20 12:49:40', '2023-02-20 12:49:49'),
(310, 30, NULL, 'rxWKY83.jpeg', NULL, '108729', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:49:41', '2023-02-20 12:49:41'),
(311, 30, NULL, 'EOJyBT4.jpeg', NULL, '100551', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 12:49:42', '2023-02-20 12:49:42'),
(312, 31, NULL, 'siWy9T2.jpeg', NULL, '212934', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 13:05:58', '2023-02-20 13:05:58'),
(313, 31, NULL, '5R5IOZ1.jpeg', NULL, '423637', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-20 13:05:58', '2023-02-20 13:06:09'),
(314, 31, NULL, 'nANq0k3.jpeg', NULL, '255268', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 13:05:59', '2023-02-20 13:05:59'),
(315, 31, NULL, 'Jcm5lI4.jpeg', NULL, '253009', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-20 13:06:00', '2023-02-20 13:06:00'),
(316, 32, NULL, 'UEstfD2.jpeg', NULL, '267662', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-27 11:43:49', '2023-02-27 11:43:49'),
(317, 32, NULL, 'Lf7fap3.jpeg', NULL, '323373', 'image/jpeg', NULL, 1, NULL, NULL, '2023-02-27 11:43:49', '2023-02-27 11:44:10'),
(318, 32, NULL, 'fVvw4Y4.jpeg', NULL, '244406', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-27 11:43:52', '2023-02-27 11:43:52'),
(319, 32, NULL, 'RWMVqN5.jpeg', NULL, '231395', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-02-27 11:43:52', '2023-02-27 11:43:52'),
(320, 33, NULL, 'RVYzOb20221111_130812.jpg', NULL, '20607310', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-10 11:29:52', '2023-03-10 11:30:38'),
(321, 33, NULL, 'voTmM820221111_132525.jpg', NULL, '22429679', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-10 11:29:52', '2023-03-10 11:29:52'),
(322, 33, NULL, 'yVo8uZ20221111_132643.jpg', NULL, '25871824', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-10 11:29:59', '2023-03-10 11:29:59'),
(323, 33, NULL, 'BH4IOX20221111_132812.jpg', NULL, '23998411', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-10 11:31:16', '2023-03-10 11:31:16'),
(324, 20, NULL, 'P2C6G620220830_121532.jpg', NULL, '9950958', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:10:37', '2023-03-17 11:10:37'),
(325, 20, NULL, 'qFEZVq20220830_121811.jpg', NULL, '10195285', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 11:10:37', '2023-03-17 11:11:09'),
(326, 20, NULL, 'iTtWve20220830_133119.jpg', NULL, '5027221', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:10:40', '2023-03-17 11:10:40'),
(327, 20, NULL, '6Okjts20220830_122450.jpg', NULL, '9484885', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:10:44', '2023-03-17 11:10:44'),
(328, 18, NULL, 'HPuR6nIMG_20220906_130328.jpg', NULL, '2572492', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:16:53', '2023-03-17 11:16:53'),
(329, 18, NULL, 'ecs80EIMG_20220906_131616.jpg', NULL, '2706137', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 11:16:53', '2023-03-17 11:17:44'),
(330, 18, NULL, '68rejdIMG_20220906_131807.jpg', NULL, '2932981', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:16:58', '2023-03-17 11:16:58'),
(331, 18, NULL, 'xa3dxzIMG_20220906_131919.jpg', NULL, '2924394', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:16:58', '2023-03-17 11:16:58'),
(333, 18, NULL, 'MAxgdqIMG_20220906_132509.jpg', NULL, '2278362', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:17:01', '2023-03-17 11:17:01'),
(334, 12, NULL, 'CTYGas20221111_141155.jpg', NULL, '3027935', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:23:42', '2023-03-17 11:23:42'),
(335, 12, NULL, 'nq8gNz20221111_141022.jpg', NULL, '2526849', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:23:42', '2023-03-17 11:23:42'),
(336, 12, NULL, '8T2AlP20221111_141429.jpg', NULL, '2133392', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 11:23:47', '2023-03-17 11:24:00'),
(337, 10, NULL, 'QnQgz220221111_151601.jpg', NULL, '2316820', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:31:20', '2023-03-17 11:31:20'),
(338, 10, NULL, 'SamzMV20221111_151610.jpg', NULL, '2441940', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 11:31:20', '2023-03-17 11:31:20'),
(339, 10, NULL, 'LQzaNp20221111_151623.jpg', NULL, '2509520', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 11:31:23', '2023-03-17 11:31:36'),
(340, 7, NULL, 'Cc8vxg20221111_113133.jpg', NULL, '1433306', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 12:58:33', '2023-03-17 12:58:33'),
(341, 7, NULL, 'wfpDUo20221111_113237.jpg', NULL, '1433729', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 12:58:33', '2023-03-17 13:00:18'),
(342, 7, NULL, 'Y7k6Pd20221111_114012.jpg', NULL, '1391870', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 12:58:37', '2023-03-17 12:58:37'),
(343, 7, NULL, 'f3skEj20221111_113538.jpg', NULL, '7276197', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 12:58:41', '2023-03-17 12:58:41'),
(344, 13, NULL, 'mUGRcL20230106_133220.jpg', NULL, '13219210', 'image/jpeg', NULL, 0, NULL, NULL, '2023-03-17 13:04:49', '2023-03-17 13:06:37'),
(345, 13, NULL, 'usjWrs20230106_132718.jpg', NULL, '16722708', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-17 13:04:49', '2023-03-17 13:06:37'),
(346, 13, NULL, 'jO6cm720230106_133311.jpg', NULL, '13240576', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 13:04:56', '2023-03-17 13:04:56'),
(347, 13, NULL, 'LsvrUO20230106_134404.jpg', NULL, '14499787', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-17 13:04:59', '2023-03-17 13:04:59'),
(348, 34, NULL, 'Ttq2SVDSC07248.jpg', NULL, '1012556', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 08:45:24', '2023-03-28 08:45:24'),
(349, 34, NULL, 'uLBM27DSC07243.jpg', NULL, '1442266', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-28 08:45:25', '2023-03-28 08:45:39'),
(350, 34, NULL, '18r0kXDSC07275.jpg', NULL, '719927', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 08:45:26', '2023-03-28 08:45:26'),
(351, 34, NULL, 'Gqs22PDSC07255.jpg', NULL, '715286', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 08:45:27', '2023-03-28 08:45:27'),
(352, 34, NULL, 'NJXV9eDSC07284.jpg', NULL, '733819', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 08:45:28', '2023-03-28 08:45:28'),
(353, 35, NULL, '2bktTSDSC07317.jpg', NULL, '2124428', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:04:04', '2023-03-28 09:04:04'),
(354, 35, NULL, '6s15uEDSC07323.jpg', NULL, '3256863', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-28 09:04:05', '2023-03-28 09:04:19'),
(355, 35, NULL, 'UzayOyDSC07332.jpg', NULL, '3496607', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:04:08', '2023-03-28 09:04:08'),
(356, 35, NULL, 'JFwa8GDSC07345.jpg', NULL, '3406532', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:04:08', '2023-03-28 09:04:08'),
(357, 36, NULL, 'bLqylYDSC07195.jpg', NULL, '2640750', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:13:06', '2023-03-28 09:13:06'),
(358, 36, NULL, 'iBm7elDSC07214.jpg', NULL, '2851289', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:13:06', '2023-03-28 09:13:06'),
(359, 36, NULL, 'bqsb9vDSC07231.jpg', NULL, '2523192', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:13:08', '2023-03-28 09:13:08'),
(360, 36, NULL, 'qVfWxrDSC07221.jpg', NULL, '3208008', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-28 09:13:10', '2023-03-28 09:13:34'),
(361, 37, NULL, 'XiGnN6DSC07301.jpg', NULL, '2845809', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:20:17', '2023-03-28 09:20:17'),
(362, 37, NULL, 'L6MkCGDSC07297.jpg', NULL, '3329973', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:20:18', '2023-03-28 09:20:18'),
(363, 37, NULL, 'Q7kHwjDSC07305.jpg', NULL, '2774615', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-28 09:20:21', '2023-03-28 09:20:21'),
(364, 37, NULL, 'G8obrMDSC07310.jpg', NULL, '2327882', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-28 09:20:22', '2023-03-28 09:20:35'),
(373, 3, NULL, '9r4ezS20230106_142554-min.jpg', NULL, '5199893', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:13', '2023-03-30 12:32:13'),
(374, 3, NULL, 'YamTd120230106_142547-min.jpg', NULL, '4443950', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:15', '2023-03-30 12:32:15'),
(375, 3, NULL, 'whqgWG20230106_142559-min.jpg', NULL, '5618218', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:18', '2023-03-30 12:32:18'),
(376, 3, NULL, 'SxF0sC20230106_142604-min.jpg', NULL, '5595641', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:19', '2023-03-30 12:32:19'),
(377, 3, NULL, '6q1Idr20230106_142611-min.jpg', NULL, '6066299', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:22', '2023-03-30 12:32:22'),
(378, 3, NULL, 'HIJFIF20230106_142728-min.jpg', NULL, '4211837', 'image/jpeg', NULL, 1, NULL, NULL, '2023-03-30 12:32:22', '2023-03-30 12:32:47'),
(379, 3, NULL, 'f3Je3n20230106_142759-min.jpg', NULL, '4987111', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:26', '2023-03-30 12:32:26'),
(380, 3, NULL, '7v7k3w20230106_142741-min.jpg', NULL, '5397923', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:27', '2023-03-30 12:32:27'),
(381, 3, NULL, '9j3lJu20230106_143408-min.jpg', NULL, '6032540', 'image/jpeg', NULL, NULL, NULL, NULL, '2023-03-30 12:32:30', '2023-03-30 12:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `autoload` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `autoload`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'https://cms.zeka.co.ke/public', 'yes', '2020-03-13 17:33:31', '2020-03-13 17:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption_one` text DEFAULT NULL,
  `caption_two` text DEFAULT NULL,
  `caption_three` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `caption_one`, `caption_two`, `caption_three`, `url`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'C47qj4.jpg', 'LUXURY AT ITS BEST', NULL, '2 & 3 Bedrooms Apartments', 'https://360.hotlist.co.ke/grandebenpark1/', '15', 1, NULL, '2021-03-11 07:34:16', '2022-06-29 13:10:28'),
(2, '1GXAtJ.jpg', '3 BEDROOMS CASH PRICE OFFER! KSH 11M', NULL, 'Master Ensuite', 'https://360.hotlist.co.ke/grandebenpark2/', '15', 1, NULL, '2021-03-15 08:40:15', '2023-03-09 13:44:44'),
(4, 'abIfTkAYMV.jpg', 'READY FOR OCCUPATION', NULL, 'Has only 42 units on 7 floors', '#', '15', 1, NULL, '2022-06-22 08:53:36', '2023-03-09 13:53:43'),
(5, 'kZ7UoL93LL.jpg', 'GRAND EBEN PARK APARTMENTS, ALONG NGONG ROAD', NULL, 'Near The Junction Mall', 'https://youtu.be/gteF3aRua30', '15', 1, NULL, '2022-06-23 09:57:19', '2023-03-09 13:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `color` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'paid', NULL, '2017-03-25 21:00:00', '2019-09-18 21:00:00'),
(2, 'unpaid', NULL, '2019-09-18 21:00:00', '2019-05-10 20:55:04'),
(3, 'partially paid', NULL, '2019-09-18 21:00:00', '2019-09-18 21:00:00'),
(4, 'cancelled', NULL, '2019-09-18 21:00:00', '2019-09-18 21:00:00'),
(5, 'overdue', NULL, '2019-09-18 21:00:00', '2019-09-18 21:00:00'),
(6, 'sent', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(7, 'pending', '#49b6d6', '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(8, 'deleted', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(9, 'remove', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(10, 'draft', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(11, 'expired', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(12, 'declined', NULL, '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(13, 'accepted', '#468847', '2019-05-15 21:00:00', '2019-05-15 21:00:00'),
(14, 'delivered', NULL, '2019-06-01 21:00:00', '2019-06-01 21:00:00'),
(15, 'active', NULL, '2019-06-09 21:00:00', '2019-06-09 21:00:00'),
(16, 'complete', NULL, '2019-06-15 21:00:00', '2019-06-15 21:00:00'),
(17, 'started', NULL, '2019-07-27 21:00:00', '2019-07-27 21:00:00'),
(18, 'dept', NULL, '2019-08-13 21:00:00', '2019-08-13 21:00:00'),
(19, 'approved', '#468847', '2019-08-16 21:00:00', '2019-08-16 21:00:00'),
(20, 'denied', NULL, '2019-08-16 21:00:00', '2019-08-16 21:00:00'),
(21, 'open', NULL, '2019-09-18 21:00:00', '2019-09-18 21:00:00'),
(22, 'closed', NULL, '2019-09-18 21:00:00', '2019-09-18 21:00:00'),
(23, 'dormant', NULL, '2019-09-25 21:00:00', '2019-09-25 21:00:00'),
(24, 'ongoing', NULL, '2019-10-20 21:00:00', '2019-10-20 21:00:00'),
(25, 'employed', NULL, '2019-10-24 21:00:00', '2019-10-24 21:00:00'),
(26, 'terminated', NULL, '2019-10-24 21:00:00', '2019-10-24 21:00:00'),
(27, 'deceased', NULL, '2019-10-24 21:00:00', '2019-10-24 21:00:00'),
(28, 'resigned', NULL, '2019-10-24 21:00:00', '2019-10-24 21:00:00'),
(29, 'cart', NULL, '2020-03-16 20:56:23', '2020-03-16 20:56:23'),
(30, 'order', NULL, '2020-03-17 18:10:35', '2020-03-17 18:10:35'),
(31, 'published', NULL, '2020-11-23 21:00:00', '2020-11-23 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `businessID` int(11) NOT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone_number`, `country`, `town`, `street_address`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Griffin kisia', 'grifkisia@gmail.com', '2020-04-08 20:04:45', '$2y$10$sSKeqzxyNzXFaXr00o6Y.eRmL2H6XYNC9soMvBeZyFzF8V0.m7Rgy', '8MpgCYQnX8seom8UbSpiUNcMf2qEi0J6ihr68HUlvLkNCmHkLRSpCepXhdo1', NULL, NULL, NULL, NULL, NULL, '2020-04-06 18:35:43', '2020-04-12 08:20:00'),
(2, 'Nishiv Shah', 'nish@sonashoppeltd.com', '2020-04-08 20:04:40', '$2y$10$jmPgif..HJdQYNMV7ooLP.MuhuxWJGXZW/8mInQTppJP8u5K8.Sa2', NULL, '+254721428824', 'Kenya', 'Nairobi', 'Westgate Shopping Mall', NULL, '2020-04-07 11:22:45', '2020-04-07 11:23:23'),
(3, 'GRIFFIN KISIA', 'kisia@bluetreeagency.com', NULL, '$2y$10$oi7bTwMd2MpT8BlfDxB9GO/c/J519MBgMithp5mo912EYiWO6ns9K', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-08 08:45:34', '2021-01-08 08:45:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admins_password_resets`
--
ALTER TABLE `admins_password_resets`
  ADD KEY `admins_password_resets_email_index` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_types`
--
ALTER TABLE `blog_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_product`
--
ALTER TABLE `brand_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_blogs`
--
ALTER TABLE `category_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custome_field`
--
ALTER TABLE `custome_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_manager`
--
ALTER TABLE `file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_sections`
--
ALTER TABLE `language_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_menu`
--
ALTER TABLE `page_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_template`
--
ALTER TABLE `page_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_product_information`
--
ALTER TABLE `product_category_product_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_types`
--
ALTER TABLE `blog_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand_product`
--
ALTER TABLE `brand_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_blogs`
--
ALTER TABLE `category_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `communication`
--
ALTER TABLE `communication`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `custome_field`
--
ALTER TABLE `custome_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_manager`
--
ALTER TABLE `file_manager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_menu`
--
ALTER TABLE `page_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_template`
--
ALTER TABLE `page_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_category_product_information`
--
ALTER TABLE `product_category_product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
