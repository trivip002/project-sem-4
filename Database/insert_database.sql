USE test;

INSERT INTO role(role_code,role_name)
VALUES ('ROLE_ADMIN','Admin'),
('ROLE_USER','User'),
('ROLE_INSTRUCTOR','Instructor');

INSERT INTO user(user_name,user_email,password,full_name,address,city,country,telephone, is_active, role_id)
VALUES ('admin','trivip002@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Admin','78 Street','New York','America','0908244455',1,1),
    ('Tri','trivip003@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Minh Tri','29 Truong Dinh','Ho Chi Minh','VietName','0908227374',1,1),
	('Thach','thach@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Phu Thach','29 Nam Ki','Ho Chi Minh','VietName','0908227374',1,3),
    ('Tom','Tom003@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Tom Cruise','45 Nam Ki','Ho Chi Minh','VietName','0908997799',1,2),
    ('David','David003@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','David Foster','30 Ho Van Hue','Ho Chi Minh','VietName','0908227364',1,2),
    ('Tim','Tim003@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Timmy Luu','29 Truong Dinh','Ho Chi Minh','VietName','0903344556',1,2);

INSERT INTO category(cate_name)
VALUES('Javascript'), ('Python'), ('PHP'), ('Java'), ('Algorithm'), ('Design Pattern'), ('C#'), ('NodeJs');

INSERT INTO course(course_description, course_subtitle, course_duration, course_img, course_language, course_name, course_price, course_thumbnail, is_active, createdDate)
VALUES('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '90', 'img-1.jpg',
        'English', 'The Complete Javascript Course 2020', 20.00,
        'img-1.jpg',
        1, current_timestamp()),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        "The only course you need to learn web development -PHP, React, Vue and More!",
        '80', 'img-2.jpg',
        'Japanese', 'Python 101', 45.00,
        'img-2.jpg',
        0, current_timestamp()),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '75', 'img-3.jpg',
        'English', 'The Complete PHP7 Course 2019', 40.99,
        'img-3.jpg',
        1, current_timestamp()),
        ('4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '120', 'img-4.jpg',
        'Hindi', 'The Java 101 - 2019', 100.99,
        'img-4.jpg',
        1, current_timestamp()),
        ('5 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '150', 'img-5.jpg',
        'English', 'The Advanced Algorithn Course 2020', 219.99,
        'img-5.jpg',
        1, current_timestamp()),
        ('6 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '90', 'img-6.jpg',
        'English', 'The Advanced PHP Course 2020', 209.99,
        'img-6.jpg',
        1, current_timestamp()),
        ('7 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '50', 'img-7.jpg',
        'English', 'Easy Design Pattern in Your Hand', 99.99,
        'img-7.jpg',
        1, current_timestamp()),
        ('8 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '200', 'img-8.jpg',
        'English', 'Advanced Design Pattern in Your Hand', 199.99,
        'img-8.jpg',
        1, current_timestamp()),
        ('9 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '150', 'img-9.jpg',
        'English', 'Entry to ASP.NET MVC Framework', 59.99,
        'img-9.jpg',
        1, current_timestamp()),
        ('10 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
		"The only course you need to learn web development - HTML, CSS, JS, Node, and More!",
        '560', 'img-10.jpg',
        'Spanish', 'NodeJS Never Sleep', 210,
        'img-10.jpg',
        1, current_timestamp());

INSERT INTO cate_course(course_id, cate_id)
VALUES(1,1), (2,2), (1,2), (3,3), (4,4), (5,5), (6,3), (7,6), (8,6), (9,7), (10,8);

INSERT INTO section(section_description, section_duration, section_title, course_id)
VALUES('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'First Section', 1),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'Second Section', 1),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 2),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '50', 'First Section', 3),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'Second Section', 3),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'Third Section', 3),
        ('4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'Fourth Section', 3),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 4),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '40', 'Second Section', 4),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Third Section', 4),
        ('4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Fourth Section', 4),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '70', 'Fifth Section', 4),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 5),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Second Section', 5),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 6),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Second Section', 6),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '100', 'Third Section', 6),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'First Section', 7),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'Second Section', 7),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '60', 'Third Section', 7),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '100', 'First Section', 8),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '55', 'Second Section', 8),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 9),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'Second Section', 9),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '55', 'Second Section', 9),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Third Section', 9),
        ('4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'Fourth Section', 9),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 10),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'Second Section', 10),
        ('3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'Third Section', 10),
        ('4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'Fourth Section', 10);

INSERT INTO video(video_name, video_url, section_id)
VALUES('javascript_2020_1',
		'<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;"> <iframe style="width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden" frameborder="0" type="text/html" src="https://www.dailymotion.com/embed/video/x6db08o" width="100%" height="100%" allowfullscreen> </iframe> </div>',
        1),
        ('javascript_2020_2', 'https://dai.ly/x6db08o', 2),
        ('python_101_1', 'https://dai.ly/x7qx5se', 3);

INSERT INTO review(review_content,user_id,course_id)
VALUES ('i kinda like this course ',2,1),('i really love this content about Java ',3,1),('i think this course not good this content about Java ',4,2);

INSERT INTO promotion(promotion_code,discount_price,is_active)
VALUES ('D123',5.55,1),('D234',6.99,0),('D345',7.59,1),('D456',5.59,1),('D67',6.67,1);

INSERT INTO promotion_detail(course_id,promotion_id)
VALUES (1,1),(1,2),(2,3),(2,2),(1,4);

INSERT INTO blog_category(blog_cate_title,blog_cate_content)
VALUES ('Technology in life','My life is a computer and CPU.'),
('Java in life','Java life is a computer and CPUMy life hello new hello new hello new hello new.'),
('New Query technique','Query life is a computer and Query.'),
('My Love is CSS','CSS is a beautiful computer and Query.');

INSERT INTO blog(blog_title,blog_meta_title,blog_img,blog_content,is_active,user_id,blog_cate_id)
VALUES ('Technology in life','My life is a computer and CPU.','test1.jpg','a lot of content a lot of content a lot of content a lot of content',1,1,1),
('Java in life','Java is a computer and CPU.','test2.jpg','Java a lot of content a lot of content a lot of content a lot of content',0,1,2),
('Query is a life','Query is a computer and CPU.','test3.jpg','Query a lot of content a lot of content a lot of content a lot of content',0,1,3);

INSERT INTO blog_comment(user_id,blog_id,blog_comment_content)
VALUES (2,1,'I like this Java 1'),(3,2,'i like technology 2'),(4,2,'i think this blog is helpful');

