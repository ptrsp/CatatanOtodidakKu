

CREATE TABLE `comments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userID` int(255) NOT NULL,
  `postID` int(255) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

INSERT INTO comments VALUES("1","2","1","But Is this the only way?");
INSERT INTO comments VALUES("2","1","1","I don't think so.");
INSERT INTO comments VALUES("3","1","1","Shut Up!");
INSERT INTO comments VALUES("11","1","2","HTML is a markup language");
INSERT INTO comments VALUES("13","3","1","Stop Shit Talkings");
INSERT INTO comments VALUES("14","3","2","The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.");
INSERT INTO comments VALUES("16","3","7","Oh really?");
INSERT INTO comments VALUES("17","3","7","But when is the makeup?");
INSERT INTO comments VALUES("26","1","20","Ami bhalo achi");
INSERT INTO comments VALUES("27","2","7","Nice!");



CREATE TABLE `group_members` (
  `id` int(155) NOT NULL AUTO_INCREMENT,
  `groupID` int(155) NOT NULL,
  `userid` int(155) NOT NULL,
  `validity` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO group_members VALUES("1","1","1","1");
INSERT INTO group_members VALUES("2","1","2","1");
INSERT INTO group_members VALUES("3","2","1","1");
INSERT INTO group_members VALUES("4","1","3","1");
INSERT INTO group_members VALUES("5","1","4","1");
INSERT INTO group_members VALUES("6","1","5","1");



CREATE TABLE `group_moderators` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `groupID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO group_moderators VALUES("1","1","2");



CREATE TABLE `group_posts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userID` int(255) NOT NULL,
  `groupID` int(255) NOT NULL,
  `content` text NOT NULL,
  `date` varchar(1000) NOT NULL DEFAULT current_timestamp(),
  `approved` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

INSERT INTO group_posts VALUES("1","1","1","PHA+V2hhdCB0byBEbyBpbiBEZXByZXNzaW9uPzwvcD4=","","yes");
INSERT INTO group_posts VALUES("2","2","1","PGgzPldoYXQgaXMgSFRNTD8gPGJyPkkgd2FudCB0byBsZWFybiBIVE1MPC9oMz4=","","yes");
INSERT INTO group_posts VALUES("7","1","1","PGgyPlRoZXJlIHdpbGwgYmUgTm8gY2xhc3MgVG9tb3Jyb3chPC9oMj4=","2022-09-26 04:19:11","yes");
INSERT INTO group_posts VALUES("20","1","2","PHA+SGVoZSBLZW1vbiBhY2hvIHNvYmFpPyBoZWhlPyBUaGlrPzwvcD4=","2022-09-27 02:27:11","yes");
INSERT INTO group_posts VALUES("21","5","1","PHA+PHN0cm9uZz5JIG5lZWQgcHJldmlvdXMgdHJpbWVzdGVyIHF1ZXN0aW9ucyBmb3IgRGF0YSBDb21tdW5pY2F0aW9uLjwvc3Ryb25nPjwvcD4=","2022-09-27 03:41:17","yes");
INSERT INTO group_posts VALUES("32","3","1","PHA+PHNwYW4gY2xhc3M9Imd2eHp5dmR4IGFlaW56ZzgxIHQ3cDdkcWV2IGdoMjVkenZmIGV4cjdiYXJ3IGI2YXg0YWwxIGdlbTEwMnY0IG5jaWI2NGM5IG1ydndjNnFyIHN4OHB4a2NmIGY1OTdrZjF2IGNwY2d3d2FzIG0ybmlqY3M4IGh4ZndyNWx6IGM2MW4yYmY2IG9vZzVxcjV3IHRlczg2cmpkIHBiZXZqZng2IHp0bjJ3NDlvIiBkaXI9ImF1dG8iPk9uZSBkYXkgeW91IHdpbGwgYmUgbGl2aW5nIHRoZSBsaWZlIG9uY2UgeW91IHByYXllZCBmb3I8L3NwYW4+PC9wPg==","2022-09-27 14:07:11","yes");
INSERT INTO group_posts VALUES("36","1","1","PHA+YXNkYXNkYXNkIGFzZiBhc2ZhIGRmYWRmYWRmIGFkZmEgZGZhZGY8L3A+","2022-09-27 17:16:49","yes");
INSERT INTO group_posts VALUES("37","2","1","PHA+SGVsbG8hIEkgYW0gYSBzdHVkZW50PC9wPg==","2022-09-27 18:17:32","yes");
INSERT INTO group_posts VALUES("38","2","1","","2022-09-27 18:47:29","yes");



CREATE TABLE `groups` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `about` text NOT NULL,
  `ownerID` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO groups VALUES("1","CSI 411 Compiler(B) Summer22","private","This is a private group for Compiler Class.</br>
The course will help to understand and solve all the questions related to GATE exam. Compilers provide you with the theoretical and practical knowledge that is needed to implement a programming language. Once you learn to do compiler, you pretty much know the innards of many programming languages. Moreover, judging a programming language by its essential features will become easy for you.","1");
INSERT INTO groups VALUES("2","UIU Computer Club","public","COMPUTER CLUB GROUP","2");
INSERT INTO groups VALUES("3","Marvel VS DC Comics","private","We hate none.","3");
INSERT INTO groups VALUES("4","C++ Community","public","A Group of C++ Programmers and enthusiasts.","2");
INSERT INTO groups VALUES("5","PC Builder Bangladesh","public","Custom PC Builder Community","2");
INSERT INTO groups VALUES("6","UIU APP FORUM","private","A Group of members of UIU APP FORUM","2");
INSERT INTO groups VALUES("7","Java Programmers","public","Java Programmers Community","2");
INSERT INTO groups VALUES("8","Arduino Projects","public","Share your Arduino Projects Here","2");



CREATE TABLE `institutes` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO institutes VALUES("1","United International University","uiu.png","Madani Avenue, Vatara, Dhaka","university");
INSERT INTO institutes VALUES("2","American International University Bangladesh","aiub.jpg","Kuril, Dhaka","university");
INSERT INTO institutes VALUES("3","North South University","nsu.jpg","Plot # 15, Dhaka 1229","university");



CREATE TABLE `likes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `postID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4;

INSERT INTO likes VALUES("49","0","0");
INSERT INTO likes VALUES("105","1","2");
INSERT INTO likes VALUES("175","2","1");
INSERT INTO likes VALUES("177","7","3");
INSERT INTO likes VALUES("180","2","3");
INSERT INTO likes VALUES("182","12","1");
INSERT INTO likes VALUES("184","1","3");
INSERT INTO likes VALUES("188","6","1");
INSERT INTO likes VALUES("189","7","2");
INSERT INTO likes VALUES("193","7","5");
INSERT INTO likes VALUES("194","2","5");
INSERT INTO likes VALUES("195","1","5");
INSERT INTO likes VALUES("197","32","3");



CREATE TABLE `sessions` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `session_id` text NOT NULL,
  `user_id` int(255) NOT NULL,
  `issued` int(255) NOT NULL,
  `expiry_time` int(255) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `browser` text NOT NULL,
  `location` varchar(300) NOT NULL,
  `validity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

INSERT INTO sessions VALUES("2","1662827523","1","1662827523","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("3","1662832757","1","1662832757","1662833219","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("4","1662833225","1","1662833225","1662833273","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("5","1662833278","1","1662833278","1662833729","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("6","1662833903","1","1662833903","1662836182","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("7","1662836270","1","1662836270","1662978929","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("8","1662978931","1","1662978931","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("9","1663444452","1","1663444452","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("10","1663619687","1","1663619687","0","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("11","1663692799","1","1663692799","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("12","1663797549","1","1663797549","0","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","valid");
INSERT INTO sessions VALUES("13","1663832163","1","1663832163","1664105572","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("14","1663844327","1","1663844327","0","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","valid");
INSERT INTO sessions VALUES("15","1663855426","1","1663855426","1664055627","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("16","1664055653","2","1664055653","1664055775","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("17","1664055782","3","1664055782","1664057770","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("18","1664057776","1","1664057776","1664142166","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("19","1664105580","3","1664105580","1664201261","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("20","1664126728","1","1664126728","0","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","valid");
INSERT INTO sessions VALUES("21","1664126804","1","1664126804","0","::1","Mozilla/5.0 (Linux; Android 9; Redmi Note 6 Pro Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/105.0.5195.136 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/379.1.0.23.114;]","","valid");
INSERT INTO sessions VALUES("22","1664142168","1","1664142168","1664144473","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("23","1664144480","3","1664144480","1664193139","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("24","1664193141","1","1664193141","1664273918","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("25","1664201263","1","1664201263","1664224342","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("26","1664224354","2","1664224354","1664228428","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("27","1664228435","5","1664228435","1664228547","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("28","1664228555","1","1664228555","1664228603","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("29","1664228607","3","1664228607","1664267638","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("30","1664273922","1","1664273922","1664273923","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("31","1664274440","1","1664274440","1664274442","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("32","1664274542","1","1664274542","1664274544","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("33","1664274546","1","1664274546","1664274547","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("34","1664274808","1","1664274808","1664274810","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("35","1664274877","1","1664274877","1664274878","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("36","1664277324","1","1664277324","1664280879","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("37","1664280888","2","1664280888","1664280942","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("38","1664280948","2","1664280948","0","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","valid");
INSERT INTO sessions VALUES("39","1664282307","1","1664282307","1664282344","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("40","1664282356","2","1664282356","1664283782","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("41","1664283788","6","1664283788","1664284089","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("42","1664284097","5","1664284097","1664284102","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","invalid");
INSERT INTO sessions VALUES("43","1664284105","1","1664284105","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0","","valid");



CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `institute` int(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `adminprivilege` varchar(20) NOT NULL,
  `CreationTimestamp` varchar(155) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES("1","Nawshad Chowdhury","nawshad","1234","1","307541991_975031800556779_3044594444160773565_n.jpg","yes","1652190977");
INSERT INTO users VALUES("2","Nabila Nusrat","nabila","1234","1","random-square-multicolor-pattern-24853666.jpg","no","1662828950");
INSERT INTO users VALUES("3","Talha Beg","talha","1234","1","1617285526935.jpg","no","1662828950");
INSERT INTO users VALUES("4","Rahmat Ullah","rahmat","1234","1","random-square-multicolor-pattern-24853666.jpg","no","");
INSERT INTO users VALUES("5","Nusrat Jahan","nusrat","1234","1","istockphoto-1314364890-612x612.jpg","no","current_timestamp()");
INSERT INTO users VALUES("6","Israt Mysha","israt","1234","1","seamless-pattern-genderspecific-male-female-260nw-1716340192.webp","no","current_timestamp()");

