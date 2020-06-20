USE test;
INSERT INTO role(role_code,role_name)
VALUES ('ROLE_ADMIN','admin role'),
('ROLE_USER','user role');
INSERT INTO user(user_name,user_email,password, is_active, role_id)
VALUES ('admin','trivip002@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,1),
	('user','trivip003@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,2);

INSERT INTO category(cate_name)
VALUES('Javascript'), ('Python'), ('PHP');

INSERT INTO course(course_description, course_duration, course_img, course_language, course_name, course_price, course_thumbnail, is_active)
VALUES('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '90', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTO3kM3AJe8lqw68OpFXyOcQ2I0TmtvF0R82KnaJnxxP5WOH2EV&usqp=CAU',
        'English', 'The Complete Javascript Course 2020', 20.00,
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTO3kM3AJe8lqw68OpFXyOcQ2I0TmtvF0R82KnaJnxxP5WOH2EV&usqp=CAU',
        1),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQqclY8Jk4AU6LKSa0CDu1H7TJK_AtELBeiUKgI9u70LO25408X&usqp=CAU',
        'English', 'Python 101', 45.00,
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQqclY8Jk4AU6LKSa0CDu1H7TJK_AtELBeiUKgI9u70LO25408X&usqp=CAU',
        1);

INSERT INTO cate_course(course_id, cate_id)
VALUES(1,1), (2,2);

INSERT INTO section(section_description, section_duration, section_title, course_id)
VALUES('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'First Section', 1),
        ('2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '45', 'Second Section', 1),
        ('1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur vel dolor id ultrices. Proin a magna at mi pretium pulvinar in eu enim.',
        '80', 'First Section', 2);

INSERT INTO video(video_name, video_url, section_id)
VALUES('javascript_2020_1', 'https://dai.ly/x180cqo', 1),
        ('javascript_2020_2', 'https://dai.ly/x6db08o', 2),
        ('python_101_1', 'https://dai.ly/x7qx5se', 3);