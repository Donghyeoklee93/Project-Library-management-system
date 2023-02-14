-- Part 2 : Physical design - 20% (5 marks each)
-- 1. Create the corresponding database using DDL 

DROP DATABASE IF EXISTS librarymanage_db;
CREATE DATABASE librarymanage_db;


-- Part 2 : Physical design - 20% (5 marks each)
-- 2.Create all the necessary tables identified above using DDL
-- 3.	Populate at least three of your tables with some data using DML (insert into statement)
-- 4.	Populate your database with a large data set representing a one-year transaction 
-- 		(01/01/2022 - 31/12/2022) on each table.  (Use online data generators such as Mockaroo or generate data to generate synthetic data.)


USE librarymanage_db;
DROP TABLE IF EXISTS library;
create table library (
	library_name VARCHAR(50) not null,
	library_address VARCHAR(50),
	contact_no VARCHAR(50),
    PRIMARY KEY (library_name)
);

insert into library (library_name, library_address, contact_no) values ('Murrays Plum', '7 Kipling Lane', '991-870-9077');
insert into library (library_name, library_address, contact_no) values ('Trailing Arbutus', '5 Maywood Road', '543-488-0116');
insert into library (library_name, library_address, contact_no) values ('Azure Blue Sage', '6320 Lawn Plaza', '128-142-5586');
insert into library (library_name, library_address, contact_no) values ('Nehe Kuhiwa', '1 Menomonie Alley', '769-512-3820');
insert into library (library_name, library_address, contact_no) values ('Hoary Yellowcress', '2 Troy Parkway', '724-198-9156');
insert into library (library_name, library_address, contact_no) values ('Boise Milkvetch', '295 Lighthouse Bay Trail', '866-992-5832');
insert into library (library_name, library_address, contact_no) values ('Broadleaf Solomons Seal', '96354 Loomis Road', '229-826-0680');
insert into library (library_name, library_address, contact_no) values ('Dusty Beardtongue', '73 Ilene Way', '818-277-4636');
insert into library (library_name, library_address, contact_no) values ('Mediterranean Cabbage', '64710 Eagle Crest Park', '660-185-7702');
insert into library (library_name, library_address, contact_no) values ('Hybrid Willow', '0563 Express Road', '771-808-1861');
insert into library (library_name, library_address, contact_no) values ('Western Pearlwort', '70 Northridge Court', '875-554-7682');
insert into library (library_name, library_address, contact_no) values ('Disc Lichen', '9683 Acker Drive', '712-584-8021');
insert into library (library_name, library_address, contact_no) values ('Southern Crab Apple', '7 Oneill Park', '334-248-7910');
insert into library (library_name, library_address, contact_no) values ('Warnstorfia Moss', '2 Troy Way', '390-360-4549');
insert into library (library_name, library_address, contact_no) values ('Eatonella', '10 Melrose Way', '568-487-3261');
insert into library (library_name, library_address, contact_no) values ('Rim Lichen', '7 Anthes Place', '744-566-2481');
insert into library (library_name, library_address, contact_no) values ('Cade Juniper', '16 Cherokee Parkway', '791-244-1662');
insert into library (library_name, library_address, contact_no) values ('Desert Yellow Fleabane', '35 Red Cloud Center', '556-467-8941');
insert into library (library_name, library_address, contact_no) values ('Butte Desertparsley', '83 Parkside Junction', '434-969-3443');
insert into library (library_name, library_address, contact_no) values ('Lanceleaf Ticktrefoil', '9 Claremont Terrace', '710-339-6387');




DROP TABLE IF EXISTS admin;
create table admin (
	admin_id INT not null,
	admin_name VARCHAR(50),
	contact_no VARCHAR(50),
	library_name VARCHAR(50) not null,
    PRIMARY KEY (admin_id, library_name)
);
    Alter table admin Add foreign key (library_name) references library(library_name);

insert into admin (admin_id, admin_name, contact_no, library_name) values (1, 'Cammy Hinstock', '256-606-5975', 'Murrays Plum');
insert into admin (admin_id, admin_name, contact_no, library_name) values (2, 'Cos Cocking', '348-821-1178', 'Trailing Arbutus');
insert into admin (admin_id, admin_name, contact_no, library_name) values (3, 'Rachele Tamsett', '347-358-7143', 'Azure Blue Sage');
insert into admin (admin_id, admin_name, contact_no, library_name) values (4, 'Zared Ratley', '406-758-2897', 'Nehe Kuhiwa');
insert into admin (admin_id, admin_name, contact_no, library_name) values (5, 'Fonsie Jouhan', '462-109-5552', 'Hoary Yellowcress');
insert into admin (admin_id, admin_name, contact_no, library_name) values (6, 'Saidee Menichi', '693-659-5372', 'Boise Milkvetch');
insert into admin (admin_id, admin_name, contact_no, library_name) values (7, 'Melisent Bridewell', '512-737-8469', 'Broadleaf Solomons Seal');
insert into admin (admin_id, admin_name, contact_no, library_name) values (8, 'Barnard Hellmer', '757-674-2639', 'Dusty Beardtongue');
insert into admin (admin_id, admin_name, contact_no, library_name) values (9, 'Aldus Mallett', '874-568-6626', 'Mediterranean Cabbage');
insert into admin (admin_id, admin_name, contact_no, library_name) values (10, 'Gracie Strudwick', '607-151-5214', 'Hybrid Willow');
insert into admin (admin_id, admin_name, contact_no, library_name) values (11, 'Austin McCleod', '936-818-0121', 'Western Pearlwort');
insert into admin (admin_id, admin_name, contact_no, library_name) values (12, 'Kally Bulter', '998-943-3179', 'Disc Lichen');
insert into admin (admin_id, admin_name, contact_no, library_name) values (13, 'Liv McCadden', '740-142-0618', 'Southern Crab Apple');
insert into admin (admin_id, admin_name, contact_no, library_name) values (14, 'Van Devon', '688-177-2238', 'Warnstorfia Moss');
insert into admin (admin_id, admin_name, contact_no, library_name) values (15, 'Helaina Templman', '602-632-9117', 'Eatonella');
insert into admin (admin_id, admin_name, contact_no, library_name) values (16, 'Raffaello Martyns', '477-273-0035', 'Rim Lichen');
insert into admin (admin_id, admin_name, contact_no, library_name) values (17, 'Irina Pavinese', '834-659-0459', 'Cade Juniper');
insert into admin (admin_id, admin_name, contact_no, library_name) values (18, 'Rab Clendening', '508-545-3709', 'Desert Yellow Fleabane');
insert into admin (admin_id, admin_name, contact_no, library_name) values (19, 'Wylie Towner', '360-794-7328', 'Butte Desertparsley');
insert into admin (admin_id, admin_name, contact_no, library_name) values (20, 'Ingamar Kubiczek', '731-628-4914', 'Lanceleaf Ticktrefoil');


DROP TABLE IF EXISTS employee;
create table employee (
	emp_id INT not null,
	mobile_no VARCHAR(50),
	designation VARCHAR(14),
	emp_name VARCHAR(50),
	admin_id INT not null,
    PRIMARY KEY (emp_id)
);
    Alter table employee Add foreign key (admin_id) references admin(admin_id);

insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (101, '354-343-6183', 'supervisor', 'Wynnie Marishenko', 1);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (102, '798-406-5703', 'senior manager', 'Natty Ismirnioglou', 2);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (103, '490-868-6350', 'manager', 'Janine Boundley', 3);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (104, '370-424-2222', 'senior manager', 'Mathilda Roddan', 4);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (105, '881-106-5778', 'associate', 'Hilly Cathee', 5);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (106, '509-134-2678', 'assistant', 'Alfonse Aitcheson', 6);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (107, '892-311-6995', 'assistant', 'Haroun Rabat', 7);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (108, '345-659-2454', 'supervisor', 'Cherin Runchman', 8);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (109, '640-942-4644', 'associate', 'Laetitia Benedicte', 9);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (110, '406-327-6593', 'assistant', 'Dulcie Bewfield', 10);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (111, '478-642-9077', 'assistant', 'Darrell Mora', 11);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (112, '167-964-3737', 'assistant', 'Olva Gockelen', 12);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (113, '680-894-9737', 'assistant', 'Tally Mordey', 13);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (114, '669-997-4696', 'manager', 'Page Colisbe', 14);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (115, '947-176-6910', 'manager', 'Nona McBeith', 15);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (116, '361-470-6771', 'associate', 'Cece OCalleran', 16);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (117, '214-996-6563', 'senior manager', 'Chaunce Unthank', 17);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (118, '987-676-5914', 'associate', 'Babara Trett', 18);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (119, '995-415-6686', 'manager', 'Bella Bysshe', 19);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (120, '289-184-6820', 'assistant', 'Julina Minkin', 20);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (121, '597-672-8634', 'associate', 'Kalie Gilvary', 1);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (122, '232-646-2228', 'assistant', 'Noni Wogan', 2);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (123, '869-773-1000', 'associate', 'Meghan Filipchikov', 3);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (124, '955-300-0975', 'assistant', 'Kenyon Edelheid', 4);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (125, '105-429-3806', 'senior manager', 'Hobey Armsden', 5);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (126, '975-578-3844', 'manager', 'Jeremiah Lattin', 6);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (127, '165-473-5980', 'assistant', 'Liva Terrell', 7);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (128, '117-291-2111', 'manager', 'Martie Curley', 8);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (129, '123-586-7212', 'senior manager', 'Essa Barlace', 9);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (130, '889-783-5059', 'manager', 'Cory Deane', 10);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (131, '813-555-0679', 'assistant', 'Ingaberg Agneau', 11);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (132, '949-344-4712', 'associate', 'Carmen Brahms', 12);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (133, '544-558-8445', 'associate', 'Robena McCreadie', 13);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (134, '787-411-9445', 'manager', 'Jorrie McQuillen', 14);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (135, '701-301-5699', 'manager', 'Venita Feldstern', 15);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (136, '476-324-6477', 'associate', 'Verna Goulborn', 16);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (137, '821-495-3337', 'associate', 'Lazar Baldacco', 17);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (138, '334-868-1009', 'manager', 'Oralie January 1st', 18);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (139, '232-732-4362', 'associate', 'Deeann Di Matteo', 19);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (140, '187-497-7695', 'senior manager', 'Niall Bice', 20);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (141, '743-202-8386', 'associate', 'Prentiss Beadel', 1);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (142, '332-160-3294', 'assistant', 'Prentiss Wackley', 2);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (143, '415-930-8437', 'senior manager', 'Orelee Murname', 3);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (144, '579-512-1820', 'assistant', 'Ariella Rime', 4);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (145, '968-877-3408', 'associate', 'Teddy Plitz', 5);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (146, '782-195-4282', 'senior manager', 'Emilie Saxon', 6);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (147, '271-868-1610', 'manager', 'Cass Maciaszczyk', 7);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (148, '281-921-9257', 'assistant', 'Belle Doddridge', 8);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (149, '825-702-0816', 'associate', 'Bink Ortiger', 9);
insert into employee (emp_id, mobile_no, designation, emp_name, admin_id) values (150, '116-765-6837', 'assistant', 'Reuben Clandillon', 10);

DROP TABLE IF EXISTS vendor;
create table vendor (
	vendor_id INT not null,
	contact_no VARCHAR(50),
    PRIMARY KEY (vendor_id)
);

insert into vendor (vendor_id, contact_no) values (5001, '383-690-8525');
insert into vendor (vendor_id, contact_no) values (5002, '854-735-1637');
insert into vendor (vendor_id, contact_no) values (5003, '241-633-7105');
insert into vendor (vendor_id, contact_no) values (5004, '450-115-1366');
insert into vendor (vendor_id, contact_no) values (5005, '418-936-0180');
insert into vendor (vendor_id, contact_no) values (5006, '845-775-6806');
insert into vendor (vendor_id, contact_no) values (5007, '284-151-8241');
insert into vendor (vendor_id, contact_no) values (5008, '975-913-8978');
insert into vendor (vendor_id, contact_no) values (5009, '690-321-1716');
insert into vendor (vendor_id, contact_no) values (5010, '433-304-9187');
insert into vendor (vendor_id, contact_no) values (5011, '973-797-4983');
insert into vendor (vendor_id, contact_no) values (5012, '772-860-2353');
insert into vendor (vendor_id, contact_no) values (5013, '923-866-6761');
insert into vendor (vendor_id, contact_no) values (5014, '242-380-7159');
insert into vendor (vendor_id, contact_no) values (5015, '423-514-6044');
insert into vendor (vendor_id, contact_no) values (5016, '702-965-4394');
insert into vendor (vendor_id, contact_no) values (5017, '384-958-6849');
insert into vendor (vendor_id, contact_no) values (5018, '217-103-5523');
insert into vendor (vendor_id, contact_no) values (5019, '982-997-4234');
insert into vendor (vendor_id, contact_no) values (5020, '813-668-1281');
insert into vendor (vendor_id, contact_no) values (5021, '202-556-4227');
insert into vendor (vendor_id, contact_no) values (5022, '970-469-4666');
insert into vendor (vendor_id, contact_no) values (5023, '832-348-5123');
insert into vendor (vendor_id, contact_no) values (5024, '568-727-7878');
insert into vendor (vendor_id, contact_no) values (5025, '104-888-2366');
insert into vendor (vendor_id, contact_no) values (5026, '683-641-0429');
insert into vendor (vendor_id, contact_no) values (5027, '676-630-5953');
insert into vendor (vendor_id, contact_no) values (5028, '540-450-4789');
insert into vendor (vendor_id, contact_no) values (5029, '475-567-9492');
insert into vendor (vendor_id, contact_no) values (5030, '802-971-7957');
insert into vendor (vendor_id, contact_no) values (5031, '911-920-5799');
insert into vendor (vendor_id, contact_no) values (5032, '828-423-1610');
insert into vendor (vendor_id, contact_no) values (5033, '462-784-9515');
insert into vendor (vendor_id, contact_no) values (5034, '347-617-3214');
insert into vendor (vendor_id, contact_no) values (5035, '516-971-4772');
insert into vendor (vendor_id, contact_no) values (5036, '817-915-6282');
insert into vendor (vendor_id, contact_no) values (5037, '400-803-0924');
insert into vendor (vendor_id, contact_no) values (5038, '747-608-9833');
insert into vendor (vendor_id, contact_no) values (5039, '636-903-1388');
insert into vendor (vendor_id, contact_no) values (5040, '551-516-5646');
insert into vendor (vendor_id, contact_no) values (5041, '432-320-5521');
insert into vendor (vendor_id, contact_no) values (5042, '317-407-1500');
insert into vendor (vendor_id, contact_no) values (5043, '262-674-9389');
insert into vendor (vendor_id, contact_no) values (5044, '399-669-0130');
insert into vendor (vendor_id, contact_no) values (5045, '985-752-5957');
insert into vendor (vendor_id, contact_no) values (5046, '515-805-8407');
insert into vendor (vendor_id, contact_no) values (5047, '383-756-3853');
insert into vendor (vendor_id, contact_no) values (5048, '160-132-9299');
insert into vendor (vendor_id, contact_no) values (5049, '635-594-0015');
insert into vendor (vendor_id, contact_no) values (5050, '222-174-8315');
insert into vendor (vendor_id, contact_no) values (5051, '520-825-6043');
insert into vendor (vendor_id, contact_no) values (5052, '769-355-2302');
insert into vendor (vendor_id, contact_no) values (5053, '124-622-6192');
insert into vendor (vendor_id, contact_no) values (5054, '933-376-8998');
insert into vendor (vendor_id, contact_no) values (5055, '108-760-1337');
insert into vendor (vendor_id, contact_no) values (5056, '678-468-6707');
insert into vendor (vendor_id, contact_no) values (5057, '907-603-8214');
insert into vendor (vendor_id, contact_no) values (5058, '477-165-0337');
insert into vendor (vendor_id, contact_no) values (5059, '317-540-9404');
insert into vendor (vendor_id, contact_no) values (5060, '669-312-2715');
insert into vendor (vendor_id, contact_no) values (5061, '196-680-6834');
insert into vendor (vendor_id, contact_no) values (5062, '112-984-4780');
insert into vendor (vendor_id, contact_no) values (5063, '989-903-5289');
insert into vendor (vendor_id, contact_no) values (5064, '498-467-0263');
insert into vendor (vendor_id, contact_no) values (5065, '581-909-2645');
insert into vendor (vendor_id, contact_no) values (5066, '801-961-7183');
insert into vendor (vendor_id, contact_no) values (5067, '578-254-7353');
insert into vendor (vendor_id, contact_no) values (5068, '898-927-9861');
insert into vendor (vendor_id, contact_no) values (5069, '446-289-2727');
insert into vendor (vendor_id, contact_no) values (5070, '694-256-5589');
insert into vendor (vendor_id, contact_no) values (5071, '959-707-6872');
insert into vendor (vendor_id, contact_no) values (5072, '820-397-4266');
insert into vendor (vendor_id, contact_no) values (5073, '754-635-0420');
insert into vendor (vendor_id, contact_no) values (5074, '874-785-7438');
insert into vendor (vendor_id, contact_no) values (5075, '965-240-0039');
insert into vendor (vendor_id, contact_no) values (5076, '866-407-9946');
insert into vendor (vendor_id, contact_no) values (5077, '136-255-3679');
insert into vendor (vendor_id, contact_no) values (5078, '223-767-6094');
insert into vendor (vendor_id, contact_no) values (5079, '688-761-6956');
insert into vendor (vendor_id, contact_no) values (5080, '810-570-3160');
insert into vendor (vendor_id, contact_no) values (5081, '654-560-4211');
insert into vendor (vendor_id, contact_no) values (5082, '850-900-7159');
insert into vendor (vendor_id, contact_no) values (5083, '143-502-2970');
insert into vendor (vendor_id, contact_no) values (5084, '239-270-2120');
insert into vendor (vendor_id, contact_no) values (5085, '108-956-8984');
insert into vendor (vendor_id, contact_no) values (5086, '852-919-3860');
insert into vendor (vendor_id, contact_no) values (5087, '893-940-3439');
insert into vendor (vendor_id, contact_no) values (5088, '531-262-6398');
insert into vendor (vendor_id, contact_no) values (5089, '321-385-5319');
insert into vendor (vendor_id, contact_no) values (5090, '592-778-3803');
insert into vendor (vendor_id, contact_no) values (5091, '780-354-8738');
insert into vendor (vendor_id, contact_no) values (5092, '682-153-4075');
insert into vendor (vendor_id, contact_no) values (5093, '840-137-7439');
insert into vendor (vendor_id, contact_no) values (5094, '225-818-3940');
insert into vendor (vendor_id, contact_no) values (5095, '144-763-5130');
insert into vendor (vendor_id, contact_no) values (5096, '260-473-0110');
insert into vendor (vendor_id, contact_no) values (5097, '693-191-4899');
insert into vendor (vendor_id, contact_no) values (5098, '376-343-3865');
insert into vendor (vendor_id, contact_no) values (5099, '606-705-1830');
insert into vendor (vendor_id, contact_no) values (5100, '805-481-5044');


DROP TABLE IF EXISTS author;
create table author (
	author_id INT not null,
	author_name VARCHAR(50),
	author_subject VARCHAR(24),
    PRIMARY KEY (author_id)
);

insert into author (author_id, author_name, author_subject) values (1001, 'Maxim Taleworth', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1002, 'Verine Aldrick', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1003, 'Dari Samarth', 'children’s');
insert into author (author_id, author_name, author_subject) values (1004, 'Cal Swatten', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1005, 'Earle Abbot', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1006, 'Connie Redmond', 'motivational');
insert into author (author_id, author_name, author_subject) values (1007, 'Jerrie Dargan', 'adventure');
insert into author (author_id, author_name, author_subject) values (1008, 'Parrnell Wadesworth', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1009, 'Harrie Smalls', 'humor');
insert into author (author_id, author_name, author_subject) values (1010, 'Flinn Fantin', 'historical fiction');
insert into author (author_id, author_name, author_subject) values (1011, 'Bonni Torrance', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1012, 'Boonie Antoszewski', 'self-help');
insert into author (author_id, author_name, author_subject) values (1013, 'Scott Cleminshaw', 'mystery');
insert into author (author_id, author_name, author_subject) values (1014, 'Chance Rubega', 'thriller');
insert into author (author_id, author_name, author_subject) values (1015, 'Jodi Barbosa', 'travel');
insert into author (author_id, author_name, author_subject) values (1016, 'Caron Maty', 'humor');
insert into author (author_id, author_name, author_subject) values (1017, 'Calida Coytes', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1018, 'Eve Howson', 'horror');
insert into author (author_id, author_name, author_subject) values (1019, 'Megen Stickles', 'self-help');
insert into author (author_id, author_name, author_subject) values (1020, 'Martainn Lelande', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1021, 'Jose Challace', 'history');
insert into author (author_id, author_name, author_subject) values (1022, 'Kerstin Blencowe', 'travel');
insert into author (author_id, author_name, author_subject) values (1023, 'Braden OGeneay', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1024, 'Colby Pescod', 'romance');
insert into author (author_id, author_name, author_subject) values (1025, 'Frances MacCartney', 'art');
insert into author (author_id, author_name, author_subject) values (1026, 'Herve Toma', 'contemporary');
insert into author (author_id, author_name, author_subject) values (1027, 'Garrot Benedite', 'travel');
insert into author (author_id, author_name, author_subject) values (1028, 'Marji Clyburn', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1029, 'Thorn Pagnin', 'historical fiction');
insert into author (author_id, author_name, author_subject) values (1030, 'Muffin McAndie', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1031, 'Winny Schroder', 'self-help');
insert into author (author_id, author_name, author_subject) values (1032, 'Jamill Davidof', 'romance');
insert into author (author_id, author_name, author_subject) values (1033, 'Savina Osichev', 'travel');
insert into author (author_id, author_name, author_subject) values (1034, 'Patten Alliston', 'history');
insert into author (author_id, author_name, author_subject) values (1035, 'Genia Tucknott', 'horror');
insert into author (author_id, author_name, author_subject) values (1036, 'Kristen Tacey', 'adventure');
insert into author (author_id, author_name, author_subject) values (1037, 'Riley Scrivenor', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1038, 'Benjamin Chopy', 'health');
insert into author (author_id, author_name, author_subject) values (1039, 'Verna Oleszkiewicz', 'travel');
insert into author (author_id, author_name, author_subject) values (1040, 'Stella Chisholme', 'romance');
insert into author (author_id, author_name, author_subject) values (1041, 'Celinda Agirre', 'romance');
insert into author (author_id, author_name, author_subject) values (1042, 'Ennis Daunay', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1043, 'Eleanora Blockey', 'historical fiction');
insert into author (author_id, author_name, author_subject) values (1044, 'Helga Minker', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1045, 'Rozele Stott', 'adventure');
insert into author (author_id, author_name, author_subject) values (1046, 'Tallie Horsburgh', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1047, 'Rollin Matschke', 'adventure');
insert into author (author_id, author_name, author_subject) values (1048, 'Arly Cookes', 'horror');
insert into author (author_id, author_name, author_subject) values (1049, 'Farrell Scoggins', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1050, 'Bevon Govan', 'mystery');
insert into author (author_id, author_name, author_subject) values (1051, 'Stormi Roussell', 'travel');
insert into author (author_id, author_name, author_subject) values (1052, 'Jocelyn Breese', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1053, 'Bucky Gregolotti', 'development');
insert into author (author_id, author_name, author_subject) values (1054, 'Penrod Costell', 'contemporary');
insert into author (author_id, author_name, author_subject) values (1055, 'Guenna Clifton', 'motivational');
insert into author (author_id, author_name, author_subject) values (1056, 'Arabel Delouch', 'self-help');
insert into author (author_id, author_name, author_subject) values (1057, 'Sophia Boulsher', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1058, 'Waneta Schechter', 'children’s');
insert into author (author_id, author_name, author_subject) values (1059, 'Price Scheffler', 'travel');
insert into author (author_id, author_name, author_subject) values (1060, 'Tobiah Grumell', 'motivational');
insert into author (author_id, author_name, author_subject) values (1061, 'Wildon Rens', 'motivational');
insert into author (author_id, author_name, author_subject) values (1062, 'Lanette ODyvoy', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1063, 'Moria Dowderswell', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1064, 'Wait Deniskevich', 'memoir');
insert into author (author_id, author_name, author_subject) values (1065, 'Kalina Baszkiewicz', 'romance');
insert into author (author_id, author_name, author_subject) values (1066, 'Dulcea Hearn', 'art');
insert into author (author_id, author_name, author_subject) values (1067, 'Joellyn Proffer', 'adventure');
insert into author (author_id, author_name, author_subject) values (1068, 'Reynolds Maber', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1069, 'Nealson Vauter', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1070, 'Fidela Groven', 'romance');
insert into author (author_id, author_name, author_subject) values (1071, 'Caryl Grimwood', 'contemporary');
insert into author (author_id, author_name, author_subject) values (1072, 'Kinnie Driscoll', 'health');
insert into author (author_id, author_name, author_subject) values (1073, 'Shell Colter', 'self-help');
insert into author (author_id, author_name, author_subject) values (1074, 'Charmaine Gercken', 'history');
insert into author (author_id, author_name, author_subject) values (1075, 'Ardith Alfonso', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1076, 'Ches Kellington', 'history');
insert into author (author_id, author_name, author_subject) values (1077, 'Oran Vearnals', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1078, 'Torey Prestidge', 'development');
insert into author (author_id, author_name, author_subject) values (1079, 'Gertie Mulhill', 'health');
insert into author (author_id, author_name, author_subject) values (1080, 'Elwira Todhunter', 'history');
insert into author (author_id, author_name, author_subject) values (1081, 'Ethyl Ledner', 'adventure');
insert into author (author_id, author_name, author_subject) values (1082, 'Shermy Celez', 'humor');
insert into author (author_id, author_name, author_subject) values (1083, 'Corby Marsland', 'health');
insert into author (author_id, author_name, author_subject) values (1084, 'Jilly Lawty', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1085, 'Sibilla Chaldecott', 'history');
insert into author (author_id, author_name, author_subject) values (1086, 'Bayard Benedite', 'adventure');
insert into author (author_id, author_name, author_subject) values (1087, 'Jules Harfleet', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1088, 'Carmela Bergin', 'adventure');
insert into author (author_id, author_name, author_subject) values (1089, 'Pat Dyka', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1090, 'Karna Wingate', 'development');
insert into author (author_id, author_name, author_subject) values (1091, 'Ashlen Whelpdale', 'children’s');
insert into author (author_id, author_name, author_subject) values (1092, 'Kerstin Cornborough', 'art');
insert into author (author_id, author_name, author_subject) values (1093, 'Sid Mowday', 'travel');
insert into author (author_id, author_name, author_subject) values (1094, 'Isadore Northey', 'mystery');
insert into author (author_id, author_name, author_subject) values (1095, 'Wylie Brabant', 'historical fiction');
insert into author (author_id, author_name, author_subject) values (1096, 'Nappie Rhodus', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1097, 'Nehemiah Edgeon', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1098, 'Marquita Guidotti', 'travel');
insert into author (author_id, author_name, author_subject) values (1099, 'Giacomo Gregore', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1100, 'Kipp Portch', 'history');
insert into author (author_id, author_name, author_subject) values (1101, 'Nickola Venable', 'adventure');
insert into author (author_id, author_name, author_subject) values (1102, 'Mozes Glisenan', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1103, 'Raymund Lanegran', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1104, 'Trude Wurz', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1105, 'Cassandre Degli Abbati', 'mystery');
insert into author (author_id, author_name, author_subject) values (1106, 'Corbett Quest', 'children’s');
insert into author (author_id, author_name, author_subject) values (1107, 'Anderson Abazi', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1108, 'Tootsie Browncey', 'horror');
insert into author (author_id, author_name, author_subject) values (1109, 'Rodger Willson', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1110, 'Pandora Demanche', 'art');
insert into author (author_id, author_name, author_subject) values (1111, 'Mallorie Benazet', 'health');
insert into author (author_id, author_name, author_subject) values (1112, 'Sheff Springtorpe', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1113, 'Aimil Sleigh', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1114, 'Marrissa Colville', 'motivational');
insert into author (author_id, author_name, author_subject) values (1115, 'Fallon Enos', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1116, 'Alphard Pappin', 'motivational');
insert into author (author_id, author_name, author_subject) values (1117, 'Dolores Rosini', 'contemporary');
insert into author (author_id, author_name, author_subject) values (1118, 'Ingmar Poston', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1119, 'Celisse Snook', 'thriller');
insert into author (author_id, author_name, author_subject) values (1120, 'Dory Trenbay', 'humor');
insert into author (author_id, author_name, author_subject) values (1121, 'Kim Bellham', 'mystery');
insert into author (author_id, author_name, author_subject) values (1122, 'Isabelle Couche', 'self-help');
insert into author (author_id, author_name, author_subject) values (1123, 'Colin Cordall', 'motivational');
insert into author (author_id, author_name, author_subject) values (1124, 'Cleopatra Murrhaupt', 'motivational');
insert into author (author_id, author_name, author_subject) values (1125, 'Vail Blankman', 'health');
insert into author (author_id, author_name, author_subject) values (1126, 'Herbert Branche', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1127, 'Catharina Adrien', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1128, 'Dukie Epton', 'development');
insert into author (author_id, author_name, author_subject) values (1129, 'Vernor Rastall', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1130, 'Lawton Pollard', 'travel');
insert into author (author_id, author_name, author_subject) values (1131, 'Cynthea Beaten', 'adventure');
insert into author (author_id, author_name, author_subject) values (1132, 'Rabi Tattersdill', 'humor');
insert into author (author_id, author_name, author_subject) values (1133, 'Donella Tellenbroker', 'memoir');
insert into author (author_id, author_name, author_subject) values (1134, 'Farlay Graser', 'art');
insert into author (author_id, author_name, author_subject) values (1135, 'Rhianna Blowfield', 'art');
insert into author (author_id, author_name, author_subject) values (1136, 'Estella Shoard', 'romance');
insert into author (author_id, author_name, author_subject) values (1137, 'Deana Hellwing', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1138, 'Charlean Barnhill', 'development');
insert into author (author_id, author_name, author_subject) values (1139, 'Gratiana Anney', 'health');
insert into author (author_id, author_name, author_subject) values (1140, 'Blaire Sampson', 'adventure');
insert into author (author_id, author_name, author_subject) values (1141, 'Hyacinth Minichi', 'romance');
insert into author (author_id, author_name, author_subject) values (1142, 'Lu Brownsey', 'historical fiction');
insert into author (author_id, author_name, author_subject) values (1143, 'Munmro Churchley', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1144, 'Selma Shellard', 'travel');
insert into author (author_id, author_name, author_subject) values (1145, 'Alex Paraman', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1146, 'Keelby DAgostini', 'development');
insert into author (author_id, author_name, author_subject) values (1147, 'Cam Gaggen', 'memoir');
insert into author (author_id, author_name, author_subject) values (1148, 'Mallorie Neillans', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1149, 'Quintin Tomblett', 'development');
insert into author (author_id, author_name, author_subject) values (1150, 'Michele Sturmey', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1151, 'Branden Scollick', 'children’s');
insert into author (author_id, author_name, author_subject) values (1152, 'Emanuel Francescotti', 'humor');
insert into author (author_id, author_name, author_subject) values (1153, 'Annabel Jakolevitch', 'mystery');
insert into author (author_id, author_name, author_subject) values (1154, 'Dorita McCritchie', 'adventure');
insert into author (author_id, author_name, author_subject) values (1155, 'Iorgos Birtchnell', 'mystery');
insert into author (author_id, author_name, author_subject) values (1156, 'Cobb Judd', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1157, 'Rebe Kemshell', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1158, 'Lynea Ivamy', 'health');
insert into author (author_id, author_name, author_subject) values (1159, 'Deina Blofeld', 'adventure');
insert into author (author_id, author_name, author_subject) values (1160, 'Royal Dreier', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1161, 'Hallie Sellers', 'children’s');
insert into author (author_id, author_name, author_subject) values (1162, 'Tiler Iacabucci', 'travel');
insert into author (author_id, author_name, author_subject) values (1163, 'Sayre McGlaud', 'cookbook');
insert into author (author_id, author_name, author_subject) values (1164, 'Candace Muckersie', 'dystopian');
insert into author (author_id, author_name, author_subject) values (1165, 'Glyn Raywood', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1166, 'Demetre Rafter', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1167, 'Alexis Jurgenson', 'history');
insert into author (author_id, author_name, author_subject) values (1168, 'Raphaela Dell Casa', 'romance');
insert into author (author_id, author_name, author_subject) values (1169, 'Tabbitha Walsh', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1170, 'Salome Lorriman', 'guide / how-to');
insert into author (author_id, author_name, author_subject) values (1171, 'Alexi Twycross', 'memoir');
insert into author (author_id, author_name, author_subject) values (1172, 'Kathleen Couves', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1173, 'Val Babst', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1174, 'Kincaid Pervoe', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1175, 'Katrinka Querree', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1176, 'Arlen Cream', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1177, 'Karena Hebbard', 'mystery');
insert into author (author_id, author_name, author_subject) values (1178, 'Orelie Stritton', 'self-help');
insert into author (author_id, author_name, author_subject) values (1179, 'Jeffy Fielders', 'mystery');
insert into author (author_id, author_name, author_subject) values (1180, 'Blondie Pietzker', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1181, 'Glyn Emeny', 'motivational');
insert into author (author_id, author_name, author_subject) values (1182, 'Dionisio Ruff', 'horror');
insert into author (author_id, author_name, author_subject) values (1183, 'Stafford Forgan', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1184, 'Arly Gariff', 'history');
insert into author (author_id, author_name, author_subject) values (1185, 'Aldin Brandt', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1186, 'Robers Bernardelli', 'paranormal');
insert into author (author_id, author_name, author_subject) values (1187, 'Barron McAndrew', 'horror');
insert into author (author_id, author_name, author_subject) values (1188, 'Barron Earengey', 'adventure');
insert into author (author_id, author_name, author_subject) values (1189, 'Alaster Crecy', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1190, 'Starlene Treagus', 'science fiction');
insert into author (author_id, author_name, author_subject) values (1191, 'Saba Simnel', 'fantasy');
insert into author (author_id, author_name, author_subject) values (1192, 'Wilton Broderick', 'romance');
insert into author (author_id, author_name, author_subject) values (1193, 'Jennie Jaumet', 'adventure');
insert into author (author_id, author_name, author_subject) values (1194, 'Amory Templman', 'families & relationships');
insert into author (author_id, author_name, author_subject) values (1195, 'Deloris Berrane', 'thriller');
insert into author (author_id, author_name, author_subject) values (1196, 'Ignaz Spere', 'humor');
insert into author (author_id, author_name, author_subject) values (1197, 'Kendell Charrier', 'motivational');
insert into author (author_id, author_name, author_subject) values (1198, 'Halsey Aucott', 'romance');
insert into author (author_id, author_name, author_subject) values (1199, 'Kayne Degenhardt', 'children’s');
insert into author (author_id, author_name, author_subject) values (1200, 'Winnie Sloss', 'art');

DROP TABLE IF EXISTS publisher;
create table publisher (
	publisher_id INT not null,
	publisher_name VARCHAR(50),
	publisher_country VARCHAR(50),
    PRIMARY KEY (publisher_id)
);



insert into publisher (publisher_id, publisher_name, publisher_country) values (10001, 'Schultz-Kassulke', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10002, 'Mertz Group', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10003, 'Ward-Green', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10004, 'McGlynn, Kub and Becker', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10005, 'Williamson LLC', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10006, 'Kling and Sons', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10007, 'Monahan LLC', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10008, 'Jakubowski-Kohler', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10009, 'Wolf Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10010, 'Dare-Runolfsdottir', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10011, 'Olson-Thompson', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10012, 'Wintheiser LLC', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10013, 'Willms Inc', 'Comoros');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10014, 'Hoppe LLC', 'Iran');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10015, 'Boyle-DuBuque', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10016, 'Durgan, Hauck and Pollich', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10017, 'Will, Brown and Abernathy', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10018, 'Gleichner, Nikolaus and Spinka', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10019, 'Rolfson and Sons', 'Czech Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10020, 'Reichert and Sons', 'Kuwait');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10021, 'Becker Group', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10022, 'Auer-Stamm', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10023, 'Jakubowski, Mills and Bednar', 'Palestinian Territory');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10024, 'Franecki Inc', 'Peru');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10025, 'Ruecker-Upton', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10026, 'Brakus, Bauch and Bednar', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10027, 'Leannon-Blick', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10028, 'Homenick-Gerhold', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10029, 'Berge Group', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10030, 'Runolfsson, Gorczany and Cronin', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10031, 'McGlynn-Stiedemann', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10032, 'Gerhold-Smith', 'Macedonia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10033, 'Weber and Sons', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10034, 'Kihn LLC', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10035, 'Dickens-Kautzer', 'Argentina');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10036, 'Paucek Inc', 'Jamaica');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10037, 'Kemmer LLC', 'Czech Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10038, 'Daugherty, Bernhard and Zulauf', 'Thailand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10039, 'Hartmann LLC', 'Kazakhstan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10040, 'Hessel-Hamill', 'Tunisia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10041, 'Koelpin-Doyle', 'Uzbekistan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10042, 'Johnston-Kunze', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10043, 'Maggio, Wehner and Hickle', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10044, 'Kihn-Maggio', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10045, 'Boehm, Barton and Witting', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10046, 'Boyle-Bayer', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10047, 'Walsh, Beahan and Turcotte', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10048, 'Ryan-Hamill', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10049, 'Bernier-Welch', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10050, 'Stoltenberg and Sons', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10051, 'Borer, Beer and Johnston', 'Venezuela');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10052, 'Buckridge LLC', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10053, 'Bogan, Herman and Pfeffer', 'Saint Pierre and Miquelon');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10054, 'Windler-Rice', 'Spain');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10055, 'Crona-Goyette', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10056, 'Sawayn Inc', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10057, 'Kub Inc', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10058, 'Rice LLC', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10059, 'Moen, Johns and Hegmann', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10060, 'Mertz, Bartoletti and Brakus', 'Iran');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10061, 'Koss LLC', 'Guadeloupe');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10062, 'Smith, Lehner and Hand', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10063, 'Treutel LLC', 'Luxembourg');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10064, 'Davis Inc', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10065, 'Gottlieb Inc', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10066, 'Hettinger, Armstrong and Grady', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10067, 'Carroll-Rohan', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10068, 'Gleason LLC', 'Armenia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10069, 'OKeefe-Renner', 'Armenia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10070, 'Senger Group', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10071, 'Larson-Corkery', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10072, 'Considine-Turcotte', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10073, 'Wilkinson-Bins', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10074, 'Predovic-Satterfield', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10075, 'Herzog-Mitchell', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10076, 'Feil, Shanahan and Predovic', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10077, 'McLaughlin LLC', 'Vietnam');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10078, 'Konopelski, Bogisich and Farrell', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10079, 'Bins-Goodwin', 'Dominican Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10080, 'Bins Group', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10081, 'Kuhic LLC', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10082, 'OConner-Okuneva', 'Nepal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10083, 'Heathcote, Hilll and Legros', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10084, 'Gusikowski LLC', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10085, 'Osinski and Sons', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10086, 'Collins-Simonis', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10087, 'Hodkiewicz-Erdman', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10088, 'Ullrich LLC', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10089, 'Kuvalis-Bartell', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10090, 'Jast LLC', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10091, 'Herman, McLaughlin and Balistreri', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10092, 'Cremin-Heathcote', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10093, 'Stracke LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10094, 'Schimmel-Haag', 'New Zealand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10095, 'Gislason LLC', 'Peru');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10096, 'Hand, Haag and Paucek', 'Argentina');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10097, 'Glover-Collins', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10098, 'Schuppe-Weimann', 'Czech Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10099, 'Harris, Cremin and Hartmann', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10100, 'Paucek, Dicki and Schulist', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10101, 'Emard-Miller', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10102, 'Swift, Bogisich and Ziemann', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10103, 'Jaskolski LLC', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10104, 'Emmerich-Nikolaus', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10105, 'Lesch, Green and Purdy', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10106, 'Walker-Ankunding', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10107, 'Murazik LLC', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10108, 'Sawayn LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10109, 'Bartoletti and Sons', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10110, 'Bartell-Borer', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10111, 'Bode, Kohler and Hessel', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10112, 'Mraz Group', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10113, 'Dooley, Hand and Kuhn', 'Venezuela');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10114, 'Klein, Steuber and Schmeler', 'Zambia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10115, 'Bogan, Grady and Mann', 'Cuba');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10116, 'Shields, Doyle and Balistreri', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10117, 'Labadie-Gibson', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10118, 'Muller-Homenick', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10119, 'Wilkinson, Luettgen and Welch', 'Panama');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10120, 'Schowalter, Brakus and Shanahan', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10121, 'Dach-Bartoletti', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10122, 'Bergstrom-Dare', 'Pakistan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10123, 'Kautzer and Sons', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10124, 'Muller Inc', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10125, 'Waters, Ullrich and Schinner', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10126, 'Kiehn and Sons', 'Malawi');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10127, 'Gutmann-Connelly', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10128, 'Aufderhar Inc', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10129, 'Padberg, Dickens and Boyer', 'Israel');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10130, 'Luettgen and Sons', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10131, 'Marvin-Shields', 'North Korea');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10132, 'Hartmann, Powlowski and Lesch', 'Honduras');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10133, 'Weimann, Lakin and Aufderhar', 'Ivory Coast');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10134, 'Kunze, Blanda and Hane', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10135, 'Corwin Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10136, 'Frami Group', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10137, 'McLaughlin, Blick and Sipes', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10138, 'Doyle-Ratke', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10139, 'Witting, Friesen and Corkery', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10140, 'Ziemann LLC', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10141, 'Aufderhar LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10142, 'Emmerich Inc', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10143, 'Hane, Mayert and Ferry', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10144, 'Beer-Kris', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10145, 'Sawayn, Runte and Boyle', 'Thailand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10146, 'OConnell Inc', 'Moldova');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10147, 'Conn and Sons', 'Serbia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10148, 'Hauck, Berge and Streich', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10149, 'McCullough, Daugherty and Mills', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10150, 'Howe-Mante', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10151, 'Rutherford LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10152, 'Greenholt-Reichel', 'Armenia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10153, 'Wiza, Schumm and Marks', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10154, 'Bailey Inc', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10155, 'Ernser Group', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10156, 'Turcotte-Brakus', 'Zambia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10157, 'Langosh and Sons', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10158, 'McClure LLC', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10159, 'Welch LLC', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10160, 'Schultz Inc', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10161, 'Lynch, Beahan and Connelly', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10162, 'Schumm and Sons', 'Thailand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10163, 'Bruen Group', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10164, 'Kshlerin-Ernser', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10165, 'Veum-Mueller', 'Malaysia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10166, 'Moore Group', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10167, 'Quigley Inc', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10168, 'Lueilwitz, Bogan and Vandervort', 'Namibia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10169, 'DuBuque Group', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10170, 'Erdman-Boyer', 'Albania');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10171, 'Harber, Hane and Graham', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10172, 'Lesch Inc', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10173, 'Ritchie and Sons', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10174, 'Fisher, Schiller and Mraz', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10175, 'Jacobi, Walker and Ondricka', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10176, 'Roberts-Langosh', 'South Africa');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10177, 'Hessel-Heathcote', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10178, 'Jast-OConnell', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10179, 'Schmeler, Luettgen and Labadie', 'Bangladesh');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10180, 'Mitchell-OConner', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10181, 'Parker Inc', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10182, 'Paucek LLC', 'Tunisia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10183, 'Hodkiewicz-OReilly', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10184, 'Brakus Inc', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10185, 'Hoppe-Ernser', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10186, 'Reichert Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10187, 'Quitzon, Jones and Hoppe', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10188, 'Ernser, Price and Fahey', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10189, 'Maggio LLC', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10190, 'Hagenes and Sons', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10191, 'Reichel-Leffler', 'Tanzania');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10192, 'Grant-Frami', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10193, 'Krajcik-Lebsack', 'Tanzania');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10194, 'Mertz Inc', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10195, 'Farrell Inc', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10196, 'Fisher-Hudson', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10197, 'Kemmer Inc', 'Thailand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10198, 'Ernser, Flatley and Halvorson', 'Kyrgyzstan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10199, 'Batz LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10200, 'Ward-Runolfsdottir', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10201, 'Gerhold-Ritchie', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10202, 'Schaefer and Sons', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10203, 'Mueller and Sons', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10204, 'Ratke LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10205, 'Block Inc', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10206, 'Schowalter-Wisozk', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10207, 'Hartmann and Sons', 'Zimbabwe');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10208, 'Stiedemann and Sons', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10209, 'Wilkinson and Sons', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10210, 'OKon and Sons', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10211, 'Franecki Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10212, 'Pagac, Hirthe and Herzog', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10213, 'Hansen, Roberts and Pouros', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10214, 'Schamberger, Hartmann and Satterfield', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10215, 'Jacobi-Hoeger', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10216, 'McGlynn Inc', 'Norway');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10217, 'Hodkiewicz-Hilpert', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10218, 'McCullough, Schultz and Jast', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10219, 'Wisozk Inc', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10220, 'Ritchie, Schinner and Kuphal', 'Iran');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10221, 'McKenzie, Mayert and Ritchie', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10222, 'Leannon and Sons', 'Cameroon');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10223, 'Lehner-Rolfson', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10224, 'Hermiston LLC', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10225, 'OKeefe, Schaefer and Howell', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10226, 'Boyle Group', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10227, 'Wilkinson and Sons', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10228, 'OConner-Konopelski', 'Sri Lanka');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10229, 'Goodwin-Oberbrunner', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10230, 'Haley-Rice', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10231, 'Harris Group', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10232, 'Rosenbaum, Glover and Donnelly', 'Mongolia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10233, 'Upton-Herzog', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10234, 'Dickinson, Considine and Pollich', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10235, 'Lemke, Parisian and Lesch', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10236, 'Erdman, Moore and Hirthe', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10237, 'Pouros Inc', 'Albania');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10238, 'Macejkovic, Bernhard and Grant', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10239, 'Kunde and Sons', 'Peru');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10240, 'Weimann, Kuhlman and Haag', 'Netherlands');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10241, 'Franecki, Welch and Waters', 'Malaysia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10242, 'Senger-Nikolaus', 'Bangladesh');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10243, 'Langosh and Sons', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10244, 'Oberbrunner Inc', 'Paraguay');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10245, 'Howe Inc', 'Luxembourg');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10246, 'Schmidt-Dicki', 'Montserrat');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10247, 'Koss and Sons', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10248, 'Kovacek Group', 'Macedonia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10249, 'Runolfsson, Kuhn and Runte', 'South Korea');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10250, 'King, Trantow and Brown', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10251, 'Kuphal Group', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10252, 'Upton-Stiedemann', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10253, 'Schulist-Jast', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10254, 'Parisian, Goodwin and Blick', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10255, 'OConnell Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10256, 'Nolan, Ritchie and Trantow', 'Somalia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10257, 'Boyle, Crona and Sporer', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10258, 'Ryan LLC', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10259, 'Spinka, Medhurst and Ritchie', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10260, 'Hermann, Barrows and Wiza', 'Syria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10261, 'Labadie Group', 'Iceland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10262, 'Goodwin LLC', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10263, 'Kris-Hartmann', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10264, 'Bernier-Kub', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10265, 'Herman, Wiegand and Goyette', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10266, 'Streich-Reilly', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10267, 'MacGyver, Cormier and Labadie', 'South Africa');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10268, 'Lang-Stiedemann', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10269, 'Wunsch-Lynch', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10270, 'OReilly-Mohr', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10271, 'Mayer, Green and Stiedemann', 'Hungary');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10272, 'Powlowski Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10273, 'Raynor Inc', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10274, 'Ratke-Zieme', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10275, 'Bins and Sons', 'Argentina');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10276, 'Ferry LLC', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10277, 'Rutherford, Stiedemann and Schuster', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10278, 'Feeney, Mills and Koelpin', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10279, 'Lemke, Fahey and Spencer', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10280, 'Simonis Inc', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10281, 'Murazik, Baumbach and Marks', 'Mongolia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10282, 'Lind-Fritsch', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10283, 'Conn-Fadel', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10284, 'Schmeler, Kerluke and Baumbach', 'Netherlands');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10285, 'Spinka, Reilly and Graham', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10286, 'Prosacco, Donnelly and Ryan', 'Kyrgyzstan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10287, 'Prosacco Group', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10288, 'Jacobson, Greenfelder and Rowe', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10289, 'Collier, Glover and Connelly', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10290, 'Connelly and Sons', 'Cyprus');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10291, 'Koelpin Inc', 'Pakistan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10292, 'Wolff Group', 'Kenya');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10293, 'Price, Kessler and Balistreri', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10294, 'Beahan-Hammes', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10295, 'McGlynn Inc', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10296, 'Quigley, Hessel and Bahringer', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10297, 'Graham, Ward and Ruecker', 'Estonia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10298, 'Flatley, Casper and Lind', 'Norway');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10299, 'Bernhard, Gutmann and Boyer', 'Saint Barthelemy');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10300, 'Swift Inc', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10301, 'Hyatt, Gleason and Douglas', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10302, 'Shanahan and Sons', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10303, 'Wintheiser-Prosacco', 'Greece');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10304, 'Lockman LLC', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10305, 'Green-Becker', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10306, 'Jakubowski, Barton and Zieme', 'Portugal');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10307, 'Effertz Group', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10308, 'Dicki-Wunsch', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10309, 'Quitzon-Renner', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10310, 'Farrell-Gaylord', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10311, 'Erdman LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10312, 'Bayer LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10313, 'Erdman-Jerde', 'Georgia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10314, 'Bashirian and Sons', 'Falkland Islands');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10315, 'Spinka-Daniel', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10316, 'Rohan-Mertz', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10317, 'Halvorson LLC', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10318, 'Mante, Anderson and Hills', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10319, 'OReilly, Pouros and Leannon', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10320, 'Beer LLC', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10321, 'Schinner, Farrell and Feest', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10322, 'Jast, Kirlin and West', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10323, 'Becker Group', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10324, 'Hackett-Ankunding', 'Sierra Leone');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10325, 'Daniel-Wyman', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10326, 'Hegmann, Dickens and Hagenes', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10327, 'Ziemann-Hodkiewicz', 'United States');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10328, 'Ondricka, Flatley and Kihn', 'Canada');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10329, 'Goodwin Group', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10330, 'Bode-Abshire', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10331, 'Schaden Group', 'Bosnia and Herzegovina');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10332, 'Pollich-Lesch', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10333, 'Reynolds Group', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10334, 'Powlowski, Harvey and Zemlak', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10335, 'Stanton, Pouros and Roob', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10336, 'Wintheiser LLC', 'Thailand');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10337, 'Gaylord, Jaskolski and McCullough', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10338, 'Ledner, Jacobi and Will', 'Peru');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10339, 'Feeney-Medhurst', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10340, 'Schoen LLC', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10341, 'Dooley-Feest', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10342, 'Abernathy, Buckridge and Gulgowski', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10343, 'Bogisich-McLaughlin', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10344, 'Jacobson Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10345, 'Bayer, Conn and Brakus', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10346, 'Bednar and Sons', 'Guinea-Bissau');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10347, 'Bednar, Kozey and Kutch', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10348, 'Jast Group', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10349, 'Green Inc', 'Ivory Coast');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10350, 'Dach-Welch', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10351, 'McClure, Labadie and OKeefe', 'Albania');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10352, 'Shields, Dach and Gorczany', 'Ecuador');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10353, 'Green, OKon and Kulas', 'Nigeria');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10354, 'Douglas, Dibbert and Frami', 'Honduras');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10355, 'Halvorson-Schoen', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10356, 'Schaden-Ledner', 'Ukraine');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10357, 'Ledner-Homenick', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10358, 'Corwin LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10359, 'Rippin-Marquardt', 'Japan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10360, 'Toy-Batz', 'Afghanistan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10361, 'Prohaska and Sons', 'Sweden');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10362, 'Kutch-Price', 'Colombia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10363, 'Hamill LLC', 'South Africa');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10364, 'Abernathy-Rutherford', 'Poland');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10365, 'Wuckert, Block and Padberg', 'Vietnam');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10366, 'Satterfield Group', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10367, 'Hane-Schultz', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10368, 'OHara-Hand', 'Czech Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10369, 'Reinger-Senger', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10370, 'Bednar, Connelly and Smitham', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10371, 'Lockman Group', 'Cuba');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10372, 'Crooks-Casper', 'Argentina');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10373, 'Harber, Rice and Grady', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10374, 'Koss Inc', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10375, 'Deckow-Medhurst', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10376, 'Tremblay, Bergnaum and Kautzer', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10377, 'Dickens-Wilkinson', 'Saudi Arabia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10378, 'Cummerata LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10379, 'Reichel, Kirlin and Kutch', 'Mexico');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10380, 'Grady and Sons', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10381, 'Wiza, Pollich and Lowe', 'France');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10382, 'Harber, Hickle and Kiehn', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10383, 'Daniel-Bauch', 'Peru');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10384, 'Gerhold-Sipes', 'Israel');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10385, 'Gerhold, Lockman and Mitchell', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10386, 'Johnston, Champlin and Halvorson', 'Azerbaijan');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10387, 'Murphy-Waters', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10388, 'Collier, Turcotte and Labadie', 'South Africa');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10389, 'Leuschke LLC', 'Czech Republic');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10390, 'Leffler-Walter', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10391, 'Gibson LLC', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10392, 'Harris, Rempel and Quigley', 'Indonesia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10393, 'McCullough Group', 'Philippines');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10394, 'Quigley LLC', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10395, 'Little, Turner and Schmeler', 'Brazil');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10396, 'Wyman, Huels and Hintz', 'China');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10397, 'Koelpin-Hudson', 'Russia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10398, 'Corwin-Watsica', 'Serbia');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10399, 'OConnell and Sons', 'Sierra Leone');
insert into publisher (publisher_id, publisher_name, publisher_country) values (10400, 'Hickle, Swift and Parisian', 'Portugal');


DROP TABLE IF EXISTS member;
create table member (
	member_id INT not null,
	name VARCHAR(50),
    registration_date Date,
	contact_no VARCHAR(50),
	address VARCHAR(50),
	birthday DATE,
    member_type VARCHAR(9),
    PRIMARY KEY (member_id)
);


INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100001,'Sacha Dilke','2022-09-06','247-706-8773','83931 Rockefeller Point','1970-04-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100002,'Hamel Ebertz','2022-03-02','913-515-8206','76 Bowman Pass','1970-03-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100003,'Gonzales Dybell','2022-03-15','579-569-6134','19482 Mayfield Crossing','1984-08-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100004,'Penny Dyton','2022-08-26','834-306-3353','880 Prairieview Street','1992-06-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100005,'Cornelle Pape','2022-01-29','464-395-5921','12 Parkside Hill','1978-11-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100006,'Moses Walster','2022-04-29','754-327-8175','72084 Prairie Rose Terrace','1955-12-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100007,'Gaven Ivanishin','2022-10-12','291-607-9422','923 Cardinal Center','1985-08-19','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100008,'Homere Cram','2022-01-30','749-695-2231','7 Warner Road','1979-09-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100009,'Kane Syme','2022-02-05','777-709-7296','10900 Stoughton Trail','1954-02-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100010,'Alyss Beltzner','2022-09-01','497-994-5864','9419 Arapahoe Terrace','1978-03-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100011,'Stanton McCarlich','2022-05-08','832-600-7069','0 Stuart Center','1956-08-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100012,'Charla Corran','2022-11-09','804-911-6071','16409 Macpherson Road','1957-06-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100013,'Wyndham Curtiss','2022-10-16','178-840-7860','60808 Maple Circle','1970-07-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100014,'Sherm De Wolfe','2022-07-09','964-385-6491','94 Pierstorff Way','1970-05-31','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100015,'Jemmie Williment','2022-08-24','734-951-7393','220 Riverside Circle','1992-02-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100016,'Lynnea Fennessy','2022-02-17','409-405-5976','717 Truax Alley','1985-04-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100017,'Catina Klulicek','2022-10-17','111-614-8475','0 Hanson Park','1954-04-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100018,'Christine Highwood','2022-08-20','194-450-1157','8215 Caliangt Circle','1993-07-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100019,'Morton Stopford','2022-01-31','157-235-1263','5232 Melrose Street','1982-01-14','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100020,'Jewel Van Der Weedenburg','2022-06-22','149-933-6078','579 Bultman Trail','1954-04-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100021,'Don Hemphall','2022-01-20','100-591-4089','507 Morning Terrace','1974-03-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100022,'Roxie Wrangle','2022-12-03','515-275-9697','069 Drewry Circle','1983-12-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100023,'Kimmie Loughlan','2022-10-01','510-254-4992','98 Kipling Pass','1997-05-24','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100024,'Kiel Dispencer','2022-08-15','922-748-5837','47874 Southridge Way','1974-05-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100025,'Tammy Le Strange','2022-04-10','828-667-0909','38730 Farragut Drive','1962-09-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100026,'Sigrid Eden','2022-08-02','358-539-5995','9388 Petterle Drive','1978-05-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100027,'Caron Bracci','2022-06-19','750-852-4161','1 Banding Terrace','1981-08-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100028,'Mitchel Maultby','2022-02-11','892-307-4185','3657 Kings Plaza','1976-05-05','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100029,'Carney Betteson','2022-06-08','216-447-4236','981 Canary Place','1954-07-30','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100030,'Ardis Moreside','2022-02-10','264-113-6757','594 Eggendart Parkway','1998-01-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100031,'Arnuad Gerrish','2022-10-24','533-856-1013','73214 Judy Crossing','1977-01-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100032,'Ugo Shillom','2022-01-29','956-677-4167','38928 Marquette Pass','1970-01-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100033,'Neille McTavish','2022-08-26','847-721-8890','750 Mccormick Plaza','1985-08-25','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100034,'Paolina Honeywood','2022-03-06','471-493-8101','0949 Arapahoe Street','1951-11-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100035,'Klarrisa Coonihan','2022-11-28','114-349-4430','854 Michigan Plaza','1979-11-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100036,'Frayda Oldis','2022-04-10','910-717-7436','942 Melrose Place','1950-10-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100037,'Neils Flagg','2022-04-23','414-561-8680','02 Dixon Pass','1955-12-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100038,'Prescott Greenwood','2022-07-24','175-654-3634','1 5th Place','1962-11-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100039,'Jacqueline Keling','2022-11-24','524-472-8863','5777 Shelley Way','1972-10-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100040,'Willyt Bygott','2022-05-24','719-727-1656','9633 Melody Drive','1979-01-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100041,'Gerardo Cockerell','2022-03-29','921-955-4008','6 Knutson Parkway','1953-04-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100042,'Lesya MacInerney','2022-03-17','695-851-8862','0680 Memorial Drive','1990-07-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100043,'Tabor Battell','2022-02-01','849-931-9368','20 Steensland Avenue','1998-11-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100044,'Nikolaos Kitlee','2022-09-22','245-743-0498','5 Oak Valley Road','1989-06-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100045,'Alick Iacovozzo','2022-04-07','347-231-5578','3187 Lawn Street','1996-02-23','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100046,'Jonis OHannen','2022-03-06','845-569-8431','36328 Dennis Hill','1976-01-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100047,'Stephie Shoorbrooke','2022-01-23','987-148-4736','05 Calypso Crossing','1964-06-24','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100048,'Emyle Kardos-Stowe','2022-02-05','368-232-7826','635 Warner Crossing','1998-07-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100049,'Pat Danzey','2022-04-06','560-490-1991','6277 Chive Alley','1960-10-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100050,'Janette Baike','2022-03-15','284-993-6736','7 Kedzie Road','1959-12-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100051,'Giffie Gumbrell','2022-09-25','138-410-3579','596 Division Circle','1999-01-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100052,'Lyle Guerra','2022-02-05','286-134-3928','04 Barnett Road','1969-05-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100053,'Bird Niese','2022-03-24','248-162-7015','806 Anhalt Trail','2000-07-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100054,'Rhys Smiz','2022-12-13','324-315-0454','2 Katie Point','1984-04-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100055,'Gerald Biggar','2022-07-23','501-910-5488','5 Emmet Hill','1981-01-31','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100056,'Nikolaus Skeermer','2022-10-30','642-682-4292','56756 Harper Point','1954-09-24','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100057,'Saul Vose','2022-07-10','301-712-1446','419 Summit Court','1999-03-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100058,'Kattie Ashdown','2022-05-04','688-598-4481','93 Glendale Hill','1958-04-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100059,'Brandy Tissell','2022-07-31','409-654-4716','41 Cascade Point','1986-03-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100060,'Odella Westwick','2022-11-18','143-108-9456','3502 Hayes Parkway','1962-05-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100061,'Kathleen Jakubski','2022-06-28','431-842-4247','0 Mariners Cove Trail','1958-12-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100062,'Ericka Orringe','2022-06-05','363-812-7327','993 Parkside Hill','1988-01-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100063,'Olva Geffe','2022-05-16','474-174-0957','8059 Katie Terrace','1998-11-06','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100064,'Bevvy Gooders','2022-07-04','734-205-4417','11 Upham Alley','1995-12-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100065,'Jerry Blackadder','2022-03-08','158-122-5329','41 Center Alley','1980-04-25','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100066,'Theo Palle','2022-07-10','772-937-2213','94 Macpherson Junction','1978-08-31','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100067,'Lilith Akett','2022-06-23','396-756-8303','6 Spenser Park','1978-11-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100068,'Ward Hansen','2022-05-04','533-703-5176','20 Eastwood Court','1993-12-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100069,'Rosalia Romaynes','2022-01-08','861-602-9681','32137 Dovetail Junction','1991-05-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100070,'Sharlene Beachem','2022-03-24','959-997-0255','6 Scofield Way','1986-08-24','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100071,'Charles Sansam','2022-09-26','660-414-4562','0 Mifflin Place','1962-03-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100072,'Taylor Cescon','2022-04-30','230-619-8762','12 Moland Court','1957-06-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100073,'Jesus McVittie','2022-03-12','347-366-0414','85224 Katie Alley','1966-03-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100074,'Penny Onians','2022-12-09','740-415-1868','1615 Fulton Trail','1998-07-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100075,'Johnath Bremmer','2022-09-28','239-546-5724','5243 Autumn Leaf Circle','1962-02-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100076,'Cristobal Kohnert','2022-01-18','431-816-1194','88 Summer Ridge Road','1975-09-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100077,'Else Weatherburn','2022-12-29','877-386-2666','4 Ludington Drive','1969-03-08','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100078,'Moritz Swadlen','2022-09-17','528-816-1530','88306 Esch Pass','2000-05-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100079,'Trix Askew','2022-08-10','719-192-0532','9 Prairie Rose Road','1996-03-19','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100080,'Mar Parke','2022-12-05','324-615-5749','0 Hagan Street','1979-08-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100081,'Bekki Athersmith','2022-09-18','813-113-0128','803 Rockefeller Street','1965-06-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100082,'Persis Linzey','2022-09-03','345-109-4767','49 Northland Terrace','1988-04-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100083,'Keith Raunds','2022-03-16','984-676-0652','4 Chive Park','1951-03-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100084,'Bayard Petche','2022-08-25','623-882-8198','2 Cascade Plaza','1996-06-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100085,'Gaultiero Boden','2022-03-09','955-585-8670','10527 Hayes Street','1991-09-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100086,'Parker Marusik','2022-11-21','736-317-3263','37 Northridge Center','1975-12-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100087,'Benji Canellas','2022-03-27','200-266-6117','1 American Point','1971-01-28','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100088,'Nobie OKielt','2022-12-10','743-534-0545','19 Sheridan Hill','1984-11-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100089,'Gilburt Finlason','2022-11-11','758-341-6768','7 Merrick Center','1975-09-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100090,'Cathy Bellini','2022-12-22','814-605-0115','83054 Lien Avenue','1957-01-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100091,'Leeanne Tinkham','2022-11-23','323-773-1452','4 Eastlawn Way','1952-05-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100092,'Cyb McGregor','2022-07-28','177-570-8841','92285 Bartelt Terrace','1999-04-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100093,'Jerad Kubista','2022-01-10','669-615-8058','22 Crescent Oaks Parkway','1984-07-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100094,'Benjamin Peartree','2022-03-16','690-998-1056','8 Graedel Way','1974-03-14','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100095,'Stanislas Abrahams','2022-06-02','570-607-8583','836 Westport Alley','1993-06-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100096,'Abeu Sellors','2022-09-22','439-475-0012','661 Cardinal Plaza','1987-11-20','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100097,'Bing Perello','2022-10-13','345-304-0200','25 Sundown Hill','1964-07-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100098,'Mignon Plowell','2022-03-17','772-778-1552','957 Browning Street','1964-08-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100099,'Mamie Jery','2022-03-07','331-958-3305','4 Sachs Road','1992-08-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100100,'Dimitry Devons','2022-01-12','996-951-4320','66111 Mockingbird Lane','1959-10-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100101,'Georgie Watford','2022-08-17','920-221-3441','99 Eliot Terrace','1992-02-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100102,'Elwood Mattiazzi','2022-03-19','994-187-5837','691 Kennedy Road','1965-08-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100103,'Leelah Ghiriardelli','2022-10-20','982-955-5249','990 Melvin Crossing','1971-05-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100104,'Skye Trethewey','2022-09-27','249-317-2638','07624 Aberg Road','1990-11-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100105,'Dorisa Patchett','2022-09-24','596-436-4936','95 3rd Terrace','1961-07-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100106,'Sara-ann Scemp','2022-07-04','278-474-9322','00099 Towne Trail','1976-06-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100107,'Aline Wharby','2022-10-28','609-363-7569','05500 Talmadge Avenue','1962-06-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100108,'Jarred Bruckstein','2022-06-10','340-661-3928','9 5th Parkway','1971-02-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100109,'Clayborne Preble','2022-03-27','949-279-8330','23 Main Point','1990-06-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100110,'Buffy Faircliff','2022-04-09','632-372-0276','89 Hoard Way','1966-09-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100111,'Colman Gyrgorcewicx','2022-07-04','465-942-2615','466 Center Center','1999-01-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100112,'Milo Chelley','2022-12-08','899-425-8907','20449 Blaine Lane','1981-09-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100113,'Tracee Chestney','2022-04-05','111-207-0644','44 Main Point','2000-06-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100114,'Dacia Trase','2022-12-06','670-437-2481','39683 Dapin Alley','1960-08-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100115,'Doe Sains','2022-12-03','891-679-4689','6936 Banding Alley','1979-07-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100116,'Berkly Liston','2022-10-19','900-507-5930','50 Grasskamp Center','1953-08-19','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100117,'Annice Grosvener','2022-02-05','289-665-6711','24 Northport Avenue','1993-08-05','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100118,'Corette Flawith','2022-03-11','866-497-2688','0 Lotheville Place','1986-03-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100119,'Koren Mouget','2022-12-18','629-610-9183','5 Burning Wood Junction','1966-06-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100120,'Cassy Voyce','2022-08-01','710-112-1386','1 Scoville Crossing','1992-01-24','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100121,'Klaus Gerrell','2022-12-16','846-714-2875','30229 East Point','2000-08-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100122,'Joscelin Gelder','2022-03-13','555-755-4821','16 2nd Street','1994-02-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100123,'Godfrey Boosey','2022-11-25','619-207-3868','6 Hermina Trail','1976-02-22','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100124,'Nannette Grishakov','2022-08-15','640-457-1114','103 Bultman Place','1981-10-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100125,'Katuscha Slocombe','2022-02-19','741-204-5920','57683 Doe Crossing Point','1970-11-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100126,'Ardenia Rimell','2022-04-29','834-469-4054','42095 Ridgeway Way','1989-01-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100127,'Pet Geard','2022-11-27','805-183-1306','988 4th Court','1984-11-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100128,'Bette Boltwood','2022-08-10','479-304-7308','0577 Elka Center','1972-08-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100129,'Renate McGillivray','2022-09-24','956-518-2200','490 Melrose Street','1992-07-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100130,'Dorella Lightoller','2022-03-10','128-814-1011','007 Northfield Trail','1994-02-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100131,'Asher East','2022-11-13','348-850-6729','75521 South Way','1980-12-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100132,'Patten Swinley','2022-04-16','213-390-3755','89 Tomscot Circle','1950-09-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100133,'Philipa Greder','2022-11-06','271-407-3388','62 Dryden Point','1993-12-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100134,'James Ghilks','2022-12-16','441-615-5466','18243 Lake View Trail','1999-09-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100135,'Harriott Seger','2022-04-13','527-646-4228','6909 Lien Terrace','1998-08-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100136,'Lissi Ede','2022-06-22','460-711-3549','91300 American Ash Street','1986-01-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100137,'Annalise Gawthrope','2022-01-18','793-470-5070','7956 Sloan Lane','1977-05-13','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100138,'Marlo Habens','2022-02-09','466-457-0690','24078 Westridge Crossing','1980-07-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100139,'Samaria Corneljes','2022-04-30','299-601-1163','343 Packers Street','1969-05-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100140,'Malissa Palin','2022-06-27','908-590-7179','42915 Declaration Park','1983-02-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100141,'Carlynne Bartomieu','2022-04-20','999-539-5470','96 Lawn Alley','1961-04-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100142,'Wat Kuhwald','2022-05-18','912-240-4598','2038 Laurel Place','1955-09-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100143,'Clemmie Grimme','2022-10-16','379-854-8039','9 Wayridge Lane','1987-10-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100144,'Caddric Bomb','2022-10-13','895-192-3346','8780 Shopko Avenue','1979-04-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100145,'Richard Abramovic','2022-01-08','794-701-4788','29 Lien Park','1967-02-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100146,'Bill Mockler','2022-05-05','554-715-0079','5759 Lakeland Center','1988-10-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100147,'Sky Thynn','2022-05-30','867-794-9006','83305 Meadow Ridge Street','1967-04-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100148,'Filbert Learmouth','2022-04-22','481-878-9639','0 Coolidge Terrace','1963-07-23','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100149,'Duky Breeton','2022-09-19','839-459-4303','2 Hermina Crossing','1973-06-24','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100150,'Andrus Jurisch','2022-03-11','913-321-2607','8181 Mccormick Road','1998-01-13','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100151,'Hewet Bazelle','2022-08-31','164-991-2597','56 La Follette Hill','1973-03-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100152,'Spense Prys','2022-08-27','988-198-6424','6 Boyd Street','1982-08-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100153,'Flory Joanaud','2022-02-03','467-220-4019','8927 Sullivan Place','1964-09-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100154,'Catlee Meeland','2022-09-10','302-920-5156','96465 Raven Street','1989-02-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100155,'Terrill Maving','2022-02-17','405-107-0332','7 Sachs Circle','1997-02-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100156,'Erena Blum','2022-11-25','336-544-6247','150 Stang Street','1974-12-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100157,'Son Riddler','2022-02-13','851-984-4364','26938 Sherman Pass','1953-01-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100158,'Alec Pantecost','2022-03-18','705-486-9717','183 Havey Point','1958-03-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100159,'Kerr Smolan','2022-06-15','908-711-3857','4 Macpherson Terrace','1997-10-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100160,'Lavina Tofanelli','2022-06-11','481-578-2477','7 Hoepker Center','1989-06-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100161,'Rollin Hilland','2022-10-28','310-579-6290','087 Tennessee Alley','1982-09-23','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100162,'Elisabeth Tigner','2022-09-11','864-345-8503','33 North Road','1980-05-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100163,'Nickolai Codner','2022-09-28','652-361-5475','39233 Melvin Circle','1970-09-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100164,'Elfrieda Chese','2022-10-18','995-662-5322','431 Novick Road','1988-12-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100165,'Sibley Plaskett','2022-11-28','410-904-4673','35230 Alpine Crossing','1952-07-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100166,'Claudian Oxton','2022-01-20','232-441-7360','96205 Stone Corner Road','1969-10-19','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100167,'Celeste Leftly','2022-06-19','734-932-2991','0235 Ludington Avenue','1956-07-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100168,'Ardith Hillin','2022-05-21','681-354-9267','8139 Pepper Wood Circle','1965-11-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100169,'Rhianon Harland','2022-06-08','683-903-2682','397 Toban Point','1975-12-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100170,'Sylvia Bradbrook','2022-07-23','462-290-3871','55506 Maywood Alley','1970-03-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100171,'Vevay MacKissack','2022-10-09','687-239-6866','390 Spenser Street','1975-07-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100172,'Stefanie Whitesel','2022-07-13','371-948-4811','7 Sugar Plaza','1953-03-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100173,'Melodee Baptist','2022-06-22','545-190-1686','76441 4th Crossing','1962-06-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100174,'Amii Tesseyman','2022-12-10','750-813-0846','5 Reinke Hill','1975-06-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100175,'Daniella Monkton','2022-08-12','843-113-0669','9316 Vernon Street','1997-05-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100176,'Erasmus Mateuszczyk','2022-02-01','627-648-6233','219 Springview Alley','1988-08-13','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100177,'Steffen Kopacek','2022-05-08','669-894-9472','37 Jay Circle','1957-01-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100178,'Ebonee Chadband','2022-04-15','210-458-3884','403 Bunting Circle','1971-11-25','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100179,'Honoria Caldeiro','2022-01-18','158-679-4983','041 Cherokee Road','1985-06-23','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100180,'Lucille Forrest','2022-02-06','551-532-0723','986 Messerschmidt Junction','1951-09-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100181,'Leroi Peealess','2022-09-09','513-950-8432','953 Anniversary Drive','1974-05-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100182,'Hynda Diboll','2022-05-02','974-413-9059','147 Debra Parkway','1992-09-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100183,'Skylar Bygrove','2022-12-14','781-675-2504','06 Golf Street','1963-04-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100184,'Dean Bergstram','2022-05-16','631-514-7186','9 Harper Circle','1988-11-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100185,'Silvanus Legerwood','2022-01-04','972-374-8209','0 Sherman Road','1965-05-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100186,'Kevan Benzie','2022-01-10','818-933-9654','718 Meadow Valley Lane','1978-05-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100187,'Caitrin Blesdill','2022-02-19','924-389-5653','7450 Esch Pass','1955-05-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100188,'Skye Fozzard','2022-06-28','657-187-6511','55 Barnett Pass','1988-09-23','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100189,'Langston Valero','2022-10-22','153-903-8263','4 Tony Way','1963-09-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100190,'Xaviera le Keux','2022-07-09','265-348-5562','64269 Fulton Street','1965-03-19','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100191,'Walsh Lezemere','2022-02-26','264-388-6113','360 Petterle Trail','1991-03-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100192,'Ariela Rouch','2022-07-09','137-280-6816','8721 Bayside Park','1956-06-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100193,'Mercedes Dumini','2022-10-08','697-341-5954','56149 Brown Hill','1977-01-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100194,'Hyacintha Iapico','2022-08-08','187-591-6199','5434 8th Place','1967-10-23','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100195,'Georges Inkster','2022-10-20','208-872-2209','05 Evergreen Center','1972-11-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100196,'Carmella Billiard','2022-08-08','530-493-0724','46 Goodland Court','1981-07-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100197,'Emili Tolcher','2022-07-20','506-456-3244','06 Sachtjen Center','1975-09-18','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100198,'Kenton Corlett','2022-05-06','144-896-7751','643 Almo Street','1992-02-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100199,'Teodoro Brierton','2022-12-03','876-580-4231','5505 3rd Road','1996-05-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100200,'Connie Flisher','2022-09-16','636-350-2920','72 Park Meadow Crossing','1975-04-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100201,'Myles Barme','2022-09-24','392-894-0346','5416 Anniversary Junction','1985-03-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100202,'Anita Haddington','2022-09-13','931-158-0827','86343 Nancy Street','1956-04-28','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100203,'Celinda Lightfoot','2022-10-17','135-403-6684','2193 Burrows Parkway','1965-12-23','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100204,'Lanny Milroy','2022-09-28','193-324-0681','426 Reinke Center','1984-04-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100205,'Carl Abrami','2022-03-18','962-822-1337','8 Barby Lane','1966-08-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100206,'Carlina Paramor','2022-02-19','340-982-6700','14401 Forest Junction','1963-09-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100207,'Lyndy Ludye','2022-09-16','608-410-2443','5 Farwell Terrace','1965-01-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100208,'Lorin Laxen','2022-10-01','677-116-8364','6 Merchant Park','1989-10-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100209,'Sandy Dudding','2022-01-01','252-875-2638','0 Pepper Wood Way','1952-01-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100210,'Denys Noddings','2022-04-16','407-667-9411','75 Fieldstone Alley','1970-09-11','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100211,'Chan Shee','2022-05-16','882-506-7464','5 Ruskin Drive','1961-07-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100212,'Durant Stutt','2022-11-08','917-175-1954','85 Forest Run Trail','1996-04-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100213,'Horten Caldwell','2022-05-25','712-935-8371','24853 Northport Crossing','1955-03-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100214,'Crosby Stolz','2022-06-14','503-812-3257','11935 Stone Corner Center','1975-04-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100215,'Washington Cockrill','2022-08-19','306-753-2375','9 Butternut Alley','1984-05-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100216,'Saxe Reneke','2022-03-16','759-294-8923','2 Heffernan Pass','1988-08-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100217,'Julienne Demsey','2022-09-19','209-416-6476','809 Summit Plaza','1968-05-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100218,'Roxanna Bentote','2022-11-04','325-580-6142','6 Oneill Terrace','1958-12-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100219,'Tyne Semour','2022-11-23','127-821-3371','5551 Heath Crossing','1997-03-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100220,'Othello Sawdon','2022-07-29','308-294-4487','75502 Westerfield Park','1992-02-07','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100221,'Chadwick Roblou','2022-10-21','789-165-9423','8102 Bellgrove Point','1985-02-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100222,'Menard Mackelworth','2022-07-25','357-480-9064','1609 Hansons Lane','1979-05-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100223,'Teddy MacConnulty','2022-04-23','797-151-0576','03 Garrison Park','2000-02-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100224,'Lorette Layborn','2022-01-03','543-845-0642','03 Ilene Street','1976-03-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100225,'Norman Corking','2022-07-28','567-276-7614','9 Waywood Parkway','1986-02-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100226,'Erma Terese','2022-05-30','988-317-5523','234 Dahle Hill','1963-12-27','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100227,'Lawton Carabine','2022-08-05','903-411-7195','7881 American Trail','1979-02-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100228,'Charlot Pennazzi','2022-08-21','103-570-7478','90 Maple Wood Junction','1955-04-25','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100229,'Martha Giroldo','2022-12-13','728-648-5130','1 Lakewood Gardens Alley','1988-02-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100230,'Mariana Meconi','2022-05-14','702-767-2237','5816 Corscot Hill','1984-12-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100231,'Joelly Houldey','2022-11-12','390-180-5491','823 Killdeer Point','1991-02-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100232,'Carrie Ericsson','2022-10-31','976-262-2280','67 Forest Way','1964-09-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100233,'Addy Laytham','2022-05-20','829-147-2690','54 Knutson Parkway','1978-12-31','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100234,'Lucian Corneille','2022-07-15','560-230-4430','366 Calypso Junction','1981-11-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100235,'Leeann Keyson','2022-06-08','765-441-4055','75 Barby Junction','1973-11-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100236,'Rae MacParland','2022-01-07','422-118-6849','18 Farmco Lane','1953-05-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100237,'Demetra Masham','2022-02-09','887-598-4643','7980 Mariners Cove Hill','1991-02-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100238,'Thorin Abbotson','2022-10-11','393-937-8300','667 Walton Park','1996-11-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100239,'Ramonda Papworth','2022-05-03','100-850-0951','36 Bluestem Crossing','1977-05-10','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100240,'Abbe Iwaszkiewicz','2022-02-23','869-941-1407','354 South Circle','1960-05-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100241,'Paula Jackman','2022-12-22','189-110-5713','2 Cottonwood Plaza','1991-10-31','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100242,'Dominga Guerola','2022-04-03','372-509-2585','20401 Moose Point','1951-02-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100243,'Ruperta Zielinski','2022-01-08','174-311-6580','7363 Charing Cross Point','1983-04-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100244,'Gino Blabey','2022-03-17','136-894-0336','67 Pierstorff Hill','1982-01-01','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100245,'Edmund Talks','2022-07-11','220-110-2833','04 1st Drive','1966-01-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100246,'Sharlene Skocroft','2022-03-16','661-944-9223','39 Mcbride Way','1965-08-27','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100247,'Travus MacCambridge','2022-06-01','822-693-4732','1184 Vernon Road','1984-06-05','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100248,'Anestassia Shera','2022-01-19','489-420-5312','370 Swallow Trail','1999-09-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100249,'Shell Kapiloff','2022-11-09','974-914-8357','5 Lunder Parkway','1953-03-07','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100250,'Tam Casazza','2022-07-03','703-818-3686','14711 Golf Course Lane','1987-09-09','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100251,'Leanor Ballentime','2022-03-08','934-364-9632','77 Fuller Way','1967-10-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100252,'Cass Gerb','2022-02-13','287-531-9149','816 Ridgeway Parkway','1990-11-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100253,'Ade Suthren','2022-01-12','201-963-8519','197 Loeprich Alley','1995-02-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100254,'Marven Soames','2022-12-24','973-784-2832','2051 Trailsway Alley','1970-01-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100255,'Earlie Archibald','2022-12-15','593-568-7004','08 Sunfield Parkway','1999-10-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100256,'Ase Newbury','2022-03-20','596-470-1333','91 Moulton Circle','1974-10-05','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100257,'Guthrey Toffoletto','2022-03-23','906-457-6945','09 Stuart Junction','1962-03-13','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100258,'Cymbre Jedrzaszkiewicz','2022-02-14','247-320-6834','4220 Karstens Plaza','1993-05-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100259,'Rubina Tearny','2022-06-23','913-369-4155','01 Victoria Alley','1981-04-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100260,'Freddie Downage','2022-02-23','521-754-8186','74 Elgar Park','1969-11-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100261,'Carlie Benardette','2022-05-22','133-105-9375','153 Holy Cross Crossing','1956-08-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100262,'Cary Fairfoot','2022-03-23','724-117-8709','763 Kenwood Plaza','1986-01-18','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100263,'Brody Groocock','2022-12-10','669-508-5838','3594 Bartillon Avenue','1998-04-15','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100264,'Claire Kuna','2022-07-14','772-819-0980','37614 Merry Point','1971-01-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100265,'Zebulen Gainsbury','2022-01-14','590-981-0514','6 Granby Way','1971-03-03','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100266,'Justis Wesker','2022-07-31','852-875-6102','9645 Gina Point','1984-07-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100267,'Marti Kitchingman','2022-12-23','139-802-5478','094 Dunning Parkway','1956-06-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100268,'Charlotta Millthorpe','2022-05-31','984-238-6084','152 Graedel Way','1980-07-26','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100269,'Windham Baldini','2022-08-11','810-212-5775','7723 Arizona Parkway','1990-01-06','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100270,'Simona Kennington','2022-06-23','414-410-3420','4 Blaine Plaza','1973-05-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100271,'Karlotta Wager','2022-01-27','496-197-3547','59600 Cascade Point','1969-05-16','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100272,'Osmond Racine','2022-04-19','304-940-5368','2 Bultman Circle','1993-12-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100273,'Barbra Shawley','2022-12-15','978-606-0356','9533 Paget Court','1966-02-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100274,'Petronella Shirtliff','2022-04-10','289-282-4459','2 Veith Court','1960-05-02','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100275,'Cordey Matthews','2022-08-13','930-648-6778','36701 Leroy Place','1962-06-28','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100276,'Gilbertine Kitchin','2022-11-03','479-729-5875','31 International Way','1995-10-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100277,'Janella Makeswell','2022-12-08','118-227-7348','20 Westridge Hill','1968-04-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100278,'Thornton Orrock','2022-06-09','652-884-3504','5 Waywood Plaza','1983-09-04','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100279,'Reginald Goodley','2022-07-21','199-673-2554','0 Mcguire Pass','1967-11-29','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100280,'Timmy Bonifant','2022-02-28','315-184-9836','60 Norway Maple Park','1986-12-28','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100281,'Emmit Sherrard','2022-03-02','596-751-8388','771 Gulseth Drive','1968-04-14','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100282,'Brandie Strond','2022-08-31','334-176-7525','2938 Donald Terrace','1951-10-20','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100283,'Malorie Riddell','2022-03-31','178-426-9891','58 Meadow Vale Point','1997-05-12','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100284,'Dorelle Alflatt','2022-01-11','717-150-6505','25 Talmadge Road','1963-03-27','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100285,'Elsworth Forestel','2022-04-12','374-289-1164','9354 Linden Plaza','1984-09-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100286,'Alexia Hutfield','2022-09-16','520-694-1942','421 Mosinee Court','1967-11-21','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100287,'Eddi Cheverell','2022-09-10','539-657-5566','9 Bunker Hill Plaza','1956-03-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100288,'Rodi Cisco','2022-03-02','990-782-1972','97103 Schiller Drive','1980-12-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100289,'Carrie Lowry','2022-09-30','988-997-0170','9 Eliot Terrace','1964-08-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100290,'Myrle Carrabot','2022-03-01','907-118-4938','4 Gateway Avenue','1957-03-28','blacklist');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100291,'Anet Melton','2022-01-25','646-446-5056','68 Truax Plaza','1970-01-20','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100292,'Malchy Moreing','2022-01-19','984-491-7099','403 Longview Alley','1951-02-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100293,'Galina Archdeacon','2022-01-06','409-504-2468','341 Forest Crossing','1952-09-17','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100294,'Hervey De la Feld','2022-05-04','643-801-5969','493 Roxbury Way','1962-05-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100295,'Bernice Luckman','2022-06-09','329-234-9143','2 Namekagon Park','1957-05-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100296,'Burlie Portinari','2022-02-14','746-444-8191','9 Mallard Drive','2000-02-22','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100297,'Bridgette Hasty','2022-05-04','117-222-9282','626 Barby Terrace','1967-08-30','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100298,'Cathrine Nourse','2022-10-17','795-778-2402','561 Golf Trail','1995-12-08','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100299,'Marlow Brophy','2022-05-16','117-281-7195','4 Bonner Junction','1990-03-01','normal');
INSERT INTO member (`member_id`,`name`,`registration_date`,`contact_no`,`address`,`birthday`,`member_type`) VALUES (100300,'Lizbeth Maudlen','2022-10-03','772-671-2916','86173 Acker Crossing','1971-10-02','normal');




DROP TABLE IF EXISTS book;
create table book (
	book_id INT not null,
	book_name VARCHAR(50),
	book_price INT,
	book_state VARCHAR(11),
    book_received_date Date,
	publisher_id INT not null,
	author_id INT not null,
	vendor_id INT not null,
	emp_id INT not null,
	library_name VARCHAR(50) not null,
    PRIMARY KEY (book_id)
);
    Alter table book Add foreign key (publisher_id) references publisher(publisher_id);
	Alter table book Add foreign key (author_id) references author(author_id);
	Alter table book Add foreign key (vendor_id) references vendor(vendor_id);
	Alter table book Add foreign key (emp_id) references employee(emp_id);
	Alter table book Add foreign key (library_name) references library(library_name);
    
    
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200001,'Pannier',43,'available','2022-11-23',10001,1001,5001,101,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200002,'Stronghold',15,'available','2022-06-06',10002,1002,5002,102,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200003,'Span',48,'available','2022-01-31',10003,1003,5003,103,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200004,'Viva',42,'available','2022-04-26',10004,1004,5004,104,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200005,'Tempsoft',47,'available','2022-11-07',10005,1005,5005,105,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200006,'Lotlux',15,'available','2022-07-22',10006,1006,5006,106,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200007,'Domainer',39,'available','2022-08-01',10007,1007,5007,107,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200008,'Rank',44,'unavailable','2022-06-26',10008,1008,5008,108,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200009,'Bamity',36,'available','2022-04-30',10009,1009,5009,109,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200010,'Aerified',47,'unavailable','2022-05-14',10010,1010,5010,110,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200011,'Rank',22,'available','2022-07-09',10011,1011,5011,111,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200012,'Y-find',24,'available','2022-01-03',10012,1012,5012,112,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200013,'Y-find',12,'available','2022-06-01',10013,1013,5013,113,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200014,'Fix San',50,'unavailable','2022-10-08',10014,1014,5014,114,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200015,'Tres-Zap',20,'available','2022-08-15',10015,1015,5015,115,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200016,'Rank',14,'available','2022-08-21',10016,1016,5016,116,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200017,'Voltsillam',11,'available','2022-11-25',10017,1017,5017,117,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200018,'Ventosanzap',36,'available','2022-09-09',10018,1018,5018,118,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200019,'Fix San',14,'unavailable','2022-10-19',10019,1019,5019,119,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200020,'Zathin',32,'available','2022-01-30',10020,1020,5020,120,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200021,'Toughjoyfax',43,'unavailable','2022-12-18',10021,1021,5021,121,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200022,'Treeflex',19,'available','2022-11-24',10022,1022,5022,122,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200023,'Keylex',35,'available','2022-02-21',10023,1023,5023,123,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200024,'Flowdesk',27,'available','2022-10-19',10024,1024,5024,124,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200025,'Hatity',22,'unavailable','2022-10-15',10025,1025,5025,125,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200026,'Vagram',25,'available','2022-04-08',10026,1026,5026,126,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200027,'Cardify',25,'unavailable','2022-03-13',10027,1027,5027,127,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200028,'Voyatouch',31,'available','2022-08-03',10028,1028,5028,128,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200029,'Holdlamis',26,'unavailable','2022-07-27',10029,1029,5029,129,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200030,'Sub-Ex',50,'available','2022-09-19',10030,1030,5030,130,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200031,'Rank',12,'available','2022-01-31',10031,1031,5031,131,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200032,'Asoka',50,'available','2022-10-24',10032,1032,5032,132,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200033,'Tresom',41,'available','2022-09-22',10033,1033,5033,133,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200034,'Bitwolf',25,'available','2022-11-09',10034,1034,5034,134,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200035,'Stronghold',46,'available','2022-02-20',10035,1035,5035,135,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200036,'Quo Lux',30,'available','2022-01-01',10036,1036,5036,136,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200037,'Alpha',42,'available','2022-08-19',10037,1037,5037,137,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200038,'Tresom',23,'available','2022-04-04',10038,1038,5038,138,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200039,'Subin',15,'unavailable','2022-05-02',10039,1039,5039,139,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200040,'Bamity',28,'unavailable','2022-03-13',10040,1040,5040,140,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200041,'Toughjoyfax',23,'available','2022-09-08',10041,1041,5041,141,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200042,'Namfix',25,'available','2022-12-17',10042,1042,5042,142,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200043,'Ronstring',25,'available','2022-06-17',10043,1043,5043,143,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200044,'Daltfresh',26,'available','2022-09-20',10044,1044,5044,144,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200045,'Sonsing',18,'available','2022-05-16',10045,1045,5045,145,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200046,'Sub-Ex',31,'available','2022-07-04',10046,1046,5046,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200047,'Kanlam',21,'available','2022-04-08',10047,1047,5047,147,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200048,'Konklab',32,'unavailable','2022-08-20',10048,1048,5048,148,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200049,'Voltsillam',24,'available','2022-10-18',10049,1049,5049,149,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200050,'Prodder',34,'available','2022-05-21',10050,1050,5050,150,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200051,'Bigtax',35,'available','2022-06-04',10051,1051,5051,118,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200052,'Fix San',49,'available','2022-03-31',10052,1052,5052,139,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200053,'Tresom',26,'available','2022-12-12',10053,1053,5053,123,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200054,'Latlux',47,'available','2022-09-11',10054,1054,5054,128,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200055,'Trippledex',31,'unavailable','2022-05-16',10055,1055,5055,113,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200056,'Sub-Ex',48,'available','2022-05-04',10056,1056,5056,147,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200057,'Zamit',26,'unavailable','2022-06-21',10057,1057,5057,142,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200058,'Overhold',37,'unavailable','2022-01-10',10058,1058,5058,149,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200059,'Otcom',47,'available','2022-02-03',10059,1059,5059,114,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200060,'Fixflex',10,'available','2022-08-07',10060,1060,5060,113,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200061,'Sonsing',36,'available','2022-05-30',10061,1061,5061,141,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200062,'Duobam',39,'available','2022-06-28',10062,1062,5062,122,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200063,'Vagram',25,'available','2022-11-23',10063,1063,5063,141,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200064,'Zamit',21,'available','2022-01-25',10064,1064,5064,131,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200065,'Veribet',37,'available','2022-09-29',10065,1065,5065,106,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200066,'Fixflex',13,'available','2022-02-08',10066,1066,5066,105,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200067,'Asoka',18,'unavailable','2022-06-25',10067,1067,5067,107,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200068,'Lotstring',35,'unavailable','2022-03-06',10068,1068,5068,148,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200069,'Tresom',38,'available','2022-12-05',10069,1069,5069,103,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200070,'Temp',37,'available','2022-08-04',10070,1070,5070,110,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200071,'Fixflex',21,'available','2022-05-21',10071,1071,5071,109,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200072,'Voyatouch',35,'unavailable','2022-06-15',10072,1072,5072,131,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200073,'Flexidy',50,'unavailable','2022-10-14',10073,1073,5073,146,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200074,'Redhold',24,'unavailable','2022-03-08',10074,1074,5074,132,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200075,'Vagram',35,'available','2022-05-26',10075,1075,5075,106,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200076,'Zaam-Dox',48,'available','2022-11-30',10076,1076,5076,144,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200077,'Aerified',49,'available','2022-03-07',10077,1077,5077,149,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200078,'Bitwolf',24,'unavailable','2022-06-27',10078,1078,5078,118,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200079,'Bitwolf',50,'unavailable','2022-02-08',10079,1079,5079,124,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200080,'Y-Solowarm',45,'available','2022-10-23',10080,1080,5080,125,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200081,'Kanlam',23,'available','2022-12-28',10081,1081,5081,119,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200082,'Alphazap',25,'available','2022-04-30',10082,1082,5082,139,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200083,'Tresom',36,'available','2022-01-16',10083,1083,5083,116,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200084,'Prodder',43,'available','2022-02-21',10084,1084,5084,130,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200085,'Konklab',38,'unavailable','2022-01-22',10085,1085,5085,102,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200086,'Bitchip',23,'unavailable','2022-08-03',10086,1086,5086,146,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200087,'Aerified',30,'available','2022-02-04',10087,1087,5087,128,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200088,'Asoka',16,'available','2022-02-20',10088,1088,5088,143,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200089,'Matsoft',29,'available','2022-04-07',10089,1089,5089,149,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200090,'Ventosanzap',47,'available','2022-01-09',10090,1090,5090,128,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200091,'Sonair',39,'available','2022-10-01',10091,1091,5091,132,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200092,'Cardguard',11,'unavailable','2022-06-25',10092,1092,5092,101,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200093,'Greenlam',14,'available','2022-06-22',10093,1093,5093,150,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200094,'Tempsoft',12,'available','2022-10-29',10094,1094,5094,143,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200095,'Y-find',38,'available','2022-09-19',10095,1095,5095,110,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200096,'Tin',20,'available','2022-08-19',10096,1096,5096,123,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200097,'Zontrax',20,'available','2022-12-21',10097,1097,5097,136,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200098,'Alpha',28,'available','2022-12-15',10098,1098,5098,116,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200099,'Rank',16,'available','2022-07-18',10099,1099,5099,144,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200100,'Tampflex',46,'available','2022-05-18',10100,1100,5100,108,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200101,'Zontrax',23,'available','2022-01-01',10101,1101,5100,128,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200102,'It',30,'available','2022-12-08',10102,1102,5051,119,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200103,'Job',45,'unavailable','2022-09-06',10103,1103,5073,101,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200104,'Zamit',38,'available','2022-11-24',10104,1104,5088,140,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200105,'Zontrax',49,'available','2022-12-20',10105,1105,5078,103,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200106,'Ronstring',31,'available','2022-12-26',10106,1106,5053,126,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200107,'Gembucket',46,'available','2022-02-16',10107,1107,5005,150,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200108,'Cardify',32,'unavailable','2022-10-30',10108,1108,5076,112,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200109,'Tin',44,'available','2022-01-16',10109,1109,5015,115,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200110,'Overhold',10,'available','2022-04-03',10110,1110,5016,142,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200111,'Solarbreeze',41,'unavailable','2022-03-18',10111,1111,5058,146,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200112,'Vagram',44,'available','2022-10-07',10112,1112,5003,124,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200113,'Span',43,'available','2022-11-09',10113,1113,5040,102,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200114,'Temp',16,'available','2022-05-11',10114,1114,5092,101,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200115,'Namfix',34,'available','2022-10-15',10115,1115,5077,145,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200116,'Zaam-Dox',15,'available','2022-11-12',10116,1116,5077,122,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200117,'Asoka',28,'available','2022-02-24',10117,1117,5081,130,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200118,'Bamity',49,'available','2022-08-25',10118,1118,5023,140,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200119,'Konklux',47,'available','2022-10-03',10119,1119,5090,110,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200120,'Toughjoyfax',28,'available','2022-03-27',10120,1120,5089,136,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200121,'Bitwolf',30,'unavailable','2022-03-03',10121,1121,5002,142,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200122,'Bitchip',32,'available','2022-12-26',10122,1122,5022,144,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200123,'Lotstring',29,'unavailable','2022-04-01',10123,1123,5069,104,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200124,'Namfix',22,'available','2022-03-07',10124,1124,5055,107,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200125,'Tresom',37,'unavailable','2022-11-28',10125,1125,5046,112,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200126,'Tres-Zap',18,'available','2022-12-06',10126,1126,5093,118,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200127,'Viva',25,'available','2022-12-30',10127,1127,5095,145,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200128,'Zontrax',33,'available','2022-07-30',10128,1128,5035,121,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200129,'Pannier',11,'available','2022-11-13',10129,1129,5098,123,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200130,'Domainer',19,'available','2022-07-28',10130,1130,5087,113,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200131,'Y-find',27,'available','2022-11-15',10131,1131,5081,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200132,'Biodex',20,'available','2022-09-17',10132,1132,5087,135,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200133,'Konklab',23,'unavailable','2022-05-07',10133,1133,5005,124,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200134,'Zontrax',46,'available','2022-03-30',10134,1134,5034,143,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200135,'Quo Lux',42,'available','2022-10-06',10135,1135,5100,142,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200136,'Lotlux',31,'unavailable','2022-02-14',10136,1136,5011,142,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200137,'Stringtough',47,'available','2022-01-20',10137,1137,5028,150,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200138,'Latlux',30,'unavailable','2022-07-31',10138,1138,5084,144,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200139,'Stim',10,'available','2022-12-06',10139,1139,5080,131,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200140,'Aerified',18,'available','2022-05-05',10140,1140,5095,120,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200141,'Latlux',42,'available','2022-12-02',10141,1141,5041,110,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200142,'Prodder',38,'available','2022-03-13',10142,1142,5073,135,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200143,'Voltsillam',12,'unavailable','2022-11-03',10143,1143,5015,107,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200144,'Trippledex',44,'available','2022-03-31',10144,1144,5089,125,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200145,'Pannier',47,'available','2022-05-31',10145,1145,5009,105,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200146,'Biodex',40,'unavailable','2022-02-14',10146,1146,5042,124,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200147,'Rank',39,'available','2022-08-13',10147,1147,5022,146,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200148,'Zamit',37,'available','2022-02-27',10148,1148,5007,133,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200149,'Flexidy',49,'available','2022-02-28',10149,1149,5086,111,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200150,'Fix San',31,'unavailable','2022-02-04',10150,1150,5028,109,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200151,'Job',14,'available','2022-03-01',10151,1151,5087,130,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200152,'Y-Solowarm',32,'available','2022-05-18',10152,1152,5050,101,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200153,'Keylex',14,'unavailable','2022-08-02',10153,1153,5025,114,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200154,'Latlux',45,'available','2022-05-27',10154,1154,5051,109,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200155,'Quo Lux',50,'available','2022-01-30',10155,1155,5091,139,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200156,'Flowdesk',50,'available','2022-03-14',10156,1156,5013,144,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200157,'Veribet',48,'available','2022-06-25',10157,1157,5010,107,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200158,'Hatity',14,'available','2022-05-01',10158,1158,5002,113,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200159,'Vagram',20,'available','2022-09-20',10159,1159,5030,117,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200160,'Alpha',49,'available','2022-07-30',10160,1160,5029,101,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200161,'Veribet',39,'available','2022-08-28',10161,1161,5076,149,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200162,'Tresom',15,'available','2022-09-09',10162,1162,5057,101,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200163,'Veribet',46,'unavailable','2022-03-18',10163,1163,5005,122,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200164,'Keylex',13,'available','2022-01-29',10164,1164,5011,139,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200165,'Quo Lux',26,'available','2022-10-01',10165,1165,5001,109,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200166,'Span',32,'unavailable','2022-03-11',10166,1166,5097,124,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200167,'Lotstring',13,'available','2022-02-10',10167,1167,5086,124,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200168,'Stronghold',29,'unavailable','2022-07-16',10168,1168,5016,150,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200169,'Fintone',33,'available','2022-08-16',10169,1169,5057,117,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200170,'Zontrax',46,'available','2022-07-22',10170,1170,5045,148,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200171,'Pannier',44,'available','2022-08-22',10171,1171,5035,143,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200172,'Span',35,'available','2022-01-10',10172,1172,5057,108,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200173,'Aerified',20,'available','2022-06-20',10173,1173,5069,101,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200174,'Bytecard',32,'unavailable','2022-10-09',10174,1174,5020,120,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200175,'Flexidy',33,'available','2022-03-22',10175,1175,5033,106,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200176,'Lotlux',42,'unavailable','2022-11-26',10176,1176,5007,109,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200177,'Solarbreeze',30,'available','2022-05-20',10177,1177,5024,145,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200178,'Zamit',17,'available','2022-01-16',10178,1178,5059,107,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200179,'Namfix',17,'unavailable','2022-01-25',10179,1179,5018,123,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200180,'Alpha',12,'available','2022-08-20',10180,1180,5076,130,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200181,'Y-Solowarm',28,'unavailable','2022-08-08',10181,1181,5062,121,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200182,'Gembucket',41,'available','2022-06-16',10182,1182,5066,134,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200183,'Aerified',30,'available','2022-02-21',10183,1183,5006,132,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200184,'Stronghold',41,'available','2022-02-16',10184,1184,5004,120,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200185,'Tresom',11,'available','2022-07-23',10185,1185,5076,112,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200186,'Fixflex',28,'available','2022-03-21',10186,1186,5024,135,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200187,'Aerified',43,'available','2022-03-22',10187,1187,5087,131,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200188,'Lotlux',21,'available','2022-01-22',10188,1188,5026,129,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200189,'Matsoft',49,'available','2022-03-21',10189,1189,5036,136,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200190,'Solarbreeze',25,'available','2022-01-10',10190,1190,5095,138,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200191,'Regrant',11,'available','2022-12-03',10191,1191,5024,150,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200192,'Bitchip',26,'available','2022-11-08',10192,1192,5098,113,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200193,'Fix San',17,'available','2022-03-20',10193,1193,5091,101,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200194,'Job',25,'available','2022-02-15',10194,1194,5051,138,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200195,'Kanlam',24,'available','2022-08-25',10195,1195,5039,120,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200196,'Gembucket',26,'unavailable','2022-08-16',10196,1196,5082,149,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200197,'Viva',10,'available','2022-11-14',10197,1197,5052,118,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200198,'Solarbreeze',11,'available','2022-02-20',10198,1198,5054,115,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200199,'Daltfresh',32,'available','2022-03-03',10199,1199,5089,119,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200200,'Andalax',13,'available','2022-05-09',10200,1200,5009,139,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200201,'Stringtough',32,'available','2022-12-18',10201,1027,5087,145,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200202,'Flexidy',42,'available','2022-02-21',10202,1196,5094,112,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200203,'Tin',47,'unavailable','2022-03-27',10203,1006,5022,127,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200204,'Bytecard',27,'available','2022-02-25',10204,1054,5019,148,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200205,'Kanlam',47,'available','2022-08-03',10205,1103,5047,118,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200206,'Namfix',40,'available','2022-02-25',10206,1008,5040,104,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200207,'Fix San',17,'available','2022-04-21',10207,1076,5067,125,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200208,'Trippledex',50,'available','2022-04-20',10208,1134,5043,132,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200209,'Wrapsafe',10,'available','2022-01-25',10209,1055,5067,119,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200210,'Mat Lam Tam',46,'available','2022-08-20',10210,1133,5028,102,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200211,'Flowdesk',35,'available','2022-11-03',10211,1023,5072,106,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200212,'Bigtax',46,'available','2022-07-09',10212,1063,5054,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200213,'Sub-Ex',40,'available','2022-05-29',10213,1142,5022,119,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200214,'Konklab',35,'available','2022-06-18',10214,1093,5096,126,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200215,'Temp',12,'available','2022-07-20',10215,1044,5035,148,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200216,'Holdlamis',16,'unavailable','2022-11-28',10216,1013,5100,126,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200217,'Zathin',34,'available','2022-01-03',10217,1061,5083,109,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200218,'Cardify',31,'available','2022-11-14',10218,1196,5076,129,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200219,'Job',48,'available','2022-07-05',10219,1169,5092,120,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200220,'Viva',41,'available','2022-10-14',10220,1078,5067,135,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200221,'Veribet',28,'unavailable','2022-02-21',10221,1076,5028,134,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200222,'Zontrax',29,'available','2022-03-28',10222,1075,5009,145,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200223,'Stringtough',36,'available','2022-11-04',10223,1112,5087,139,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200224,'Transcof',31,'available','2022-12-10',10224,1084,5096,139,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200225,'Namfix',32,'available','2022-10-17',10225,1170,5097,102,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200226,'Fintone',19,'available','2022-09-27',10226,1042,5058,131,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200227,'Tin',23,'available','2022-11-10',10227,1054,5100,135,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200228,'Home Ing',38,'available','2022-06-13',10228,1007,5046,139,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200229,'Voltsillam',35,'unavailable','2022-07-21',10229,1155,5084,117,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200230,'Alpha',34,'available','2022-09-27',10230,1179,5026,147,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200231,'Keylex',14,'available','2022-10-15',10231,1066,5052,118,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200232,'Voltsillam',48,'available','2022-09-10',10232,1099,5021,119,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200233,'Tempsoft',16,'available','2022-10-24',10233,1047,5006,127,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200234,'Overhold',48,'available','2022-04-23',10234,1137,5081,140,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200235,'Sonair',25,'unavailable','2022-05-02',10235,1052,5040,107,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200236,'Holdlamis',15,'available','2022-03-02',10236,1041,5009,104,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200237,'Cookley',31,'unavailable','2022-10-13',10237,1122,5086,131,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200238,'Temp',11,'unavailable','2022-05-26',10238,1176,5034,105,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200239,'Holdlamis',40,'available','2022-01-31',10239,1130,5062,107,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200240,'Alphazap',40,'available','2022-07-23',10240,1088,5044,149,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200241,'Tresom',41,'unavailable','2022-02-12',10241,1131,5034,113,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200242,'Tres-Zap',28,'unavailable','2022-03-11',10242,1117,5001,110,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200243,'Vagram',12,'available','2022-11-03',10243,1163,5001,149,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200244,'Zamit',41,'available','2022-09-19',10244,1036,5020,104,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200245,'Domainer',42,'available','2022-06-14',10245,1193,5033,101,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200246,'Greenlam',17,'unavailable','2022-04-25',10246,1079,5029,150,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200247,'Transcof',34,'available','2022-02-17',10247,1033,5014,141,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200248,'Konklux',11,'unavailable','2022-01-17',10248,1058,5023,131,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200249,'Asoka',18,'available','2022-01-07',10249,1119,5070,145,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200250,'Tempsoft',37,'available','2022-12-05',10250,1104,5066,132,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200251,'Lotlux',41,'available','2022-06-21',10251,1192,5060,139,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200252,'Domainer',12,'unavailable','2022-09-15',10252,1053,5035,130,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200253,'Y-find',32,'available','2022-11-11',10253,1194,5031,128,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200254,'Fix San',31,'available','2022-12-28',10254,1069,5045,108,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200255,'Bigtax',42,'unavailable','2022-02-11',10255,1123,5098,122,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200256,'Opela',41,'available','2022-12-28',10256,1188,5088,109,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200257,'Quo Lux',36,'available','2022-06-17',10257,1140,5044,134,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200258,'Y-find',49,'available','2022-08-24',10258,1182,5044,117,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200259,'Fix San',30,'available','2022-07-17',10259,1104,5025,143,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200260,'Trippledex',15,'available','2022-05-07',10260,1032,5030,114,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200261,'Veribet',35,'available','2022-11-17',10261,1053,5057,135,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200262,'Lotlux',24,'available','2022-09-08',10262,1094,5005,127,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200263,'Stronghold',11,'available','2022-08-11',10263,1178,5072,133,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200264,'Stringtough',20,'available','2022-01-23',10264,1166,5040,128,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200265,'Keylex',40,'available','2022-10-19',10265,1192,5076,140,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200266,'Cookley',32,'available','2022-03-22',10266,1103,5082,123,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200267,'Sonair',31,'available','2022-04-14',10267,1109,5046,107,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200268,'Treeflex',47,'unavailable','2022-01-20',10268,1036,5047,135,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200269,'Flowdesk',23,'available','2022-12-17',10269,1197,5069,145,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200270,'Domainer',40,'unavailable','2022-09-09',10270,1106,5092,146,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200271,'Vagram',34,'unavailable','2022-05-18',10271,1085,5087,147,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200272,'Rank',46,'available','2022-06-28',10272,1159,5002,139,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200273,'Redhold',17,'available','2022-07-11',10273,1104,5080,102,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200274,'Zoolab',12,'available','2022-10-13',10274,1026,5084,112,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200275,'Redhold',39,'unavailable','2022-10-21',10275,1107,5041,118,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200276,'Lotstring',35,'available','2022-10-02',10276,1140,5006,114,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200277,'Otcom',37,'unavailable','2022-02-26',10277,1176,5050,102,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200278,'Flexidy',50,'available','2022-11-25',10278,1018,5087,105,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200279,'Flowdesk',41,'available','2022-09-23',10279,1048,5043,123,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200280,'Toughjoyfax',21,'unavailable','2022-08-14',10280,1019,5004,121,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200281,'Job',23,'available','2022-10-11',10281,1189,5054,102,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200282,'Fixflex',39,'unavailable','2022-05-29',10282,1092,5035,144,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200283,'Transcof',24,'available','2022-05-26',10283,1167,5053,113,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200284,'Zoolab',20,'unavailable','2022-03-10',10284,1032,5008,118,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200285,'Konklab',50,'available','2022-09-13',10285,1034,5045,130,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200286,'Andalax',43,'available','2022-07-12',10286,1136,5019,137,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200287,'Latlux',31,'available','2022-02-23',10287,1010,5076,148,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200288,'Ventosanzap',18,'available','2022-07-24',10288,1170,5016,143,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200289,'Matsoft',38,'available','2022-03-01',10289,1159,5056,142,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200290,'Ventosanzap',16,'available','2022-11-16',10290,1156,5036,111,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200291,'Zaam-Dox',27,'available','2022-08-22',10291,1117,5068,116,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200292,'Redhold',39,'available','2022-09-12',10292,1170,5062,138,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200293,'Viva',36,'available','2022-08-10',10293,1173,5061,139,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200294,'Zaam-Dox',19,'available','2022-07-30',10294,1144,5062,123,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200295,'Toughjoyfax',47,'available','2022-11-03',10295,1010,5038,146,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200296,'Quo Lux',45,'available','2022-09-29',10296,1163,5083,116,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200297,'Bamity',11,'available','2022-03-14',10297,1126,5074,135,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200298,'Home Ing',32,'available','2022-05-02',10298,1018,5100,146,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200299,'Quo Lux',23,'available','2022-08-05',10299,1188,5004,139,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200300,'Greenlam',40,'available','2022-11-05',10300,1102,5024,144,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200301,'Konklux',15,'available','2022-05-24',10301,1038,5077,148,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200302,'Stronghold',41,'available','2022-04-06',10302,1049,5068,106,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200303,'Overhold',14,'available','2022-08-16',10303,1115,5004,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200304,'Rank',31,'available','2022-12-26',10304,1126,5039,148,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200305,'Transcof',45,'available','2022-07-20',10305,1125,5071,126,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200306,'Fintone',10,'available','2022-08-27',10306,1165,5030,118,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200307,'Fixflex',33,'available','2022-06-15',10307,1120,5069,102,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200308,'Tresom',47,'available','2022-06-13',10308,1029,5081,109,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200309,'Subin',23,'available','2022-12-26',10309,1121,5082,117,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200310,'Bitwolf',34,'available','2022-11-28',10310,1123,5046,112,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200311,'Fintone',12,'available','2022-07-11',10311,1146,5094,108,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200312,'Tresom',34,'unavailable','2022-12-12',10312,1138,5046,102,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200313,'Daltfresh',31,'available','2022-12-12',10313,1056,5083,145,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200314,'Opela',49,'unavailable','2022-01-27',10314,1195,5002,126,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200315,'Hatity',41,'available','2022-11-15',10315,1131,5089,129,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200316,'Tresom',31,'available','2022-01-28',10316,1062,5046,143,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200317,'Tempsoft',19,'available','2022-10-26',10317,1020,5013,145,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200318,'Redhold',46,'unavailable','2022-10-24',10318,1106,5079,138,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200319,'Hatity',23,'available','2022-03-28',10319,1019,5057,112,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200320,'Bigtax',48,'available','2022-06-10',10320,1045,5065,116,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200321,'Keylex',13,'available','2022-06-15',10321,1197,5052,135,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200322,'Temp',26,'available','2022-12-10',10322,1076,5084,109,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200323,'Tempsoft',38,'unavailable','2022-06-12',10323,1170,5077,132,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200324,'Aerified',28,'available','2022-11-19',10324,1060,5068,108,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200325,'Kanlam',11,'available','2022-12-07',10325,1183,5032,101,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200326,'Fix San',46,'available','2022-05-07',10326,1133,5077,104,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200327,'Redhold',33,'unavailable','2022-09-03',10327,1080,5061,116,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200328,'Alphazap',13,'unavailable','2022-04-29',10328,1184,5068,120,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200329,'Temp',34,'available','2022-02-06',10329,1074,5089,129,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200330,'Voltsillam',23,'unavailable','2022-07-22',10330,1032,5014,113,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200331,'Fix San',11,'available','2022-11-10',10331,1004,5014,109,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200332,'Sub-Ex',40,'available','2022-07-01',10332,1102,5009,128,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200333,'Y-Solowarm',23,'available','2022-09-04',10333,1185,5022,105,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200334,'Quo Lux',39,'unavailable','2022-11-04',10334,1147,5029,133,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200335,'Tempsoft',33,'available','2022-12-30',10335,1128,5059,125,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200336,'Alpha',36,'unavailable','2022-09-30',10336,1116,5061,116,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200337,'Bigtax',31,'available','2022-01-31',10337,1098,5014,138,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200338,'Lotlux',40,'available','2022-10-12',10338,1122,5065,126,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200339,'Konklab',25,'available','2022-11-05',10339,1103,5012,136,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200340,'Voltsillam',12,'unavailable','2022-06-28',10340,1075,5052,137,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200341,'Bamity',12,'available','2022-12-09',10341,1191,5041,143,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200342,'Namfix',12,'available','2022-02-12',10342,1150,5024,131,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200343,'Home Ing',48,'available','2022-03-04',10343,1190,5045,114,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200344,'Transcof',29,'available','2022-12-10',10344,1082,5083,127,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200345,'Keylex',40,'unavailable','2022-03-19',10345,1183,5063,121,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200346,'Andalax',16,'available','2022-11-30',10346,1165,5060,139,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200347,'Asoka',32,'available','2022-08-27',10347,1172,5071,121,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200348,'Sub-Ex',14,'unavailable','2022-06-06',10348,1068,5086,111,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200349,'Lotlux',45,'available','2022-07-18',10349,1083,5008,127,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200350,'Span',46,'unavailable','2022-11-22',10350,1119,5019,135,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200351,'Lotlux',28,'available','2022-02-08',10351,1029,5091,144,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200352,'Fintone',45,'unavailable','2022-06-29',10352,1073,5097,148,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200353,'Trippledex',12,'available','2022-07-14',10353,1009,5025,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200354,'Flowdesk',46,'available','2022-09-13',10354,1112,5078,118,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200355,'Vagram',49,'available','2022-07-09',10355,1196,5038,114,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200356,'Konklab',41,'available','2022-06-16',10356,1060,5091,134,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200357,'Wrapsafe',30,'available','2022-08-26',10357,1112,5003,101,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200358,'Stronghold',23,'available','2022-09-22',10358,1068,5042,109,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200359,'Otcom',42,'available','2022-02-05',10359,1078,5033,129,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200360,'Quo Lux',44,'unavailable','2022-03-03',10360,1187,5039,111,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200361,'Biodex',30,'available','2022-07-20',10361,1123,5097,139,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200362,'Zontrax',12,'available','2022-01-09',10362,1143,5032,141,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200363,'Domainer',42,'available','2022-11-24',10363,1178,5027,103,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200364,'Cookley',24,'available','2022-05-18',10364,1081,5003,127,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200365,'Otcom',13,'unavailable','2022-08-19',10365,1200,5092,126,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200366,'Lotstring',11,'available','2022-08-05',10366,1058,5060,137,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200367,'Job',50,'available','2022-10-28',10367,1190,5058,122,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200368,'Asoka',32,'available','2022-02-16',10368,1154,5080,124,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200369,'Bytecard',28,'available','2022-07-22',10369,1134,5033,142,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200370,'Stronghold',23,'available','2022-12-24',10370,1078,5068,113,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200371,'Ronstring',36,'available','2022-11-10',10371,1051,5057,137,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200372,'Bigtax',10,'available','2022-12-16',10372,1081,5056,107,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200373,'Pannier',35,'available','2022-03-18',10373,1099,5026,113,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200374,'Biodex',28,'available','2022-12-09',10374,1034,5087,142,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200375,'Zontrax',48,'available','2022-02-15',10375,1171,5017,103,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200376,'Temp',27,'available','2022-12-11',10376,1065,5089,103,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200377,'Home Ing',45,'available','2022-10-20',10377,1181,5005,139,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200378,'Zontrax',47,'available','2022-06-12',10378,1036,5042,131,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200379,'Quo Lux',49,'available','2022-01-01',10379,1147,5085,125,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200380,'Prodder',28,'available','2022-04-30',10380,1019,5066,124,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200381,'Bamity',18,'available','2022-07-23',10381,1055,5056,107,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200382,'Fintone',46,'unavailable','2022-12-30',10382,1158,5054,133,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200383,'Voltsillam',12,'available','2022-08-16',10383,1059,5085,139,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200384,'Biodex',24,'available','2022-01-20',10384,1113,5028,132,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200385,'Rank',43,'available','2022-01-21',10385,1088,5078,142,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200386,'Zontrax',11,'unavailable','2022-08-22',10386,1156,5049,149,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200387,'Wrapsafe',26,'unavailable','2022-08-13',10387,1132,5003,120,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200388,'Stronghold',35,'available','2022-04-15',10388,1001,5036,138,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200389,'Toughjoyfax',36,'available','2022-06-11',10389,1193,5007,103,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200390,'Holdlamis',16,'available','2022-08-13',10390,1027,5092,147,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200391,'Bigtax',49,'available','2022-02-05',10391,1016,5053,140,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200392,'Alphazap',34,'available','2022-04-22',10392,1016,5043,141,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200393,'Alphazap',19,'available','2022-06-26',10393,1038,5004,150,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200394,'Treeflex',12,'available','2022-02-24',10394,1028,5097,108,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200395,'Toughjoyfax',20,'available','2022-07-08',10395,1074,5028,136,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200396,'Regrant',38,'available','2022-03-30',10396,1056,5089,125,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200397,'Cardguard',37,'available','2022-06-01',10397,1163,5059,104,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200398,'Tresom',13,'available','2022-02-22',10398,1144,5028,125,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200399,'Namfix',33,'available','2022-08-28',10399,1196,5081,121,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200400,'Fixflex',35,'available','2022-12-23',10400,1183,5088,149,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200401,'Ronstring',45,'available','2022-10-07',10390,1061,5011,114,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200402,'Andalax',39,'available','2022-07-04',10273,1182,5099,104,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200403,'Solarbreeze',12,'available','2022-05-10',10345,1190,5006,118,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200404,'Alphazap',41,'available','2022-07-31',10239,1012,5084,107,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200405,'Cookley',20,'available','2022-01-16',10047,1007,5048,137,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200406,'Voyatouch',20,'available','2022-12-15',10110,1031,5012,105,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200407,'It',11,'available','2022-02-09',10141,1086,5021,144,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200408,'Tampflex',20,'available','2022-09-04',10276,1138,5016,107,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200409,'Namfix',40,'unavailable','2022-02-03',10154,1199,5085,120,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200410,'Sonair',24,'available','2022-10-11',10304,1138,5034,117,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200411,'Span',29,'available','2022-03-23',10271,1061,5025,123,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200412,'Stronghold',41,'available','2022-05-23',10150,1066,5062,130,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200413,'Fixflex',43,'available','2022-02-18',10260,1026,5011,148,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200414,'Home Ing',10,'available','2022-06-03',10315,1094,5010,140,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200415,'Duobam',11,'available','2022-11-22',10176,1067,5027,117,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200416,'Bitchip',13,'available','2022-05-21',10320,1152,5086,135,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200417,'Tampflex',26,'unavailable','2022-02-26',10384,1162,5058,145,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200418,'Trippledex',49,'available','2022-03-14',10160,1165,5046,124,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200419,'Voyatouch',27,'unavailable','2022-04-23',10066,1143,5072,115,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200420,'Solarbreeze',21,'unavailable','2022-03-09',10010,1102,5024,142,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200421,'Prodder',38,'unavailable','2022-03-10',10085,1125,5055,128,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200422,'Zaam-Dox',30,'available','2022-12-19',10259,1114,5054,115,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200423,'Zoolab',33,'available','2022-02-13',10152,1077,5061,145,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200424,'Overhold',21,'available','2022-11-29',10129,1138,5015,116,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200425,'Vagram',15,'unavailable','2022-09-30',10231,1098,5073,149,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200426,'Zaam-Dox',20,'available','2022-03-12',10365,1115,5019,128,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200427,'Gembucket',12,'available','2022-02-03',10041,1099,5082,117,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200428,'Zontrax',20,'unavailable','2022-12-16',10048,1095,5017,141,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200429,'Alphazap',36,'available','2022-03-18',10390,1073,5029,131,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200430,'Opela',11,'available','2022-07-29',10354,1033,5065,107,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200431,'Namfix',48,'unavailable','2022-08-31',10379,1052,5068,146,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200432,'Zamit',25,'unavailable','2022-03-27',10134,1011,5073,146,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200433,'Redhold',31,'available','2022-03-19',10265,1105,5015,105,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200434,'Bigtax',33,'available','2022-12-30',10226,1197,5080,101,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200435,'Zamit',22,'available','2022-08-17',10017,1102,5022,115,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200436,'Keylex',10,'available','2022-06-18',10123,1026,5090,147,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200437,'Prodder',25,'unavailable','2022-05-14',10333,1162,5044,127,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200438,'Y-find',37,'available','2022-08-23',10226,1110,5039,117,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200439,'Alpha',35,'available','2022-12-14',10222,1150,5077,136,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200440,'Stringtough',50,'available','2022-01-06',10386,1073,5092,127,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200441,'Zamit',33,'unavailable','2022-08-11',10032,1027,5001,134,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200442,'Voyatouch',12,'available','2022-10-30',10308,1198,5097,131,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200443,'Fix San',36,'available','2022-11-01',10388,1057,5068,106,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200444,'Konklux',50,'available','2022-09-22',10330,1019,5046,114,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200445,'Quo Lux',43,'available','2022-06-24',10294,1154,5060,128,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200446,'Job',26,'unavailable','2022-04-19',10176,1158,5016,120,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200447,'Job',35,'available','2022-11-05',10189,1016,5060,128,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200448,'Transcof',38,'available','2022-03-29',10108,1097,5004,110,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200449,'Keylex',44,'available','2022-05-02',10023,1073,5046,128,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200450,'Stronghold',36,'available','2022-07-30',10255,1073,5016,101,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200451,'Solarbreeze',43,'available','2022-03-21',10220,1023,5068,102,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200452,'Ronstring',25,'unavailable','2022-09-22',10125,1164,5082,113,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200453,'Toughjoyfax',38,'available','2022-05-11',10230,1182,5003,134,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200454,'Cardguard',42,'available','2022-01-01',10073,1142,5083,121,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200455,'Wrapsafe',42,'available','2022-07-03',10301,1179,5005,118,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200456,'Tin',39,'available','2022-12-07',10392,1032,5072,143,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200457,'Overhold',17,'available','2022-09-19',10282,1195,5012,138,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200458,'Ventosanzap',37,'unavailable','2022-01-15',10048,1123,5062,115,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200459,'Hatity',24,'unavailable','2022-01-26',10026,1079,5063,125,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200460,'Konklux',11,'available','2022-05-05',10396,1127,5062,117,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200461,'Tampflex',15,'available','2022-02-05',10052,1041,5001,144,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200462,'Bigtax',17,'unavailable','2022-07-19',10064,1100,5039,126,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200463,'Regrant',44,'available','2022-03-15',10331,1094,5021,114,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200464,'Treeflex',15,'available','2022-04-13',10176,1049,5094,143,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200465,'Home Ing',49,'unavailable','2022-03-06',10063,1016,5015,137,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200466,'Lotstring',31,'available','2022-03-05',10064,1183,5015,118,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200467,'Home Ing',10,'available','2022-11-15',10201,1026,5075,104,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200468,'Aerified',25,'available','2022-10-06',10061,1165,5091,149,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200469,'Kanlam',13,'unavailable','2022-06-13',10009,1017,5094,109,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200470,'Tres-Zap',17,'available','2022-02-02',10367,1030,5039,103,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200471,'Fintone',42,'available','2022-10-22',10076,1045,5009,108,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200472,'Temp',19,'unavailable','2022-06-29',10044,1175,5084,123,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200473,'Stronghold',25,'available','2022-04-15',10329,1160,5051,130,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200474,'Sonair',45,'available','2022-05-12',10334,1147,5014,102,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200475,'Alpha',35,'unavailable','2022-05-03',10168,1021,5046,115,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200476,'Y-Solowarm',48,'available','2022-11-28',10318,1090,5029,101,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200477,'Konklux',46,'available','2022-04-29',10145,1187,5062,135,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200478,'Solarbreeze',26,'available','2022-04-30',10080,1019,5022,144,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200479,'Quo Lux',36,'available','2022-08-21',10025,1046,5019,118,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200480,'Vagram',13,'available','2022-05-21',10076,1171,5069,129,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200481,'Tin',14,'available','2022-06-22',10352,1078,5026,105,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200482,'Zathin',10,'available','2022-05-14',10252,1181,5027,111,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200483,'Rank',18,'available','2022-09-13',10285,1119,5030,148,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200484,'Solarbreeze',20,'available','2022-04-16',10119,1120,5047,149,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200485,'Fix San',25,'available','2022-02-13',10320,1150,5030,108,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200486,'Domainer',24,'available','2022-07-19',10382,1154,5045,136,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200487,'Bitchip',38,'available','2022-06-17',10314,1110,5005,120,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200488,'Regrant',37,'available','2022-07-04',10143,1046,5054,103,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200489,'Sub-Ex',18,'available','2022-07-14',10179,1065,5086,130,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200490,'Namfix',26,'available','2022-02-28',10071,1090,5084,149,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200491,'Home Ing',43,'available','2022-03-19',10336,1077,5047,150,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200492,'Cardguard',23,'available','2022-07-29',10203,1115,5024,144,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200493,'Bitwolf',38,'available','2022-09-03',10353,1155,5022,124,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200494,'Hatity',41,'available','2022-07-29',10336,1113,5012,142,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200495,'Voltsillam',49,'available','2022-07-06',10375,1167,5067,122,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200496,'Cardguard',22,'available','2022-10-28',10188,1007,5037,133,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200497,'Trippledex',22,'available','2022-12-18',10384,1118,5068,147,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200498,'Fintone',42,'unavailable','2022-09-29',10072,1177,5016,150,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200499,'Hatity',29,'available','2022-02-02',10070,1087,5049,149,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200500,'Lotstring',35,'available','2022-02-20',10226,1135,5070,144,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200501,'Domainer',45,'unavailable','2022-05-21',10393,1144,5076,110,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200502,'Redhold',23,'unavailable','2022-12-17',10071,1011,5040,122,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200503,'Quo Lux',11,'unavailable','2022-02-06',10399,1033,5042,121,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200504,'Y-Solowarm',27,'available','2022-11-18',10100,1080,5078,129,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200505,'Namfix',30,'available','2022-02-10',10282,1051,5096,116,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200506,'Greenlam',36,'available','2022-06-27',10065,1034,5028,140,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200507,'Holdlamis',34,'available','2022-11-28',10230,1082,5068,131,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200508,'Konklab',45,'unavailable','2022-02-15',10276,1093,5082,150,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200509,'Biodex',23,'unavailable','2022-02-14',10379,1155,5038,103,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200510,'Stronghold',15,'available','2022-07-09',10014,1165,5027,140,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200511,'Holdlamis',37,'available','2022-02-25',10141,1051,5008,102,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200512,'Job',48,'available','2022-07-15',10243,1090,5059,146,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200513,'Temp',46,'available','2022-09-13',10347,1073,5041,144,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200514,'Stim',21,'available','2022-03-18',10061,1113,5089,121,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200515,'Lotlux',28,'available','2022-05-29',10035,1173,5026,133,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200516,'Cookley',23,'available','2022-11-22',10255,1057,5076,138,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200517,'Wrapsafe',31,'unavailable','2022-07-10',10118,1070,5051,139,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200518,'Opela',28,'available','2022-03-22',10392,1001,5017,123,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200519,'Stim',23,'unavailable','2022-06-20',10200,1135,5089,142,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200520,'Temp',36,'unavailable','2022-01-27',10227,1056,5092,117,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200521,'Namfix',29,'available','2022-02-20',10212,1089,5017,137,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200522,'Zaam-Dox',16,'unavailable','2022-09-26',10126,1134,5072,123,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200523,'Gembucket',21,'available','2022-12-26',10295,1046,5053,106,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200524,'Tresom',34,'unavailable','2022-12-10',10014,1145,5055,132,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200525,'Latlux',42,'available','2022-08-07',10266,1070,5063,101,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200526,'Rank',39,'available','2022-08-22',10194,1028,5055,106,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200527,'Regrant',12,'available','2022-06-03',10147,1111,5087,122,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200528,'Sub-Ex',10,'available','2022-10-26',10278,1171,5024,131,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200529,'Bytecard',27,'available','2022-10-02',10116,1049,5020,114,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200530,'Daltfresh',20,'available','2022-12-19',10304,1191,5082,144,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200531,'Subin',43,'available','2022-07-23',10397,1071,5090,133,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200532,'Pannier',22,'unavailable','2022-06-04',10279,1089,5100,135,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200533,'Overhold',23,'available','2022-06-09',10181,1198,5065,145,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200534,'Solarbreeze',22,'available','2022-01-15',10055,1195,5042,103,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200535,'Quo Lux',34,'available','2022-07-24',10176,1076,5076,136,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200536,'Flowdesk',34,'available','2022-05-03',10122,1183,5053,106,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200537,'Aerified',17,'available','2022-08-26',10284,1109,5075,113,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200538,'Stringtough',27,'available','2022-09-27',10313,1182,5012,108,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200539,'Keylex',17,'available','2022-04-24',10110,1065,5079,150,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200540,'Otcom',49,'unavailable','2022-06-15',10377,1016,5072,120,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200541,'Biodex',26,'available','2022-05-17',10005,1191,5056,127,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200542,'Andalax',50,'available','2022-08-13',10322,1006,5027,135,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200543,'Sonsing',10,'available','2022-04-06',10244,1197,5005,117,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200544,'Bitwolf',26,'unavailable','2022-06-16',10122,1002,5019,141,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200545,'Konklux',18,'available','2022-08-11',10150,1114,5019,107,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200546,'Rank',29,'available','2022-11-11',10386,1181,5007,137,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200547,'Cookley',35,'available','2022-10-17',10318,1068,5100,106,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200548,'Andalax',28,'available','2022-02-27',10216,1094,5074,111,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200549,'Fixflex',35,'available','2022-06-07',10337,1113,5018,121,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200550,'Gembucket',50,'unavailable','2022-07-10',10371,1016,5018,109,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200551,'Cardify',49,'available','2022-02-08',10058,1057,5076,129,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200552,'Ronstring',22,'available','2022-09-13',10371,1191,5033,102,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200553,'Redhold',50,'unavailable','2022-12-09',10266,1160,5088,147,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200554,'Overhold',41,'unavailable','2022-03-19',10252,1031,5070,115,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200555,'Bamity',23,'available','2022-02-10',10088,1079,5002,138,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200556,'Opela',15,'available','2022-09-15',10212,1175,5069,128,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200557,'Regrant',23,'available','2022-06-02',10281,1066,5021,133,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200558,'Lotlux',17,'available','2022-12-18',10185,1023,5026,135,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200559,'Mat Lam Tam',22,'available','2022-06-08',10023,1179,5021,121,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200560,'Tres-Zap',33,'available','2022-07-15',10078,1077,5033,106,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200561,'Bigtax',10,'available','2022-09-19',10002,1052,5062,139,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200562,'Greenlam',43,'unavailable','2022-07-25',10351,1036,5061,126,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200563,'Keylex',46,'available','2022-08-18',10162,1001,5073,117,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200564,'Sonsing',31,'unavailable','2022-03-27',10327,1168,5055,110,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200565,'Lotstring',48,'available','2022-10-21',10067,1017,5036,129,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200566,'Latlux',45,'available','2022-10-01',10083,1155,5037,150,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200567,'Solarbreeze',22,'available','2022-11-26',10019,1173,5007,123,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200568,'Home Ing',48,'available','2022-10-25',10370,1129,5060,117,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200569,'Transcof',34,'available','2022-02-03',10349,1087,5055,120,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200570,'Y-Solowarm',40,'available','2022-05-10',10347,1052,5060,135,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200571,'Mat Lam Tam',21,'available','2022-08-08',10117,1023,5029,105,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200572,'Bamity',44,'available','2022-06-04',10052,1029,5096,103,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200573,'Tin',31,'available','2022-04-11',10198,1060,5035,127,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200574,'Y-Solowarm',17,'available','2022-02-27',10387,1125,5050,138,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200575,'Toughjoyfax',11,'unavailable','2022-01-12',10195,1047,5014,105,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200576,'Bamity',47,'available','2022-01-25',10004,1056,5012,102,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200577,'Viva',43,'available','2022-07-15',10087,1070,5005,103,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200578,'Zathin',17,'available','2022-08-18',10034,1037,5083,136,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200579,'Rank',10,'available','2022-04-26',10335,1050,5092,102,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200580,'Greenlam',25,'available','2022-11-18',10095,1122,5052,107,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200581,'Y-Solowarm',28,'unavailable','2022-10-10',10272,1035,5067,143,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200582,'Bytecard',40,'available','2022-06-25',10098,1042,5093,122,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200583,'Gembucket',19,'available','2022-07-27',10345,1073,5037,114,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200584,'Mat Lam Tam',33,'available','2022-04-14',10229,1109,5020,148,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200585,'Gembucket',15,'available','2022-07-28',10062,1049,5041,109,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200586,'Bigtax',22,'available','2022-10-10',10209,1158,5076,137,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200587,'Zontrax',31,'available','2022-09-29',10393,1177,5035,117,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200588,'Overhold',16,'unavailable','2022-03-08',10264,1121,5020,131,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200589,'Lotlux',18,'available','2022-09-15',10175,1022,5026,130,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200590,'Cardify',45,'available','2022-09-14',10212,1103,5052,149,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200591,'Alpha',27,'available','2022-09-16',10051,1079,5006,137,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200592,'Regrant',27,'available','2022-08-03',10134,1132,5033,130,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200593,'Tampflex',18,'unavailable','2022-02-02',10305,1030,5072,128,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200594,'Veribet',23,'available','2022-07-04',10277,1153,5046,119,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200595,'Flexidy',49,'available','2022-07-19',10083,1142,5023,112,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200596,'Veribet',30,'available','2022-12-22',10133,1183,5040,123,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200597,'Zathin',48,'unavailable','2022-12-27',10307,1041,5002,144,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200598,'Rank',33,'available','2022-06-24',10054,1083,5076,106,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200599,'Ventosanzap',41,'unavailable','2022-05-17',10109,1073,5095,142,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200600,'Bigtax',36,'unavailable','2022-12-09',10203,1017,5075,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200601,'Zathin',25,'available','2022-11-04',10090,1141,5056,124,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200602,'Pannier',18,'available','2022-12-15',10389,1173,5059,145,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200603,'Quo Lux',49,'available','2022-12-20',10145,1033,5037,144,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200604,'Ronstring',41,'unavailable','2022-10-12',10057,1142,5002,132,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200605,'Ventosanzap',21,'unavailable','2022-02-01',10011,1057,5075,127,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200606,'Zathin',48,'unavailable','2022-11-14',10206,1036,5072,130,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200607,'Y-find',42,'available','2022-08-23',10110,1131,5033,102,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200608,'Vagram',30,'available','2022-04-26',10384,1196,5056,124,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200609,'Zaam-Dox',39,'available','2022-04-11',10080,1062,5025,125,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200610,'Fixflex',30,'available','2022-06-30',10317,1017,5098,106,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200611,'Domainer',33,'available','2022-05-21',10109,1155,5016,144,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200612,'Opela',50,'available','2022-05-28',10393,1017,5065,116,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200613,'Domainer',19,'available','2022-07-03',10252,1025,5062,110,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200614,'Lotlux',28,'available','2022-03-26',10126,1123,5061,145,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200615,'Tampflex',40,'unavailable','2022-03-26',10357,1136,5057,126,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200616,'Mat Lam Tam',47,'unavailable','2022-03-15',10357,1174,5053,113,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200617,'Fixflex',13,'available','2022-12-30',10006,1188,5096,101,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200618,'Redhold',49,'available','2022-08-02',10286,1191,5029,125,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200619,'Domainer',15,'available','2022-03-11',10030,1130,5066,123,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200620,'Cardify',40,'available','2022-01-26',10398,1197,5032,109,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200621,'Zamit',34,'available','2022-05-29',10268,1002,5096,145,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200622,'Latlux',43,'available','2022-05-05',10243,1140,5071,102,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200623,'Flexidy',13,'available','2022-08-28',10043,1129,5060,124,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200624,'It',10,'unavailable','2022-08-31',10125,1194,5080,102,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200625,'Konklab',22,'available','2022-01-25',10075,1099,5079,141,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200626,'Stringtough',40,'available','2022-01-20',10382,1013,5001,102,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200627,'Tampflex',47,'available','2022-11-24',10050,1189,5047,133,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200628,'Tin',24,'available','2022-08-12',10224,1048,5012,119,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200629,'Zathin',30,'available','2022-01-03',10376,1054,5029,112,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200630,'Konklab',15,'available','2022-04-30',10239,1076,5019,102,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200631,'Asoka',14,'available','2022-05-25',10309,1137,5017,138,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200632,'Sonsing',24,'available','2022-11-03',10074,1034,5024,110,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200633,'Fix San',39,'available','2022-07-20',10228,1178,5011,102,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200634,'Asoka',26,'available','2022-10-06',10384,1174,5097,137,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200635,'Asoka',45,'available','2022-02-25',10070,1070,5027,113,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200636,'Quo Lux',16,'available','2022-12-25',10352,1174,5037,135,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200637,'Bamity',39,'available','2022-06-03',10216,1005,5030,117,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200638,'Transcof',46,'available','2022-12-27',10115,1093,5035,109,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200639,'Hatity',18,'available','2022-06-17',10116,1160,5067,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200640,'Flowdesk',46,'available','2022-08-12',10024,1005,5076,103,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200641,'Bitchip',12,'available','2022-02-22',10260,1081,5085,142,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200642,'Overhold',19,'available','2022-01-31',10270,1058,5050,110,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200643,'Tres-Zap',42,'available','2022-05-03',10282,1138,5019,117,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200644,'Alpha',25,'available','2022-05-28',10153,1007,5039,121,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200645,'Biodex',29,'available','2022-08-04',10175,1026,5087,130,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200646,'Prodder',44,'available','2022-07-10',10109,1013,5094,144,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200647,'Voltsillam',45,'available','2022-03-29',10317,1117,5048,132,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200648,'Voyatouch',24,'available','2022-01-29',10215,1137,5061,130,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200649,'Lotstring',17,'available','2022-09-15',10376,1048,5100,140,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200650,'Stim',26,'unavailable','2022-01-13',10303,1161,5044,119,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200651,'Zamit',36,'available','2022-05-30',10348,1090,5013,135,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200652,'Zontrax',19,'unavailable','2022-05-11',10243,1077,5050,118,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200653,'Tin',13,'available','2022-10-19',10265,1007,5064,148,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200654,'Flowdesk',36,'available','2022-01-31',10365,1158,5049,145,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200655,'Ventosanzap',20,'available','2022-06-08',10293,1126,5082,116,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200656,'Voyatouch',15,'available','2022-03-07',10360,1149,5058,138,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200657,'Stim',36,'unavailable','2022-08-09',10226,1033,5074,126,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200658,'Job',46,'available','2022-06-18',10123,1049,5009,140,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200659,'Veribet',19,'available','2022-12-07',10307,1044,5022,139,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200660,'Konklab',40,'available','2022-08-12',10187,1062,5097,124,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200661,'Cardify',30,'unavailable','2022-11-20',10125,1167,5063,148,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200662,'Namfix',40,'available','2022-10-24',10300,1009,5007,106,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200663,'Latlux',12,'available','2022-09-22',10228,1146,5027,108,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200664,'Matsoft',10,'available','2022-12-18',10385,1118,5004,112,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200665,'Sonsing',13,'available','2022-08-01',10372,1018,5068,131,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200666,'Opela',26,'available','2022-10-19',10241,1086,5084,144,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200667,'It',24,'available','2022-09-22',10068,1034,5019,150,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200668,'Trippledex',39,'available','2022-04-20',10383,1102,5048,126,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200669,'Treeflex',36,'unavailable','2022-06-30',10084,1135,5078,117,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200670,'Y-Solowarm',36,'unavailable','2022-10-10',10288,1055,5073,116,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200671,'Aerified',38,'unavailable','2022-05-15',10018,1110,5099,129,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200672,'Transcof',33,'available','2022-05-01',10168,1120,5013,139,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200673,'Overhold',22,'available','2022-12-09',10266,1170,5006,104,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200674,'Ventosanzap',11,'available','2022-12-09',10209,1170,5046,121,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200675,'Cardguard',22,'available','2022-06-08',10001,1166,5070,111,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200676,'Rank',16,'unavailable','2022-08-05',10220,1003,5097,127,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200677,'Overhold',11,'available','2022-02-07',10190,1010,5001,139,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200678,'Stronghold',44,'unavailable','2022-11-07',10026,1117,5021,138,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200679,'Flexidy',48,'available','2022-01-01',10239,1117,5098,105,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200680,'Greenlam',42,'unavailable','2022-11-23',10284,1090,5100,139,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200681,'Konklux',36,'available','2022-04-29',10350,1170,5089,126,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200682,'It',15,'available','2022-01-02',10370,1132,5013,130,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200683,'Bitchip',11,'available','2022-08-19',10184,1007,5059,109,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200684,'Voyatouch',42,'available','2022-07-07',10194,1074,5040,150,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200685,'Stim',20,'available','2022-04-04',10387,1192,5001,147,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200686,'Subin',24,'available','2022-10-28',10351,1085,5053,142,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200687,'Flowdesk',28,'available','2022-11-23',10273,1040,5020,147,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200688,'Otcom',41,'available','2022-10-28',10188,1043,5056,146,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200689,'Tin',34,'available','2022-05-23',10399,1066,5100,136,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200690,'Hatity',19,'available','2022-09-04',10051,1054,5024,116,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200691,'Hatity',22,'available','2022-04-30',10279,1091,5086,126,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200692,'Wrapsafe',45,'available','2022-09-17',10171,1027,5001,131,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200693,'Daltfresh',39,'available','2022-10-21',10250,1115,5099,146,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200694,'Konklux',16,'available','2022-11-18',10329,1156,5022,101,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200695,'Stronghold',13,'available','2022-09-12',10036,1081,5057,129,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200696,'Opela',17,'available','2022-07-02',10238,1018,5005,110,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200697,'Redhold',47,'unavailable','2022-08-12',10319,1023,5089,136,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200698,'Rank',32,'available','2022-11-14',10062,1166,5029,137,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200699,'Bitchip',41,'available','2022-12-22',10320,1074,5020,126,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200700,'Quo Lux',16,'unavailable','2022-08-11',10040,1126,5088,103,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200701,'Flowdesk',10,'available','2022-08-08',10313,1063,5013,148,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200702,'Zontrax',22,'available','2022-03-24',10019,1008,5073,132,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200703,'Konklux',38,'unavailable','2022-03-18',10078,1064,5073,137,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200704,'Asoka',34,'available','2022-07-11',10365,1083,5022,138,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200705,'Span',10,'available','2022-12-08',10005,1047,5091,122,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200706,'Lotstring',31,'available','2022-06-17',10074,1096,5023,146,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200707,'Voltsillam',11,'available','2022-06-23',10268,1107,5069,119,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200708,'Tempsoft',37,'available','2022-03-05',10157,1045,5034,121,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200709,'Veribet',49,'available','2022-07-09',10028,1056,5074,143,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200710,'Sub-Ex',28,'available','2022-03-02',10034,1078,5090,131,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200711,'Sonsing',17,'available','2022-09-04',10384,1049,5068,109,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200712,'It',29,'available','2022-09-10',10106,1063,5024,108,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200713,'Alphazap',22,'available','2022-01-17',10317,1088,5020,130,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200714,'Wrapsafe',47,'available','2022-06-29',10069,1190,5019,109,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200715,'Fix San',50,'unavailable','2022-12-15',10122,1143,5083,146,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200716,'Voyatouch',40,'available','2022-07-26',10140,1131,5049,139,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200717,'Zaam-Dox',39,'available','2022-02-12',10142,1127,5034,117,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200718,'Tres-Zap',43,'available','2022-05-20',10269,1025,5095,124,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200719,'Trippledex',44,'unavailable','2022-11-08',10252,1053,5092,133,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200720,'Stringtough',15,'available','2022-10-13',10216,1199,5085,144,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200721,'Aerified',21,'unavailable','2022-08-13',10201,1089,5082,116,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200722,'Job',30,'available','2022-06-18',10291,1133,5085,102,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200723,'Andalax',26,'available','2022-07-11',10246,1168,5089,134,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200724,'Veribet',17,'available','2022-08-05',10359,1129,5033,130,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200725,'Aerified',44,'available','2022-11-02',10253,1150,5016,110,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200726,'Cardguard',16,'available','2022-01-07',10395,1088,5088,116,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200727,'Alphazap',39,'available','2022-02-24',10112,1017,5021,128,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200728,'Zaam-Dox',25,'unavailable','2022-07-17',10066,1007,5041,130,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200729,'Tampflex',24,'available','2022-12-09',10047,1170,5033,122,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200730,'Cookley',33,'available','2022-11-26',10175,1080,5031,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200731,'Treeflex',15,'available','2022-07-06',10134,1037,5050,103,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200732,'Zoolab',43,'available','2022-03-08',10343,1062,5073,132,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200733,'Span',49,'available','2022-01-01',10170,1190,5088,145,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200734,'Tempsoft',10,'available','2022-09-07',10011,1020,5030,110,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200735,'Tampflex',48,'available','2022-12-05',10164,1110,5037,121,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200736,'Mat Lam Tam',12,'available','2022-03-04',10108,1055,5092,111,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200737,'Lotstring',40,'available','2022-05-09',10339,1193,5003,123,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200738,'Tres-Zap',22,'available','2022-10-13',10162,1127,5069,138,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200739,'Wrapsafe',35,'available','2022-02-18',10379,1150,5029,101,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200740,'Y-Solowarm',27,'available','2022-07-07',10342,1101,5069,108,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200741,'Rank',40,'unavailable','2022-10-26',10312,1068,5038,117,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200742,'Greenlam',37,'available','2022-11-06',10009,1183,5061,149,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200743,'Bytecard',48,'available','2022-08-18',10180,1059,5068,138,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200744,'Mat Lam Tam',49,'available','2022-03-27',10327,1184,5036,122,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200745,'Job',36,'available','2022-05-11',10032,1010,5068,112,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200746,'Tin',50,'available','2022-09-17',10264,1096,5016,119,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200747,'Flowdesk',42,'available','2022-07-19',10260,1170,5006,112,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200748,'Latlux',32,'available','2022-03-17',10311,1115,5056,136,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200749,'Bamity',13,'available','2022-12-29',10037,1013,5086,109,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200750,'Ronstring',27,'available','2022-01-11',10167,1123,5045,136,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200751,'Alphazap',30,'available','2022-07-13',10314,1067,5042,105,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200752,'Stronghold',19,'available','2022-03-11',10086,1144,5038,114,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200753,'Flexidy',23,'unavailable','2022-01-15',10156,1148,5016,124,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200754,'Bamity',15,'available','2022-07-23',10114,1158,5011,148,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200755,'Job',41,'available','2022-02-08',10206,1119,5020,109,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200756,'Zoolab',38,'available','2022-07-08',10103,1079,5038,141,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200757,'Stim',43,'available','2022-04-24',10265,1100,5095,130,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200758,'Fixflex',46,'unavailable','2022-08-22',10389,1136,5029,134,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200759,'Veribet',24,'available','2022-04-08',10095,1104,5068,138,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200760,'Sub-Ex',28,'available','2022-02-21',10153,1042,5045,144,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200761,'Asoka',24,'available','2022-12-06',10027,1187,5050,104,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200762,'Bytecard',11,'available','2022-03-31',10218,1016,5001,116,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200763,'Solarbreeze',25,'unavailable','2022-01-14',10028,1002,5058,125,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200764,'Tres-Zap',30,'available','2022-01-05',10244,1116,5051,148,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200765,'Kanlam',22,'available','2022-05-25',10042,1006,5056,149,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200766,'Cardguard',49,'unavailable','2022-06-21',10324,1125,5041,129,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200767,'Y-Solowarm',15,'available','2022-09-03',10394,1018,5093,146,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200768,'Bigtax',37,'available','2022-01-16',10059,1078,5014,139,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200769,'Toughjoyfax',37,'available','2022-07-03',10172,1045,5003,113,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200770,'Regrant',16,'available','2022-07-30',10356,1168,5034,128,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200771,'Daltfresh',41,'available','2022-05-29',10370,1129,5077,110,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200772,'Mat Lam Tam',24,'available','2022-05-20',10307,1055,5084,118,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200773,'Greenlam',26,'available','2022-02-05',10151,1007,5012,117,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200774,'Trippledex',10,'available','2022-09-03',10120,1153,5023,125,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200775,'Overhold',30,'available','2022-03-15',10336,1045,5002,143,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200776,'Greenlam',11,'unavailable','2022-06-24',10075,1079,5055,148,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200777,'Stringtough',49,'available','2022-10-24',10321,1077,5012,149,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200778,'Treeflex',41,'available','2022-07-21',10330,1148,5017,130,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200779,'Kanlam',36,'available','2022-11-30',10018,1014,5071,113,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200780,'Job',25,'unavailable','2022-12-18',10341,1104,5024,146,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200781,'Job',11,'available','2022-01-21',10006,1054,5024,135,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200782,'Treeflex',43,'available','2022-06-19',10307,1100,5037,148,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200783,'Ronstring',11,'available','2022-07-30',10065,1006,5026,143,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200784,'It',45,'available','2022-03-03',10119,1173,5076,104,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200785,'Bytecard',29,'available','2022-07-09',10068,1023,5002,137,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200786,'Ventosanzap',40,'available','2022-09-15',10368,1046,5002,119,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200787,'Regrant',29,'available','2022-01-18',10013,1005,5091,125,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200788,'Pannier',17,'available','2022-09-13',10018,1061,5083,130,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200789,'Pannier',25,'available','2022-05-21',10124,1112,5018,128,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200790,'Overhold',14,'available','2022-06-27',10390,1009,5028,107,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200791,'Flowdesk',49,'unavailable','2022-04-08',10112,1056,5072,150,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200792,'Voyatouch',40,'available','2022-01-25',10166,1073,5045,111,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200793,'Voyatouch',32,'available','2022-04-06',10003,1009,5096,134,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200794,'Veribet',43,'available','2022-10-25',10198,1143,5032,113,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200795,'Zamit',46,'available','2022-11-14',10039,1006,5048,124,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200796,'Gembucket',17,'available','2022-02-14',10009,1065,5007,121,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200797,'Gembucket',50,'available','2022-03-28',10122,1002,5015,121,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200798,'Aerified',42,'available','2022-05-29',10287,1133,5060,112,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200799,'Quo Lux',43,'unavailable','2022-01-28',10181,1124,5024,138,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200800,'Fix San',44,'unavailable','2022-08-25',10004,1122,5075,142,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200801,'Asoka',26,'available','2022-02-13',10085,1004,5092,107,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200802,'Cookley',10,'available','2022-05-05',10136,1080,5025,144,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200803,'Kanlam',39,'available','2022-04-17',10310,1092,5070,135,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200804,'Hatity',41,'available','2022-06-05',10302,1141,5055,106,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200805,'Wrapsafe',19,'available','2022-10-06',10291,1170,5006,119,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200806,'Bitwolf',23,'available','2022-09-11',10393,1120,5078,142,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200807,'Mat Lam Tam',36,'available','2022-06-08',10392,1185,5080,147,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200808,'Bytecard',19,'unavailable','2022-06-30',10372,1077,5040,122,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200809,'Stim',22,'unavailable','2022-11-05',10133,1132,5051,148,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200810,'Bigtax',45,'available','2022-09-10',10215,1116,5087,145,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200811,'Zamit',19,'unavailable','2022-08-09',10105,1125,5018,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200812,'Bamity',17,'available','2022-02-27',10096,1010,5015,108,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200813,'Vagram',19,'available','2022-05-14',10053,1111,5076,144,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200814,'Veribet',26,'available','2022-07-23',10021,1075,5006,146,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200815,'Biodex',18,'available','2022-09-25',10193,1193,5037,137,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200816,'Cardguard',22,'available','2022-12-10',10077,1126,5060,134,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200817,'Sonsing',44,'unavailable','2022-04-18',10046,1046,5012,131,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200818,'Namfix',30,'available','2022-07-21',10166,1015,5005,130,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200819,'Fintone',44,'available','2022-12-14',10071,1079,5098,110,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200820,'Namfix',18,'available','2022-02-19',10208,1165,5078,110,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200821,'Hatity',19,'available','2022-05-26',10100,1005,5046,123,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200822,'Tin',39,'available','2022-05-09',10242,1076,5083,134,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200823,'Aerified',41,'available','2022-08-04',10101,1005,5066,101,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200824,'Veribet',10,'available','2022-02-18',10351,1004,5094,139,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200825,'Tempsoft',45,'available','2022-05-01',10304,1057,5011,139,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200826,'Holdlamis',26,'unavailable','2022-10-03',10161,1042,5008,109,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200827,'Sonsing',49,'unavailable','2022-12-09',10112,1045,5010,116,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200828,'Sub-Ex',33,'available','2022-06-03',10316,1075,5037,142,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200829,'Vagram',38,'available','2022-01-10',10337,1075,5020,144,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200830,'Biodex',27,'unavailable','2022-09-29',10232,1104,5086,150,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200831,'Pannier',32,'available','2022-06-04',10075,1159,5029,127,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200832,'Y-find',33,'available','2022-03-01',10339,1183,5013,131,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200833,'Daltfresh',15,'available','2022-04-05',10212,1148,5016,112,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200834,'Stronghold',45,'available','2022-02-25',10154,1169,5062,126,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200835,'Regrant',41,'available','2022-08-26',10323,1193,5081,101,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200836,'Trippledex',21,'available','2022-12-22',10344,1198,5055,114,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200837,'Bamity',20,'unavailable','2022-10-14',10375,1054,5072,112,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200838,'Konklux',32,'available','2022-10-12',10319,1198,5082,124,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200839,'Namfix',10,'available','2022-05-20',10397,1101,5035,141,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200840,'Stronghold',15,'available','2022-02-27',10235,1194,5054,135,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200841,'Cookley',20,'available','2022-08-27',10355,1064,5006,135,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200842,'Flowdesk',24,'available','2022-01-11',10189,1058,5017,102,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200843,'Flowdesk',15,'available','2022-09-04',10218,1009,5014,141,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200844,'Tempsoft',47,'available','2022-05-05',10204,1160,5093,104,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200845,'Sonair',24,'available','2022-08-09',10023,1086,5010,142,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200846,'Bigtax',19,'available','2022-09-23',10198,1096,5009,134,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200847,'Gembucket',24,'unavailable','2022-10-04',10188,1168,5022,122,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200848,'Alpha',28,'unavailable','2022-02-18',10307,1198,5077,135,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200849,'Domainer',14,'available','2022-01-09',10381,1006,5017,105,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200850,'Lotstring',41,'available','2022-04-23',10220,1016,5037,101,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200851,'Ronstring',45,'available','2022-09-29',10122,1114,5022,140,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200852,'Span',15,'available','2022-06-30',10329,1002,5031,119,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200853,'Solarbreeze',14,'available','2022-06-21',10054,1056,5075,116,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200854,'Holdlamis',18,'available','2022-06-04',10212,1048,5073,116,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200855,'It',42,'available','2022-01-22',10314,1064,5078,103,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200856,'Aerified',23,'available','2022-08-07',10014,1183,5009,134,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200857,'Greenlam',43,'available','2022-04-19',10130,1044,5057,104,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200858,'Y-find',16,'available','2022-08-03',10351,1166,5007,136,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200859,'Tresom',44,'available','2022-08-22',10333,1145,5018,129,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200860,'Ronstring',11,'available','2022-12-26',10238,1011,5045,123,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200861,'Hatity',10,'available','2022-10-16',10294,1062,5075,128,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200862,'Alpha',42,'available','2022-09-12',10221,1004,5002,108,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200863,'Transcof',43,'available','2022-05-08',10391,1087,5077,118,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200864,'Subin',48,'available','2022-06-06',10335,1039,5074,138,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200865,'Tresom',38,'unavailable','2022-11-07',10285,1041,5092,110,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200866,'Zamit',48,'available','2022-11-20',10393,1109,5068,144,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200867,'Cookley',17,'available','2022-03-24',10051,1188,5037,117,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200868,'Mat Lam Tam',16,'available','2022-10-25',10249,1185,5067,143,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200869,'Latlux',20,'available','2022-12-15',10249,1137,5031,134,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200870,'Sub-Ex',43,'available','2022-12-12',10194,1019,5044,145,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200871,'Veribet',17,'available','2022-10-13',10296,1176,5018,150,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200872,'Holdlamis',13,'available','2022-08-12',10061,1035,5079,112,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200873,'Duobam',24,'available','2022-11-04',10072,1043,5011,111,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200874,'Voltsillam',49,'unavailable','2022-05-16',10368,1035,5013,122,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200875,'Holdlamis',36,'available','2022-10-21',10110,1168,5053,148,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200876,'Konklux',23,'available','2022-04-25',10300,1131,5096,133,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200877,'Lotlux',47,'available','2022-04-27',10032,1185,5029,103,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200878,'Zaam-Dox',20,'available','2022-09-02',10161,1122,5030,147,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200879,'Veribet',29,'unavailable','2022-05-28',10357,1103,5032,145,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200880,'Tin',12,'available','2022-04-23',10168,1105,5013,130,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200881,'Domainer',10,'available','2022-06-11',10134,1124,5051,104,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200882,'Stronghold',48,'unavailable','2022-05-28',10275,1132,5030,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200883,'Redhold',25,'available','2022-08-12',10212,1106,5009,143,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200884,'Stronghold',50,'unavailable','2022-08-25',10297,1101,5056,127,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200885,'Biodex',48,'available','2022-03-16',10293,1058,5044,133,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200886,'Zamit',17,'available','2022-06-20',10104,1191,5072,139,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200887,'Redhold',14,'unavailable','2022-09-04',10323,1119,5086,150,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200888,'Tres-Zap',45,'available','2022-04-29',10007,1130,5074,141,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200889,'Sub-Ex',25,'unavailable','2022-01-26',10259,1157,5083,145,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200890,'Latlux',42,'available','2022-09-20',10264,1038,5033,140,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200891,'Matsoft',24,'available','2022-01-01',10020,1149,5100,116,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200892,'Hatity',49,'available','2022-05-26',10169,1072,5036,146,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200893,'Regrant',43,'available','2022-12-20',10170,1146,5014,141,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200894,'Veribet',38,'available','2022-10-28',10011,1018,5096,110,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200895,'Alpha',31,'unavailable','2022-11-10',10074,1021,5014,127,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200896,'Tresom',46,'available','2022-10-20',10321,1061,5011,101,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200897,'Daltfresh',43,'unavailable','2022-01-04',10077,1132,5033,107,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200898,'Stronghold',11,'available','2022-12-23',10242,1104,5010,114,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200899,'Greenlam',21,'available','2022-03-25',10112,1178,5027,134,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200900,'Lotstring',12,'available','2022-05-17',10349,1094,5086,112,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200901,'Toughjoyfax',28,'unavailable','2022-04-01',10008,1179,5065,148,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200902,'Rank',14,'available','2022-04-07',10135,1034,5056,146,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200903,'Tin',24,'available','2022-07-28',10167,1099,5022,106,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200904,'Transcof',50,'unavailable','2022-02-18',10006,1004,5031,148,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200905,'Gembucket',29,'available','2022-09-17',10393,1010,5032,141,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200906,'Overhold',50,'available','2022-04-13',10097,1140,5055,150,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200907,'Veribet',40,'available','2022-11-11',10365,1110,5017,139,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200908,'Asoka',15,'available','2022-10-20',10075,1149,5037,119,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200909,'Latlux',20,'available','2022-03-04',10024,1126,5010,118,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200910,'Voyatouch',49,'unavailable','2022-07-03',10075,1050,5085,140,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200911,'Y-Solowarm',27,'available','2022-05-20',10115,1057,5082,123,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200912,'Voltsillam',37,'available','2022-10-08',10397,1193,5016,121,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200913,'Bytecard',35,'available','2022-03-27',10155,1085,5066,112,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200914,'Daltfresh',32,'unavailable','2022-10-04',10337,1142,5086,137,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200915,'Konklab',11,'available','2022-11-19',10142,1110,5021,142,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200916,'Stringtough',29,'available','2022-02-06',10204,1097,5019,138,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200917,'Asoka',17,'available','2022-12-13',10155,1186,5049,137,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200918,'Gembucket',31,'available','2022-09-22',10337,1159,5099,130,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200919,'Toughjoyfax',14,'available','2022-05-16',10357,1146,5034,123,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200920,'Lotstring',15,'unavailable','2022-08-24',10324,1152,5018,147,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200921,'Y-find',41,'available','2022-08-19',10085,1167,5050,117,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200922,'Quo Lux',25,'available','2022-08-04',10160,1025,5046,129,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200923,'Ventosanzap',10,'available','2022-05-19',10335,1035,5007,130,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200924,'Namfix',10,'available','2022-08-22',10211,1103,5098,141,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200925,'Pannier',24,'available','2022-09-28',10189,1010,5052,148,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200926,'Job',33,'available','2022-10-07',10388,1109,5019,104,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200927,'Bamity',37,'available','2022-11-12',10166,1102,5004,117,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200928,'Y-Solowarm',41,'unavailable','2022-06-07',10315,1143,5058,105,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200929,'Toughjoyfax',27,'unavailable','2022-11-02',10347,1008,5079,121,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200930,'Aerified',43,'available','2022-08-31',10248,1068,5030,117,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200931,'Bamity',45,'available','2022-09-14',10045,1033,5066,142,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200932,'Duobam',43,'available','2022-02-04',10202,1065,5066,127,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200933,'Andalax',44,'available','2022-01-28',10377,1037,5067,121,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200934,'Flexidy',25,'available','2022-02-14',10366,1038,5082,139,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200935,'Transcof',19,'unavailable','2022-03-04',10054,1129,5066,147,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200936,'Tres-Zap',35,'available','2022-12-21',10195,1103,5030,114,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200937,'Gembucket',39,'available','2022-12-29',10160,1134,5014,114,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200938,'Tampflex',39,'available','2022-06-20',10175,1122,5098,149,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200939,'Stringtough',37,'available','2022-06-19',10151,1141,5030,109,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200940,'Redhold',14,'available','2022-05-28',10273,1001,5009,132,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200941,'Wrapsafe',19,'available','2022-01-11',10378,1010,5015,134,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200942,'Greenlam',28,'available','2022-02-18',10007,1125,5043,111,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200943,'Opela',37,'available','2022-07-26',10331,1025,5037,110,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200944,'Zathin',31,'unavailable','2022-08-09',10352,1094,5013,150,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200945,'Wrapsafe',12,'available','2022-03-11',10364,1048,5093,141,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200946,'Zaam-Dox',36,'available','2022-04-15',10189,1082,5075,105,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200947,'Cardguard',19,'available','2022-11-01',10237,1007,5034,136,'Western Pearlwort');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200948,'Matsoft',46,'available','2022-01-11',10243,1148,5010,117,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200949,'Biodex',22,'available','2022-03-30',10031,1167,5020,147,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200950,'It',13,'available','2022-01-27',10023,1120,5083,113,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200951,'Zathin',44,'available','2022-01-19',10335,1123,5040,119,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200952,'Konklux',16,'available','2022-08-13',10111,1181,5009,101,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200953,'Stim',42,'available','2022-08-27',10363,1073,5094,125,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200954,'Andalax',30,'available','2022-05-20',10054,1071,5016,141,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200955,'Subin',18,'available','2022-02-10',10389,1097,5085,105,'Boise Milkvetch');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200956,'Matsoft',20,'available','2022-03-03',10394,1014,5026,142,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200957,'Regrant',45,'available','2022-07-10',10012,1080,5092,119,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200958,'Konklux',32,'available','2022-12-08',10148,1163,5005,106,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200959,'Lotlux',40,'available','2022-01-01',10274,1158,5025,146,'Cade Juniper');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200960,'Andalax',18,'available','2022-11-10',10286,1130,5094,111,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200961,'Daltfresh',41,'available','2022-12-05',10060,1074,5052,113,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200962,'Voyatouch',20,'available','2022-12-06',10247,1027,5093,101,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200963,'Fix San',39,'unavailable','2022-06-05',10235,1017,5020,110,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200964,'Daltfresh',48,'available','2022-04-19',10167,1193,5099,142,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200965,'Bytecard',17,'available','2022-05-01',10166,1131,5073,109,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200966,'Latlux',23,'available','2022-10-26',10080,1038,5019,115,'Hoary Yellowcress');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200967,'Redhold',13,'available','2022-11-21',10285,1125,5067,142,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200968,'Zaam-Dox',29,'available','2022-04-11',10393,1167,5006,133,'Trailing Arbutus');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200969,'Prodder',43,'unavailable','2022-11-01',10004,1087,5080,101,'Azure Blue Sage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200970,'Sonsing',19,'available','2022-12-22',10042,1009,5079,111,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200971,'Fix San',42,'unavailable','2022-06-21',10067,1135,5041,135,'Butte Desertparsley');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200972,'Toughjoyfax',47,'available','2022-10-10',10023,1049,5093,124,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200973,'Mat Lam Tam',42,'available','2022-06-15',10094,1180,5029,101,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200974,'Toughjoyfax',19,'unavailable','2022-05-13',10120,1135,5020,107,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200975,'Wrapsafe',11,'unavailable','2022-05-07',10257,1187,5013,138,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200976,'Voltsillam',46,'available','2022-10-06',10078,1052,5021,108,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200977,'Tempsoft',42,'available','2022-12-16',10176,1011,5024,146,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200978,'Andalax',24,'available','2022-06-21',10325,1003,5013,126,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200979,'Veribet',18,'available','2022-08-30',10293,1190,5002,127,'Disc Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200980,'Tempsoft',32,'available','2022-04-08',10316,1012,5027,144,'Eatonella');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200981,'Bamity',25,'available','2022-05-17',10319,1142,5058,113,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200982,'Span',20,'unavailable','2022-05-01',10297,1055,5080,131,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200983,'Biodex',14,'available','2022-10-15',10270,1142,5049,131,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200984,'Pannier',12,'available','2022-03-02',10133,1059,5074,136,'Nehe Kuhiwa');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200985,'Keylex',41,'available','2022-04-09',10231,1173,5089,125,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200986,'Tin',22,'available','2022-09-23',10345,1063,5083,143,'Lanceleaf Ticktrefoil');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200987,'Cardguard',30,'unavailable','2022-06-01',10344,1099,5053,119,'Dusty Beardtongue');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200988,'Flowdesk',45,'available','2022-02-17',10018,1183,5067,122,'Southern Crab Apple');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200989,'Bytecard',44,'unavailable','2022-04-10',10041,1004,5086,109,'Broadleaf Solomons Seal');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200990,'Latlux',45,'available','2022-02-01',10135,1075,5082,114,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200991,'Stronghold',25,'available','2022-04-04',10192,1056,5002,139,'Desert Yellow Fleabane');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200992,'Transcof',31,'available','2022-06-30',10250,1074,5096,128,'Rim Lichen');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200993,'Matsoft',50,'available','2022-10-22',10088,1120,5043,103,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200994,'Quo Lux',14,'available','2022-05-30',10227,1011,5084,111,'Murrays Plum');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200995,'Vagram',13,'available','2022-01-18',10124,1059,5058,105,'Warnstorfia Moss');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200996,'Temp',13,'available','2022-03-05',10173,1103,5035,149,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200997,'Kanlam',48,'available','2022-05-22',10337,1006,5036,123,'Mediterranean Cabbage');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200998,'Alpha',25,'available','2022-03-24',10142,1170,5098,129,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (200999,'Asoka',33,'available','2022-05-21',10295,1140,5046,135,'Hybrid Willow');
INSERT INTO book (`book_id`,`book_name`,`book_price`,`book_state`,`book_received_date`,`publisher_id`,`author_id`,`vendor_id`,`emp_id`,`library_name`) VALUES (201000,'Tempsoft',35,'available','2022-06-18',10115,1061,5070,120,'Rim Lichen');



    
DROP TABLE IF EXISTS send_request;
create table send_request (
	member_id INT not null,
	emp_id INT not null,
	request_content VARCHAR(50),
    primary key (member_id, emp_id)
);
    Alter table send_request Add foreign key (member_ID) references member(member_ID);
	Alter table send_request Add foreign key (emp_ID) references employee(emp_ID);

INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100001,101,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100002,102,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100003,103,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100004,104,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100005,105,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100006,106,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100007,107,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100008,108,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100009,109,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100010,110,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100011,111,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100012,112,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100013,113,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100014,114,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100015,115,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100016,116,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100017,117,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100018,118,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100019,119,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100020,120,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100021,121,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100022,122,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100023,123,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100024,124,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100025,125,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100026,126,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100027,127,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100028,128,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100029,129,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100030,130,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100031,131,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100032,132,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100033,133,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100034,134,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100035,135,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100036,136,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100037,137,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100038,138,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100039,139,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100040,140,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100041,141,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100042,142,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100043,143,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100044,144,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100045,145,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100046,146,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100047,147,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100048,148,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100049,149,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100050,150,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100051,129,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100052,117,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100053,112,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100054,104,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100055,136,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100056,110,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100057,115,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100058,145,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100059,103,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100060,122,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100061,101,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100062,102,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100063,111,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100064,126,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100065,122,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100066,131,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100067,113,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100068,102,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100069,115,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100070,104,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100071,120,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100072,146,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100073,101,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100074,144,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100075,140,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100076,114,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100077,119,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100078,128,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100079,147,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100080,107,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100081,103,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100082,111,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100083,115,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100084,107,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100085,132,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100086,101,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100087,138,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100088,114,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100089,102,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100090,131,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100091,140,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100092,144,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100093,113,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100094,140,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100095,106,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100096,149,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100097,122,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100098,130,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100099,105,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100100,149,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100101,107,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100102,116,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100103,105,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100104,145,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100105,138,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100106,123,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100107,113,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100108,123,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100109,148,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100110,106,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100111,111,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100112,129,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100113,146,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100114,118,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100115,102,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100116,143,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100117,144,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100118,110,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100119,130,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100120,103,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100121,139,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100122,125,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100123,142,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100124,137,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100125,122,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100126,111,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100127,150,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100128,130,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100129,132,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100130,122,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100131,109,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100132,130,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100133,147,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100134,102,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100135,107,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100136,134,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100137,103,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100138,127,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100139,124,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100140,123,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100141,104,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100142,129,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100143,124,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100144,115,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100145,125,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100146,133,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100147,104,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100148,108,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100149,150,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100150,145,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100151,113,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100152,110,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100153,109,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100154,117,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100155,120,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100156,105,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100157,145,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100158,136,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100159,104,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100160,131,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100161,106,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100162,118,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100163,104,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100164,103,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100165,125,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100166,101,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100167,125,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100168,110,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100169,136,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100170,124,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100171,147,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100172,114,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100173,150,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100174,144,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100175,145,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100176,126,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100177,146,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100178,145,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100179,129,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100180,143,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100181,132,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100182,138,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100183,140,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100184,126,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100185,117,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100186,149,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100187,124,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100188,129,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100189,148,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100190,112,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100191,114,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100192,149,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100193,102,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100194,145,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100195,112,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100196,127,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100197,138,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100198,144,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100199,102,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100200,113,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100201,143,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100202,131,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100203,102,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100204,116,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100205,140,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100206,126,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100207,143,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100208,124,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100209,132,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100210,133,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100211,132,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100212,127,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100213,109,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100214,133,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100215,129,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100216,149,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100217,145,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100218,119,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100219,143,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100220,149,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100221,146,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100222,101,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100223,105,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100224,131,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100225,142,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100226,125,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100227,140,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100228,106,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100229,130,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100230,129,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100231,138,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100232,113,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100233,141,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100234,145,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100235,130,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100236,103,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100237,107,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100238,126,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100239,115,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100240,102,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100241,135,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100242,101,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100243,143,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100244,149,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100245,144,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100246,102,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100247,138,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100248,134,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100249,106,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100250,141,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100251,115,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100252,132,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100253,111,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100254,106,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100255,140,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100256,117,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100257,131,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100258,117,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100259,146,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100260,123,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100261,129,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100262,127,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100263,144,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100264,107,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100265,131,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100266,137,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100267,107,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100268,129,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100269,117,'location');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100270,103,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100271,130,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100272,112,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100273,115,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100274,130,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100275,136,'price');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100276,142,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100277,118,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100278,102,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100279,127,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100280,125,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100281,127,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100282,105,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100283,134,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100284,138,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100285,115,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100286,143,'book');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100287,148,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100288,131,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100289,102,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100290,133,'parking');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100291,111,'etc');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100292,135,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100293,108,'hiring');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100294,128,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100295,149,'lost and found');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100296,120,'work time');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100297,108,'complain');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100298,136,'business');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100299,135,'author');
INSERT INTO send_request (`member_id`,`emp_id`,`request_content`) VALUES (100300,150,'author');



-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 1.	Show the total number of transactions your database is storing and, depending on your database, 
-- 		the most sold/listed item or customer with the highest number of purchases.

use librarymanage_db;
select count(*) from library;

use librarymanage_db;
select count(*) from admin;

use librarymanage_db;
select count(*) from employee;

use librarymanage_db;
select count(*) from vendor;

use librarymanage_db;
select count(*) from author;

use librarymanage_db;
select count(*) from publisher;

use librarymanage_db;
select count(*) from member;

use librarymanage_db;
select count(*) from book;

use librarymanage_db;
select count(*) from send_request;


use librarymanage_db;
SELECT book_name, book_price
FROM book
WHERE book_price =
(SELECT max(book_price)
FROM book);

use librarymanage_db;
SELECT book_name, book_price
FROM book
WHERE book_price =
(SELECT min(book_price)
FROM book);

use librarymanage_db;
SELECT name, birthday
FROM member
WHERE birthday =
(SELECT min(birthday)
FROM member);

use librarymanage_db;
SELECT name, birthday
FROM member
WHERE birthday =
(SELECT max(birthday)
FROM member);




-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 2.	Write a query statement that includes “Order by” and “Group by”. 


use librarymanage_db;
select author_subject, count(*) as number from author
group by author_subject
order by number desc;


use librarymanage_db;
select publisher_country, count(*) as number from publisher
group by publisher_country
order by number desc;

use librarymanage_db;
select library_name, count(*) as number, sum(book_price) as total_book_price from book
group by library_name
order by number desc;


use librarymanage_db;
select vendor_id, count(*) as number, sum(book_price) as total_book_price from book
group by vendor_id
having sum(book_price) > 500
order by total_book_price desc;




-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 3.	Write a query statement that uses pattern matching 
-- 		(example: customer living in a given street, number of Johns, people with today’s birthday…).


use librarymanage_db;
select * from member where birthday like '%%%%-12-%%';


use librarymanage_db;
select * from employee where designation like 'associate';



-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 4.	Show information from three tables based on criteria of your choice (hint: join).


use librarymanage_db;
select library.library_name, admin.admin_name, employee.emp_name, employee.designation
from library
join admin
on library.library_name = admin.library_name
join employee
on employee.admin_id = admin.admin_id;



use librarymanage_db;
select member.name, member.member_type, send_request.request_content ,employee.emp_id, employee.emp_name, employee.designation
from member
join send_request
on send_request.member_id = member.member_id
join employee
on employee.emp_id = send_request.emp_id;




-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 5.	Create a view that includes information from the most frequent seven transactions
-- 		(customer names or most sold items …).  


DROP VIEW IF EXISTS member_report;

use librarymanage_db;
create view member_report as 
select registration_date, count(*) as the_number_of_members_registered from member
group by registration_date
order by the_number_of_members_registered desc
limit 7;

select * from member_report;



DROP VIEW IF EXISTS author_report;

use librarymanage_db;
create view author_report as select author.author_name, count(*) as the_number_of_books, sum(book_price) as total_book_price
from author
join book 
on author.author_id = book.author_id
group by author.author_name
order by the_number_of_books desc
limit 7;

select * from author_report;




DROP VIEW IF EXISTS vendor_report;

use librarymanage_db;
create view vendor_report as select vendor.vendor_id, vendor.contact_no, count(*) as the_number_of_books
from vendor
join book 
on vendor.vendor_id = book.vendor_id
group by vendor.vendor_id
order by the_number_of_books desc
limit 7;

select * from vendor_report;



-- Part 3: Write SQL Statements to answer the following queries - 40% 
-- 6.	Create a set of queries that summarises the annual transactions. 
-- 		For example, if your transaction table is about selling product, you can create queries that: 
-- •	Shows the total number of transactions with corresponding details every month,  
-- •	Shows customer purchase value per month,  
-- •	Shows name of product and number sold each month



alter table book add column month int;
update book set month = 

case when book_received_date between '2022-01-01' and '2022-01-31' then 1
when book_received_date between '2022-02-01' and '2022-02-28' then 2
when book_received_date between '2022-03-01' and '2022-03-31' then 3
when book_received_date between '2022-04-01' and '2022-04-30' then 4
when book_received_date between '2022-05-01' and '2022-05-31' then 5
when book_received_date between '2022-06-01' and '2022-06-30' then 6
when book_received_date between '2022-07-01' and '2022-07-31' then 7
when book_received_date between '2022-08-01' and '2022-08-31' then 8
when book_received_date between '2022-09-01' and '2022-09-30' then 9
when book_received_date between '2022-10-01' and '2022-10-31' then 10
when book_received_date between '2022-11-01' and '2022-11-30' then 11
when book_received_date between '2022-12-01' and '2022-12-31' then 12
else 13 end;

select month, count(*) as totoal_number, sum(book_price) as total_book_price from book
group by month
order by month;





alter table member add column month int;
update member set month = 

case when registration_date between '2022-01-01' and '2022-01-31' then 1
when registration_date between '2022-02-01' and '2022-02-28' then 2
when registration_date between '2022-03-01' and '2022-03-31' then 3
when registration_date between '2022-04-01' and '2022-04-30' then 4
when registration_date between '2022-05-01' and '2022-05-31' then 5
when registration_date between '2022-06-01' and '2022-06-30' then 6
when registration_date between '2022-07-01' and '2022-07-31' then 7
when registration_date between '2022-08-01' and '2022-08-31' then 8
when registration_date between '2022-09-01' and '2022-09-30' then 9
when registration_date between '2022-10-01' and '2022-10-31' then 10
when registration_date between '2022-11-01' and '2022-11-30' then 11
when registration_date between '2022-12-01' and '2022-12-31' then 12
else 13 end;

select month, count(*) as the_number_of_members_registered from member
group by month
order by month;




select book.month, count(*) as the_number_of_books_received, sum(book_price) as total_book_price,

(select count(*) as the_number_of_members_registered
from member where member.month = book.month) as the_number_of_members_registered
from book
group by month
order by month;



select month, author.author_name, count(*) as the_number_of_book
from book
join author 
on book.author_id = author.author_id
group by month, author.author_name
order by month, count(*) desc;



select month, author.author_subject, count(*) as the_number_of_book
from book
join author 
on book.author_id = author.author_id
group by month, author.author_subject
order by month, count(*) desc;





-- Other : How to calculate derived attribute (Birthday -> age) 
-- report 5 page

SELECT 
member.member_id,
member.name,
member.registration_date,
member.contact_no,
member.address,
member.birthday,
TIMESTAMPDIFF (YEAR, birthday, CURDATE()) AS age,
member.member_type
FROM member;










