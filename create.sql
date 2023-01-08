CREATE TABLE Courses
(
  course_id            INT   NOT NULL,
  course_title         char(100)  NOT NULL,
  organization_id      char(5)  NOT NULL REFERENCES Organizations (organization_id),
  certification_id     char(4)  NOT NULL REFERENCES Certifications (certification_id),
  difficulty_id        char(3)  NOT NULL REFERENCES Difficulty (difficulty_id),
  avg_rating           float8 NOT NULL,
  amount_of_students   float8 NOT NULL,
  CONSTRAINT pk_courses PRIMARY KEY (course_id)
);


CREATE TABLE Certifications
(
  certification_id      char(4)  NOT NULL,
  certification_name    char(20)  NOT NULL,
  CONSTRAINT pk_certifications PRIMARY KEY (certification_id)
);


CREATE TABLE Organizations
(
  organization_id      char(5)  NOT NULL,
  organization_name    char(50)  NOT NULL,
  CONSTRAINT pk_organizations PRIMARY KEY (organization_id)
);


CREATE TABLE Difficulty
(
  difficulty_id       char(3)  NOT NULL,
  difficulty_level    char(40) NOT NULL,
  CONSTRAINT pk_difficulty PRIMARY KEY (difficulty_id)  
);
