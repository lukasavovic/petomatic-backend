-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Verzija:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table petomatic.customers: ~25 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `firstName`, `lastName`, `email`, `phone`, `image`) VALUES
	(1, 'Noelia', 'Howe', 'kira44@klocko.biz', 22915, NULL),
	(2, 'Sonia', 'Greenfelder', 'tillman83@hotmail.com', 44844, NULL),
	(3, 'Constance', 'Kozey', 'zklocko@stoltenberg.net', 39857, NULL),
	(4, 'Bulah', 'Altenwerth', 'sconroy@murphy.biz', 40095, NULL),
	(5, 'Renee', 'Watsica', 'zhagenes@mckenzie.com', 40674, NULL),
	(6, 'Pierre', 'Schiller', 'orn.jonas@block.com', 33875, NULL),
	(7, 'Jovanny', 'Turner', 'nwest@ward.biz', 23473, NULL),
	(8, 'Jeff', 'Cremin', 'jeffery.morar@schulist.info', 28409, NULL),
	(9, 'Maudie', 'Quitzon', 'lacy32@gmail.com', 89530, NULL),
	(10, 'Thaddeus', 'Conroy', 'armstrong.cordell@hotmail.com', 30021, NULL),
	(11, 'Russ', 'Rolfson', 'crunte@hotmail.com', 48004, NULL),
	(12, 'Leonel', 'Hudson', 'tgreen@cruickshank.com', 30008, NULL),
	(13, 'Catalina', 'Rolfson', 'bharris@windler.com', 75779, NULL),
	(14, 'Gia', 'Lubowitz', 'cydney.cruickshank@rohan.net', 85651, NULL),
	(15, 'Nola', 'Nienow', 'yadira32@gmail.com', 77848, NULL),
	(16, 'Toy', 'Gleason', 'nettie.runolfsson@terry.net', 82274, NULL),
	(17, 'Anissa', 'Veum', 'jose49@gmail.com', 84713, NULL),
	(18, 'Monica', 'Abshire', 'prudence66@schuster.com', 25721, NULL),
	(19, 'Naomie', 'Torp', 'geovanny.heaney@oberbrunner.com', 71266, NULL),
	(20, 'D\'angelo', 'Boyer', 'yrau@flatley.com', 83133, NULL),
	(21, 'Dalton', 'McCullough', 'bmraz@gmail.com', 22995, NULL),
	(22, 'Deron', 'Deckow', 'lamont.greenholt@hotmail.com', 54386, NULL),
	(23, 'Emmie', 'McDermott', 'stroman.nathanial@franecki.biz', 24094, NULL),
	(24, 'Jaquelin', 'Upton', 'strosin.sebastian@fay.com', 96779, NULL),
	(25, 'Jovanny', 'White', 'nlakin@hotmail.com', 55834, NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping data for table petomatic.genders: ~2 rows (approximately)
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` (`id`, `title`) VALUES
	(1, 'male'),
	(2, 'female');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;

-- Dumping data for table petomatic.pets: ~35 rows (approximately)
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` (`id`, `name`, `customers_id`, `species_id`, `age`, `vaccination`, `vaccinationDate`, `genders_id`, `image`, `chipped`) VALUES
	(1, 'Piper', 1, 5, 5, 0, NULL, 2, NULL, 0),
	(2, 'Peter', 2, 5, 6, 1, NULL, 1, NULL, 0),
	(3, 'Elena', 3, 1, 5, 1, NULL, 2, NULL, 1),
	(4, 'Ciara', 4, 1, 5, 0, NULL, 1, NULL, 0),
	(5, 'Rozella', 5, 5, 1, 1, NULL, 2, NULL, 1),
	(6, 'Frederique', 6, 3, 1, 1, NULL, 2, NULL, 0),
	(7, 'Cory', 7, 1, 3, 1, NULL, 2, NULL, 0),
	(8, 'Stefan', 8, 5, 9, 0, NULL, 1, NULL, 0),
	(9, 'Lisa', 9, 2, 7, 1, NULL, 2, NULL, 0),
	(10, 'Domingo', 10, 1, 10, 0, NULL, 1, NULL, 0),
	(11, 'Roberta', 11, 1, 5, 0, NULL, 2, NULL, 1),
	(12, 'Deshawn', 12, 4, 1, 1, NULL, 2, NULL, 1),
	(13, 'Marcella', 13, 5, 9, 1, NULL, 2, NULL, 1),
	(14, 'Eulah', 14, 2, 10, 1, NULL, 1, NULL, 1),
	(15, 'Anya', 15, 1, 9, 1, NULL, 2, NULL, 0),
	(16, 'Major', 16, 5, 2, 1, NULL, 1, NULL, 0),
	(17, 'Nia', 17, 2, 9, 0, NULL, 1, NULL, 1),
	(18, 'Lucius', 18, 1, 7, 1, NULL, 2, NULL, 1),
	(19, 'Adriana', 19, 1, 10, 0, NULL, 1, NULL, 0),
	(20, 'Colin', 20, 5, 9, 0, NULL, 2, NULL, 1),
	(21, 'Joaquin', 21, 2, 8, 1, NULL, 2, NULL, 1),
	(22, 'Beryl', 22, 1, 6, 1, NULL, 2, NULL, 0),
	(23, 'Uriel', 23, 5, 7, 1, NULL, 1, NULL, 0),
	(24, 'Bryon', 24, 2, 6, 0, NULL, 1, NULL, 0),
	(25, 'Michale', 25, 2, 6, 1, NULL, 1, NULL, 1),
	(26, 'Prof. Valentine Lueilwitz', 7, 4, 2, 1, NULL, 1, NULL, 0),
	(27, 'Elmira Dibbert', 7, 5, 2, 0, NULL, 2, NULL, 0),
	(28, 'Arielle Kuhic', 17, 3, 10, 0, NULL, 1, NULL, 1),
	(29, 'Agnes Zieme', 12, 1, 7, 0, NULL, 2, NULL, 1),
	(30, 'Willie Hyatt I', 6, 1, 4, 0, NULL, 2, NULL, 1),
	(31, 'Roslyn Gutkowski DDS', 16, 5, 1, 0, NULL, 2, NULL, 0),
	(32, 'Sim Baumbach Jr.', 9, 1, 9, 0, NULL, 1, NULL, 0),
	(33, 'Miss Brandy Ortiz', 14, 2, 3, 0, NULL, 1, NULL, 1),
	(34, 'Ms. Shannon Lueilwitz DDS', 11, 3, 8, 0, NULL, 1, NULL, 1),
	(35, 'Seamus Kovacek', 7, 5, 1, 0, NULL, 1, NULL, 0);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;

-- Dumping data for table petomatic.species: ~5 rows (approximately)
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` (`id`, `title`) VALUES
	(1, 'dog'),
	(2, 'cat'),
	(3, 'rabbit'),
	(4, 'bird'),
	(5, 'hamster');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;

-- Dumping data for table petomatic.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `avatar`) VALUES
	(1, 'Jules', 'Stark', 'brakus.allene@mosciski.com', 'rZ5-WtT40V\\j3D+:w(q', NULL),
	(2, 'Kaitlin', 'Douglas', 'joanne75@mosciski.com', 'x`BKw}v_p.b>I2q', NULL),
	(3, 'Ana', 'Hauck', 'kparisian@roberts.org', 'A*MLZ{Y]', NULL),
	(4, 'Jerry', 'Schinner', 'hintz.naomi@lueilwitz.com', 'l6Q9`~#R*R/{-l', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping data for table petomatic.visits: ~50 rows (approximately)
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` (`id`, `date`, `longDescription`, `pets_id`, `customers_id`, `visit_type_id`) VALUES
	(1, '1983-07-12', 'D,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to ask: perhaps I shall be late!\' (when she thought there was enough of me left to make herself useful, and looking at Alice for.', 1, 1, 1),
	(2, '2010-05-15', 'I\'ve got back to my boy, I beat him when he sneezes; For he can EVEN finish, if he would not open any of them. However, on the floor, and a bright idea came into her eyes--and still as she heard was.', 2, 2, 3),
	(3, '2000-11-22', 'The Footman seemed to be no chance of this, so that they must needs come wriggling down from the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: \'but it sounds uncommon.', 3, 3, 2),
	(4, '1992-09-21', 'I can\'t show it you myself,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon interrupted in a whisper, half afraid that it would be a Caucus-race.\' \'What IS the.', 4, 4, 2),
	(5, '1977-06-01', 'Alice for some way of expecting nothing but the Hatter went on, \'that they\'d let Dinah stop in the same thing with you,\' said the King, \'unless it was neither more nor less than a rat-hole: she.', 5, 5, 4),
	(6, '1992-09-02', 'Duchess said after a few yards off. The Cat only grinned a little nervous about this; \'for it might injure the brain; But, now that I\'m perfectly sure I can\'t get out again. That\'s all.\' \'Thank.', 6, 6, 4),
	(7, '2015-02-18', 'I\'ll eat it,\' said Alice to herself, as she spoke, but no result seemed to have finished,\' said the Footman. \'That\'s the first question, you know.\' \'Who is this?\' She said the Cat. \'--so long as it.', 7, 7, 3),
	(8, '1999-04-26', 'Alice said very politely, \'if I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to the Classics master, though. He was looking at everything that Alice quite hungry to look.', 8, 8, 3),
	(9, '1972-08-19', 'Dormouse crossed the court, she said this, she came upon a time she found to be done, I wonder?\' As she said to herself \'It\'s the Cheshire Cat sitting on the bank--the birds with draggled feathers.', 9, 9, 3),
	(10, '2016-11-20', 'Normans--" How are you thinking of?\' \'I beg your pardon,\' said Alice to herself. Imagine her surprise, when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice. \'It.', 10, 10, 1),
	(11, '1993-01-03', 'So she sat down with her head! Off--\' \'Nonsense!\' said Alice, \'because I\'m not particular as to go and get in at all?\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was.', 11, 11, 2),
	(12, '1992-12-06', 'I wonder what I could shut up like a serpent. She had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it would not join the dance? Will you, won\'t you join.', 12, 12, 3),
	(13, '2017-08-12', 'There were doors all round her, calling out in a tone of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t believe there\'s an atom of meaning in it.\' The jury all brightened.', 13, 13, 1),
	(14, '1978-09-26', 'However, I\'ve got to do,\' said Alice in a sorrowful tone; \'at least there\'s no use in waiting by the Queen was to eat the comfits: this caused some noise and confusion, as the rest of the treat.', 14, 14, 3),
	(15, '1975-02-15', 'Dormouse say?\' one of the well, and noticed that the reason and all sorts of things, and she, oh! she knows such a noise inside, no one to listen to me! When I used to it!\' pleaded poor Alice in a.', 15, 15, 2),
	(16, '2010-03-05', 'Dormouse said--\' the Hatter went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been.', 16, 16, 4),
	(17, '2001-07-07', 'Alice could see it trying in a trembling voice, \'Let us get to the cur, "Such a trial, dear Sir, With no jury or judge, would be a lesson to you to offer it,\' said Alice. \'You must be,\' said the.', 17, 17, 3),
	(18, '1987-12-24', 'I\'m never sure what I\'m going to leave it behind?\' She said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the guinea-pigs!\' thought Alice. \'I mean what I.', 18, 18, 1),
	(19, '2013-07-10', 'Dormouse, not choosing to notice this last remark that had made her look up and down in a low, hurried tone. He looked at Two. Two began in a sort of circle, (\'the exact shape doesn\'t matter,\' it.', 19, 19, 4),
	(20, '1995-08-15', 'It did so indeed, and much sooner than she had tired herself out with his knuckles. It was so full of the country is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Caterpillar. This was such.', 20, 20, 3),
	(21, '1984-05-23', 'Dodo, a Lory and an old crab, HE was.\' \'I never was so ordered about in the night? Let me see: that would happen: \'"Miss Alice! Come here directly, and get ready to make it stop. \'Well, I\'d hardly.', 21, 21, 4),
	(22, '2016-12-23', 'Alice severely. \'What are tarts made of?\' Alice asked in a tone of great relief. \'Now at OURS they had to kneel down on one of the legs of the court. All this time she had put on her lap as if a.', 22, 22, 2),
	(23, '1992-09-12', 'I\'ll be jury," Said cunning old Fury: "I\'ll try the first day,\' said the Mock Turtle is.\' \'It\'s the oldest rule in the air. She did not like the three gardeners, but she did not appear, and after a.', 23, 23, 1),
	(24, '2010-03-24', 'ME,\' said Alice in a low voice, to the table to measure herself by it, and burning with curiosity, she ran out of the Queen said to herself, \'Why, they\'re only a child!\' The Queen turned crimson.', 24, 24, 2),
	(25, '2006-06-14', 'And so she went back to the other, looking uneasily at the bottom of a bottle. They all returned from him to you, Though they were nice grand words to say.) Presently she began thinking over other.', 25, 25, 3),
	(26, '1978-10-25', 'The Panther took pie-crust, and gravy, and meat, While the Owl had the door opened inwards, and Alice\'s first thought was that it is!\' As she said this, she came up to the croquet-ground. The other.', 4, 4, 1),
	(27, '1980-01-07', 'Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'I daresay it\'s a French mouse, come over with fright.', 25, 25, 3),
	(28, '1990-02-15', 'Duchess: \'what a clear way you go,\' said the Lory hastily. \'I don\'t think they play at all this time, as it didn\'t much matter which way she put them into a pig, my dear,\' said Alice, rather alarmed.', 15, 15, 4),
	(29, '1999-05-22', 'Cheshire cats always grinned; in fact, a sort of thing never happened, and now here I am very tired of this. I vote the young man said, \'And your hair has become very white; And yet I wish I hadn\'t.', 2, 2, 4),
	(30, '2015-07-03', 'Duchess: \'and the moral of that dark hall, and close to her to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King exclaimed, turning to the Queen. \'Can you play croquet with the.', 8, 8, 2),
	(31, '1980-05-02', 'Alice had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice to herself, \'after such a thing as "I get what I say,\' the Mock Turtle. Alice was beginning to get her head.', 3, 3, 2),
	(32, '2015-11-16', 'Dodo suddenly called out in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the trees upon her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are YOUR.', 9, 9, 2),
	(33, '2016-04-23', 'She took down a good deal on where you want to get through was more hopeless than ever: she sat still and said to one of the others took the hookah out of a tree in front of them, with her friend.', 15, 15, 4),
	(34, '1990-12-01', 'She said the one who had been to her, though, as they came nearer, Alice could hardly hear the Rabbit was no \'One, two, three, and away,\' but they began solemnly dancing round and get in at the.', 20, 20, 4),
	(35, '1984-04-01', 'Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not like to go and live in that poky little house, on the top of his teacup and.', 13, 13, 1),
	(36, '2011-03-18', 'New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried to get rather sleepy, and went on again:-- \'You may go,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish I hadn\'t.', 13, 13, 1),
	(37, '2014-01-25', 'I should think!\' (Dinah was the first day,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'shall I NEVER get any older than.', 4, 4, 4),
	(38, '2012-08-07', 'I ever heard!\' \'Yes, I think you\'d take a fancy to herself what such an extraordinary ways of living would be like, but it all seemed quite dull and stupid for life to go from here?\' \'That depends a.', 1, 1, 1),
	(39, '1978-08-01', 'T!\' said the Cat; and this he handed over to the Mock Turtle is.\' \'It\'s the Cheshire Cat, she was dozing off, and she could not remember ever having seen in her life, and had to kneel down on their.', 8, 8, 3),
	(40, '1979-12-04', 'Caterpillar, and the constant heavy sobbing of the shepherd boy--and the sneeze of the ground--and I should understand that better,\' Alice said to the table to measure herself by it, and found that.', 22, 22, 2),
	(41, '1990-05-04', 'He says it kills all the rest of my own. I\'m a hatter.\' Here the Queen said--\' \'Get to your little boy, And beat him when he finds out who I am! But I\'d better take him his fan and gloves, and, as.', 6, 6, 1),
	(42, '1998-12-06', 'Alice, thinking it was just in time to be sure; but I can\'t understand it myself to begin lessons: you\'d only have to whisper a hint to Time, and round Alice, every now and then, \'we went to school.', 9, 9, 1),
	(43, '1983-08-14', 'Dormouse, without considering at all fairly,\' Alice began, in a hurried nervous manner, smiling at everything that Alice said; \'there\'s a large cauldron which seemed to rise like a frog; and both.', 10, 10, 3),
	(44, '1998-05-09', 'Dormouse, and repeated her question. \'Why did they live at the end.\' \'If you do. I\'ll set Dinah at you!\' There was no \'One, two, three, and away,\' but they began running about in all directions.', 22, 22, 1),
	(45, '2015-07-17', 'Who ever saw one that size? Why, it fills the whole party at once without waiting for the Duchess was VERY ugly; and secondly, because she was to twist it up into hers--she could hear him sighing as.', 21, 21, 1),
	(46, '1979-11-02', 'King. On this the whole she thought it over here,\' said the Rabbit in a great many more than nine feet high, and was in the distance, sitting sad and lonely on a branch of a good thing!\' she said.', 23, 23, 4),
	(47, '2018-05-25', 'Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat in a sulky tone, as it was sneezing and howling alternately without a grin,\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they.', 1, 1, 1),
	(48, '1979-07-16', 'Cat remarked. \'Don\'t be impertinent,\' said the Mock Turtle said: \'I\'m too stiff. And the moral of that is, but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you know what.', 23, 23, 2),
	(49, '2012-12-31', 'Her chin was pressed so closely against her foot, that there was a table, with a trumpet in one hand, and made another rush at Alice for protection. \'You shan\'t be able! I shall have somebody to.', 12, 12, 4),
	(50, '1978-10-04', 'THAT. Then again--"BEFORE SHE HAD THIS FIT--" you never had fits, my dear, and that you weren\'t to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to the puppy; whereupon the.', 24, 24, 4);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;

-- Dumping data for table petomatic.visit_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `visit_type` DISABLE KEYS */;
INSERT INTO `visit_type` (`id`, `title`) VALUES
	(1, 'annual'),
	(2, 'urgent'),
	(3, 'follow up'),
	(4, 'cosmetic');
/*!40000 ALTER TABLE `visit_type` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
