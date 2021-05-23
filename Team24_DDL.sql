DROP DATABASE IF EXISTS `samsung-health`;

CREATE DATABASE `samsung-health`;

USE `samsung-health`;

CREATE TABLE Activity_type
(
    ID   INT AUTO_INCREMENT
        PRIMARY KEY,
    Type VARCHAR(255) NOT NULL
);

CREATE TABLE Challenge
(
    ID          INT AUTO_INCREMENT
        PRIMARY KEY,
    Title       VARCHAR(255) NOT NULL,
    Description TEXT         NOT NULL,
    Image       VARCHAR(255) NOT NULL,
    Start_date  DATETIME     NOT NULL,
    End_date    DATETIME     NOT NULL,
    Checkpoints JSON         NOT NULL
);

CREATE TABLE Content
(
    ID     INT AUTO_INCREMENT
        PRIMARY KEY,
    Author VARCHAR(255) NULL,
    Title  VARCHAR(255) NOT NULL,
    Path   VARCHAR(255) NOT NULL
);

CREATE TABLE Equipment
(
    ID        INT AUTO_INCREMENT
        PRIMARY KEY,
    Equipment VARCHAR(255) NOT NULL
);

CREATE TABLE Fitness_program
(
    ID                   INT AUTO_INCREMENT
        PRIMARY KEY,
    Title                VARCHAR(255)                   NOT NULL,
    Description          TEXT                           NOT NULL,
    Image                VARCHAR(255)                   NOT NULL,
    Duration             INT                            NOT NULL,
    Difficulty           ENUM ('Low', 'Medium', 'High') NOT NULL,
    Total_workouts       INT                            NULL,
    Avg_workout_duration INT                            NULL,
    Schedule             VARCHAR(255)                   NULL
);

CREATE TABLE Fitness_program_type
(
    ID   INT AUTO_INCREMENT
        PRIMARY KEY,
    Type VARCHAR(255) NOT NULL
);

CREATE TABLE Have2
(
    `Fitness_program.ID`      INT NOT NULL,
    `Fitness_program_type.ID` INT NOT NULL,
    PRIMARY KEY (`Fitness_program.ID`, `Fitness_program_type.ID`),
    CONSTRAINT Belong_to3
        FOREIGN KEY (`Fitness_program_type.ID`) REFERENCES Fitness_program_type (ID),
    CONSTRAINT Have
        FOREIGN KEY (`Fitness_program.ID`) REFERENCES Fitness_program (ID)
);

CREATE TABLE Mindfulness
(
    ID               INT AUTO_INCREMENT
        PRIMARY KEY,
    Mind_title       VARCHAR(255) NOT NULL,
    Mind_description TEXT         NULL,
    Image            VARCHAR(255) NULL
);

CREATE TABLE Contain
(
    `Mindfulness.ID` INT NOT NULL,
    `Content.ID`     INT NOT NULL,
    PRIMARY KEY (`Mindfulness.ID`, `Content.ID`),
    CONSTRAINT Belong_to2
        FOREIGN KEY (`Content.ID`) REFERENCES Content (ID),
    CONSTRAINT Contains
        FOREIGN KEY (`Mindfulness.ID`) REFERENCES Mindfulness (ID)
);

CREATE TABLE Record_type
(
    ID   INT AUTO_INCREMENT
        PRIMARY KEY,
    Type VARCHAR(255) NOT NULL,
    Unit VARCHAR(255) NOT NULL
);

CREATE TABLE `Require`
(
    `Equipment.ID`        INT NOT NULL,
    `Fiteness_program.ID` INT NOT NULL,
    PRIMARY KEY (`Fiteness_program.ID`, `Equipment.ID`),
    CONSTRAINT Belong_to4
        FOREIGN KEY (`Equipment.ID`) REFERENCES Equipment (ID),
    CONSTRAINT Requires
        FOREIGN KEY (`Fiteness_program.ID`) REFERENCES Fitness_program (ID)
);

CREATE TABLE `User`
(
    ID             INT AUTO_INCREMENT
        PRIMARY KEY,
    Email          VARCHAR(255)                                                NOT NULL,
    Password       VARCHAR(255)                                                NOT NULL,
    Name_Fname     VARCHAR(255)                                                NOT NULL,
    Name_Lname     VARCHAR(255)                                                NOT NULL,
    Sex            ENUM ('Male','Female')                                      NULL,
    Date_of_birth  DATE                                                        NULL,
    Activity_level ENUM ('Sedentary','Somewhat active','Active','Very active') NULL,
    Score          INT                                                         NULL,
    Level          INT                                                         NULL,
    Height         DOUBLE                                                      NULL,
    Weight         DOUBLE                                                      NULL,
    Age            INT                                                         NULL
);

CREATE TABLE Achievement
(
    Most_steps       BIGINT       NULL,
    Longest_duration BIGINT       NULL,
    Longest_distance BIGINT       NULL,
    Most_calories    INT          NULL,
    Fastest_speed    DOUBLE       NULL,
    Challenge_result VARCHAR(255) NULL,
    `User.ID`        INT AUTO_INCREMENT
        PRIMARY KEY,
    CONSTRAINT Have1
        FOREIGN KEY (`User.ID`) REFERENCES User (ID)
);

CREATE TABLE Activity
(
    ID                       INT AUTO_INCREMENT
        PRIMARY KEY,
    `Activity_type.ID`       INT      NOT NULL,
    `User.ID`                INT      NOT NULL,
    Start_date               DATETIME NULL,
    End_date                 DATETIME NULL,
    Num_steps                BIGINT   NULL,
    Max_speed                DOUBLE   NULL,
    Time_distance_checkpoint JSON     NULL,
    Duration                 INT      NULL,
    Distance                 INT      NULL,
    Avg_speed                DOUBLE   NULL,
    Calories                 DOUBLE   NULL,
    CONSTRAINT Be_in1
        FOREIGN KEY (`Activity_type.ID`) REFERENCES Activity_type (ID),
    CONSTRAINT Belong_to1
        FOREIGN KEY (`User.ID`) REFERENCES User (ID)
);

CREATE TABLE Friendship
(
    `Requested_user.ID` INT                                          NOT NULL,
    `Target_user.ID`    INT                                          NOT NULL,
    Status              ENUM ('Pending', 'Accepted', 'Not accepted') NOT NULL,
    Created_at          TIMESTAMP                                    NOT NULL,
    Updated_at          TIMESTAMP                                    NOT NULL,
    PRIMARY KEY (`Requested_user.ID`, `Target_user.ID`),
    CONSTRAINT Receives
        FOREIGN KEY (`Target_user.ID`) REFERENCES User (ID),
    CONSTRAINT Requests
        FOREIGN KEY (`Requested_user.ID`) REFERENCES User (ID)
);

CREATE TABLE Is_participated_by
(
    `Challenge.ID` INT    NOT NULL,
    `User.ID`      INT    NOT NULL,
    Current_steps  BIGINT NULL,
    `Rank`         INT    NULL,
    PRIMARY KEY (`Challenge.ID`, `User.ID`),
    CONSTRAINT Participated_by
        FOREIGN KEY (`Challenge.ID`) REFERENCES Challenge (ID),
    CONSTRAINT Participates1
        FOREIGN KEY (`User.ID`) REFERENCES User (ID)
);

CREATE TABLE Participate
(
    `User.ID`            INT NOT NULL,
    `Fitness_program.ID` INT NOT NULL,
    PRIMARY KEY (`User.ID`, `Fitness_program.ID`),
    CONSTRAINT Has
        FOREIGN KEY (`Fitness_program.ID`) REFERENCES Fitness_program (ID),
    CONSTRAINT Participates2
        FOREIGN KEY (`User.ID`) REFERENCES User (ID)
);

CREATE TABLE Record
(
    ID               INT AUTO_INCREMENT
        PRIMARY KEY,
    Value            DOUBLE   NULL,
    Date             DATETIME NULL,
    `Record_type.ID` INT      NOT NULL,
    `User.ID`        INT      NOT NULL,
    CONSTRAINT Be_in2
        FOREIGN KEY (`Record_type.ID`) REFERENCES Record_type (ID),
    CONSTRAINT Belong_to5
        FOREIGN KEY (`User.ID`) REFERENCES User (ID)
);

