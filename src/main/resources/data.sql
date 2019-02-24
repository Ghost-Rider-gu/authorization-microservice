-- Data for service
INSERT INTO service VALUES(1, "App for learning languages", "Vocabulary", 1);
INSERT INTO service VALUES(2, "App for personal projects", "Projects", 1);
INSERT INTO service VALUES(3, "App for education", "Education", 1);

-- Data for user
INSERT INTO user VALUES(1, "2019-01-24 00:00:00", "2019-01-24  00:00:00", "ricardo_st", "5b767366ba746e0935206fa6b8371963", NULL);
INSERT INTO user VALUES(2, "2018-01-24 00:00:00", "2018-01-24  00:00:00", "lector_m", "bd23546a81020b2001e2f1fd17224990", NULL);
INSERT INTO user VALUES(3, "2016-01-24 00:00:00", "2016-01-24  00:00:00", "debra_ev", "8a80a895a72dab22078e403b936a45ac", NULL);

-- Data for role
INSERT INTO role VALUES(1, "All permissions and rules", "ADMIN");
INSERT INTO role VALUES(2, "All permissions and rules except admin", "MODERATOR");
INSERT INTO role VALUES(3, "Only post a new article", "PUBLISHER");

-- Data for user_role
INSERT INTO user_role VALUES(1, 1);
INSERT INTO user_role VALUES(2, 3);
INSERT INTO user_role VALUES(3, 2);

-- Data for user_service
INSERT INTO user_service VALUES(1, 1);
INSERT INTO user_service VALUES(2, 3);
INSERT INTO user_service VALUES(3, 2);
INSERT INTO user_service VALUES(1, 3);