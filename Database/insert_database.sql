USE test;
INSERT INTO role(role_code,role_name)
VALUES ('ROLE_ADMIN','admin role'),
('ROLE_USER','user role');
INSERT INTO permission(permission_code,permission_name)
VALUES ('CAN_ACCESS_TO_ADMIN_PAGE','can access admin page'),
('CAN_ACCESS_TO_USER_PAGE','can access user page'),
('CAN_READ_USER','can read user '),
('CAN_WRITE_USER','can edit user page'),
('CAN_READ_PERMISSION','can read permission '),
('CAN_WRITE_PERMISSION','can read permission '),
('CAN_READ_ROLE','can read role '),
('CAN_WRITE_ROLE','can edit role ');
INSERT INTO role_permission(role_id,permission_id)
VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(2,2);
INSERT INTO user(user_name,user_email,password,state,role_id)
VALUES ('admin','trivip002@gmail.com','$2y$12$Y2z5MxWeL6VlC38CrsG1sex0gafgJoosL8aLdVu9dycubvdIYiv3a',1,1),
	('user','trivip003@gmail.com','$2y$12$Y2z5MxWeL6VlC38CrsG1sex0gafgJoosL8aLdVu9dycubvdIYiv3a',1,2);