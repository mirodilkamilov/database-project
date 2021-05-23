USE `samsung-health`;

INSERT INTO `User` VALUES (1,'sydnie.thompson@example.org','3ea5ebb8bb8e34564b74b6aec90b0b12d7dcdc830ee2cfa6a49bd2b8c90bcb7e','Johnathan','Metz','Female','1999-12-15','Somewhat active',98,1,175,80,22),(2,'otto35@example.net','564c12855eca3e0ca5dfae121f7ac510cdaf4930b9e7167923f0944070720fe3','Aleen','Nienow','Female','1992-04-07','Active',64,2,183,48,30),(3,'sammy.corwin@example.net','52836b62d9215687497ce6a5c0bf9af334156ab864c74c6d72f0f0715e598e1f','Olen','Kutch','Female','1979-04-30','Somewhat active',167,5,153,80,42),(4,'adalberto.johnson@example.org','d144abde0de829d28712fd67da9734d0dd433050bb78b7de9e43cbaf5308cf66','Bella','McKenzie','Female','1977-03-14','Very active',4,8,169,78,44),(5,'myah36@example.com','6380458f9f7a39f0c160b44c50fd6be525e27c368091477fef523a637753a8d9','Brandt','Romaguera','Male','1990-02-04','Sedentary',223,1,158,64,31),(6,'layla61@example.net','d3a9ce45ef7629640dd95e59fb280c50e1def7f26ebac8947f38393f9e25a3fc','Maxime','Zulauf','Male','2001-02-25','Very active',55,2,180,44,20),(7,'alejandra88@example.org','b468a83bd5eb274598a97e64d184250dd26ad8840cc0a75e5731b026b680120a','Kolby','Wuckert','Female','2009-05-06','Sedentary',244,2,162,62,12),(8,'cesar.osinski@example.org','fa0298e2fd2d146e0504799d7dd6e8975b49e6ab260f837b2f979189a880238e','Clovis','Von','Female','1995-02-22','Somewhat active',16,1,182,58,26),(9,'edyth.dickens@example.org','26e8d056aa2b6c895379bf4df3d73ea016ab50aa03d83db7eaa69e886bbcd671','Clifton','Treutel','Male','2012-10-25','Very active',187,4,144,70,9),(10,'amore.boris@example.com','b8c27b1b43983d3562b9a9b311b3b73c53783698d9e5fb2c885852494d7302c0','Bernard','Marvin','Female','1990-02-15','Sedentary',246,2,190,81,31);

INSERT INTO `Fitness_program_type` VALUES (1,'Build muscle'),(2,'Endurance training'),(3,'Weight loss'),(4,'Balance training');

INSERT INTO `Mindfulness` VALUES (1,'Eaque et non aliquid.','Minima sed id deserunt rerum officia voluptatibus earum. Molestiae ut nostrum et nulla in qui et vel. Repellendus ut doloremque quis possimus. Et consequuntur molestias et quisquam nulla quas quaerat.','/assets/mindfulness/image.jpg'),(2,'Perferendis et molestiae ab.','Dignissimos voluptas ut et quasi. Sunt eum a et quas et sit molestiae. Ex non blanditiis vel est fugit.','/assets/mindfulness/image.jpg'),(3,'Non id ipsum aut reiciendis magnam.','Earum voluptates accusantium ut adipisci repellendus. Enim ea non laudantium maiores et. Earum aspernatur sequi sequi repellendus culpa fugit.','/assets/mindfulness/image.jpg'),(4,'Architecto est ipsam.','Non fugit eligendi explicabo voluptas est et. Deserunt itaque qui et quod commodi qui voluptas. Deserunt est asperiores quis.','/assets/mindfulness/image.jpg'),(5,'Maxime possimus recusandae eum quas ad.','Delectus perspiciatis deleniti facere voluptatum. Assumenda voluptatem debitis ex ratione iure at numquam. Sunt et sunt ab quidem sit error autem occaecati.','/assets/mindfulness/image.jpg');

INSERT INTO `Equipment` VALUES (1,'Bolster'),(2,'Gantels'),(3,'Strap'),(4,'Eye pillow'),(5,'Yoga Mat');

INSERT INTO `Content` VALUES (1,'Tristin Goyette DDS','Sed dolores optio ipsa.','/assets/content/content.mp3'),(2,'Cordelia Renner','Aliquam consequatur magni sit quia.','/assets/content/content2.mp3'),(3,'Madyson Koelpin','Quia rerum autem rem consectetur cumque.','/assets/content/content3.mp3'),(4,'Cristobal Dibbert Sr.','A voluptatibus recusandae et consequatur.','/assets/content/content4.mp3'),(5,'Solon Pfannerstill','Et eos quibusdam.','/assets/content/content5.mp3');

INSERT INTO `Achievement` VALUES (8259,1957,3901,399,521431.89477521,NULL,1),(14552,2955,9523,436,16840.815009325,NULL,2),(6764,1306,5565,570,1481.6066408174,NULL,3);

INSERT INTO `Activity_type` (`ID`, `Type`) VALUES (NULL, 'Walking'), (NULL, 'Running'), (NULL, 'Cycling');

INSERT INTO `Activity` (`ID`, `Start_date`, `End_date`, `Num_steps`, `Max_speed`, `Time_distance_checkpoint`, `Duration`, `Distance`, `Avg_speed`, `Calories`, `Activity_type.ID`, `User.ID`) VALUES (NULL, '2021-06-05 12:00:00', '2021-06-05 12:12:00', '1704', '7.86', '[{         \"time\": \"2021-06-05 12:00:00\",         \"distance\": 0,         \"steps\": 0     },     {         \"time\": \"2021-06-05 12:03:00\",         \"distance\": 256,         \"steps\": 388     },     {         \"time\": \"2021-06-05 12:06:00\",         \"distance\": 393,         \"steps\": 454     },     {         \"time\": \"2021-06-05 12:09:00\",         \"distance\": 389,         \"steps\": 400     },     {         \"time\": \"2021-06-05 12:12:00\",         \"distance\": 350,         \"steps\": 462     } ]', '720', '1388', '6.94', '256', 2, 6), (NULL, '2021-05-05 11:00:00', '2021-05-05 11:12:00', '2100', '8.2', '[     {         \"time\": \"2021-05-05 11:00:00\",         \"distance\": 0,         \"steps\": 0     },     {         \"time\": \"2021-05-05 11:03:00\",         \"distance\": 330,         \"steps\": 388     },     {         \"time\": \"2021-05-05 11:06:00\",         \"distance\": 400,         \"steps\": 454     },     {         \"time\": \"2021-05-05 11:09:00\",         \"distance\": 410,         \"steps\": 460     },     {         \"time\": \"2021-05-05 11:12:00\",         \"distance\": 403,         \"steps\": 462     } ]', '720', '1943', '9.715', '300', 2, 6), (NULL, '2021-05-06 11:00:00', '2021-05-06 11:13:00', '2190', '8.4', '[{\"time\": \"2021-05-05 11:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-05-05 11:03:00\", \"steps\": 400, \"distance\": 350}, {\"time\": \"2021-05-05 11:06:00\", \"steps\": 454, \"distance\": 400}, {\"time\": \"2021-05-05 11:09:00\", \"steps\": 460, \"distance\": 410}, {\"time\": \"2021-05-05 11:12:00\", \"steps\": 462, \"distance\": 403}]', '780', '2000', '10', '310', '2', '6'), (NULL, '2021-06-05 12:00:00', '2021-06-05 12:16:00', '2010', '5.31', '[{\"time\": \"2021-06-05 12:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-06-05 12:03:00\", \"steps\": 388, \"distance\": 256}, {\"time\": \"2021-06-05 12:06:00\", \"steps\": 454, \"distance\": 393}, {\"time\": \"2021-06-05 12:09:00\", \"steps\": 400, \"distance\": 389}, {\"time\": \"2021-06-05 12:12:00\", \"steps\": 462, \"distance\": 350}, {\"time\": \"2021-06-05 12:16:00\", \"steps\": 462, \"distance\": 350}]', '960', '1659', '5.1', '167', '1', '6'), (NULL, '2021-06-05 12:00:00', '2021-06-05 12:16:00', '2010', '5.31', '[{\"time\": \"2021-06-05 12:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-06-05 12:03:00\", \"steps\": 388, \"distance\": 256}, {\"time\": \"2021-06-05 12:06:00\", \"steps\": 454, \"distance\": 393}, {\"time\": \"2021-06-05 12:09:00\", \"steps\": 400, \"distance\": 389}, {\"time\": \"2021-06-05 12:12:00\", \"steps\": 462, \"distance\": 350}, {\"time\": \"2021-06-05 12:16:00\", \"steps\": 462, \"distance\": 350}]', '960', '1659', '5.1', '167', '1', '4'), (NULL, '2021-06-05 12:00:00', '2021-06-05 12:16:00', '1998', '5.21', '[{\"time\": \"2021-06-05 12:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-06-05 12:03:00\", \"steps\": 388, \"distance\": 256}, {\"time\": \"2021-06-05 12:06:00\", \"steps\": 454, \"distance\": 393}, {\"time\": \"2021-06-05 12:09:00\", \"steps\": 400, \"distance\": 389}, {\"time\": \"2021-06-05 12:12:00\", \"steps\": 462, \"distance\": 350}, {\"time\": \"2021-06-05 12:16:00\", \"steps\": 462, \"distance\": 350}]', '960', '1659', '5.1', '167', '1', '2'), (NULL, '2021-04-05 10:00:00', '2021-04-05 10:16:03', '1998', '5.5', '[{\"time\": \"2021-04-05 10:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-06-05 10:03:00\", \"steps\": 388, \"distance\": 256}, {\"time\": \"2021-06-05 10:06:00\", \"steps\": 454, \"distance\": 393}, {\"time\": \"2021-06-05 10:09:00\", \"steps\": 400, \"distance\": 389}, {\"time\": \"2021-06-05 10:12:00\", \"steps\": 462, \"distance\": 350}, {\"time\": \"2021-06-05 12:10:00\", \"steps\": 462, \"distance\": 350}]', '1003', '1700', '5.1', '167', '1', '1'), (NULL, '2021-05-06 11:00:00', '2021-05-06 11:13:00', '0', '30.6', '[{\"time\": \"2021-05-05 11:00:00\", \"steps\": 0, \"distance\": 0}, {\"time\": \"2021-05-05 11:03:00\", \"steps\": 0, \"distance\": 900}, {\"time\": \"2021-05-05 11:06:00\", \"steps\": 0, \"distance\": 1100}, {\"time\": \"2021-05-05 11:09:00\", \"steps\": 0, \"distance\": 830}, {\"time\": \"2021-05-05 11:12:00\", \"steps\": 0, \"distance\": 970}]', '780', '4300', '15.6', '310', '3', '3');

INSERT INTO `Challenge` (`ID`, `Title`, `Description`, `Image`, `Start_date`, `End_date`, `Checkpoints`) VALUES (NULL, 'Galaxy India Exploration', 'The Galaxy India Explorathon is set to kick off on April 9 and will span over 28 days. Participants have to follow the digital map of India covering five milestone cities of Srinagar, Lucknow, Delhi, Jaisalmer and Kochi while completing a minimum of 175000 steps.', '/assets/challange/image1.jpg', '2021-05-05 00:00:00', '2021-06-05 00:00:00', '[     {         \"1\": \"20000\",         \"deadline\": \"2021-05-10 00:00:00\",         \"score\": 50     },     {         \"2\": \"30000\",         \"deadline\": \"2021-05-15 00:00:00\",         \"score\": 60     },     {         \"3\": \"40000\",         \"deadline\": \"2021-05-20 00:00:00\",         \"score\": 70     },     {         \"4\": \"50000\",         \"deadline\": \"2021-05-25 00:00:00\",         \"score\": 90     },     {         \"5\": \"60000\",         \"deadline\": \"2021-05-30 00:00:00\",         \"score\": 100     } ]');

INSERT INTO `Contain` (`Mindfulness.ID`, `Content.ID`) VALUES ('1', '2'), ('2', '2'), ('3', '2'), ('4', '3'), ('4', '5');

INSERT INTO `Fitness_program` (`ID`, `Title`, `Description`, `Image`, `Duration`, `Difficulty`, `Total_workouts`, `Avg_workout_duration`, `Schedule`) VALUES (NULL, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae id optio, esse libero asperiores eveniet sapiente culpa! Provident porro dolore impedit quasi quod alias repudiandae! Corporis et illum minima at doloremque recusandae, a alias tempora totam. Provident perferendis, deserunt at sequi doloribus magnam iste temporibus officiis. Enim est placeat dolore.', '/assets/fitness-program/image1.jpg', '2', 'High', '16', '15', 'everyday'), (NULL, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae id optio, esse libero asperiores eveniet sapiente culpa! Provident porro dolore impedit quasi quod alias repudiandae! Corporis et illum minima at doloremque recusandae, a alias tempora totam. Provident perferendis, deserunt at sequi doloribus magnam iste temporibus officiis. Enim est placeat dolore.', '/assets/fitness-program/image2.jpg', '2', 'Low', '10', '10', 'odd week days'), (NULL, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae id optio, esse libero asperiores eveniet sapiente culpa! Provident porro dolore impedit quasi quod alias repudiandae! Corporis et illum minima at doloremque recusandae, a alias tempora totam. Provident perferendis, deserunt at sequi doloribus magnam iste temporibus officiis. Enim est placeat dolore.', '/assets/fitness-program/image2.jpg', '2', 'Medium', '14', '10', 'even week days');

INSERT INTO `Friendship` (`Requested_user.ID`, `Target_user.ID`, `Status`, `Created_at`, `Updated_at`) VALUES ('2', '1', 'Pending', '2021-05-01 16:14:30', NULL), ('2', '6', 'Accepted', '2021-05-03 16:13:00', '2021-05-05 16:14:30'), ('7', '9', 'Not accepted', '2021-05-05 16:13:56', '2021-05-08 16:15:56'), ('3', '8', 'Pending', '2021-05-05 16:14:30', NULL);

INSERT INTO `Have2` (`Fitness_program.ID`, `Fitness_program_type.ID`) VALUES ('1', '1'), ('2', '2'), ('3', '3');

INSERT INTO `Is_participated_by` (`Challenge.ID`, `User.ID`, `Current_steps`, `Rank`) VALUES ('1', '5', '0', NULL), ('1', '2', '1998', NULL), ('1', '9', '0', NULL), ('1', '10', '0', NULL), ('1', '1', '1998', NULL), ('1', '6', '8004', '1'), ('1', '4', '2010', NULL);

INSERT INTO `Participate` (`User.ID`, `Fitness_program.ID`) VALUES ('5', '1'), ('4', '3'), ('4', '2'), ('10', '3'), ('1', '2'), ('3', '1'), ('6', '3'), ('2', '2'), ('10', '2'), ('9', '1');

INSERT INTO `Record_type` (`ID`, `Type`, `Unit`) VALUES (NULL, 'Weight', 'kg'), (NULL, 'Sleep', 'hours'), (NULL, 'Food', 'kcal');

INSERT INTO `Record` (`ID`, `Value`, `Date`, `Record_type.ID`, `User.ID`) VALUES (NULL, '55', '2021-05-05 16:31:22', '1', '6'), (NULL, '59', '2021-04-05 16:31:22', '1', '6'), (NULL, '7', '2021-05-05 16:32:15', '2', '6'), (NULL, '500', '2021-05-05 16:32:35', '3', '2'), (NULL, '73', '2021-05-05 16:32:59', '1', '5'), (NULL, '65', '2021-05-04 16:33:20', '1', '9'), (NULL, '8', '2021-03-05 16:33:48', '2', '5');

INSERT INTO `Require` (`Equipment.ID`, `Fiteness_program.ID`) VALUES ('4', '1'), ('2', '1'), ('5', '1'), ('3', '2'), ('4', '3'), ('2', '2');