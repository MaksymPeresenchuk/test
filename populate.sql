INSERT INTO Certifications (certification_id, certification_name) VALUES
('COUR','COURSE');
('SPEC','SPECIALIZATION');


INSERT INTO Organizations (organization_id, organization_name) VALUES
('DU','Duke University');
('UOCSC','University of California, Santa Cruz');
('IBM','International Business Machines');
('UOCB','University of Colorado Boulder');
('JHU','Johns Hopkins University');
('AWS','Amazon Web Services');
('UOCS','University of Colorado System');
('ISOB','Indian School of Business');
('DLAI','deeplearning.ai');
('UOCI','University of California, Irvine');


INSERT INTO Difficulty (difficulty_id, difficulty_level) VALUES
('BEG','Beginner');
('INT','Intermediate');
('ADV','Advanced');
('MIX','Mixed');


INSERT INTO Courses (course_id, course_title, organization_id, certification_id, difficulty_id, avg_rating, amount_of_students) VALUES
('1','Advertising and Societ','DU','COUR','MIX','4.8','14.0');
('2','Bayesian Statistics: Techniques and Models','UOCSC','COUR','INT','4.8','29.0');
('3','AI Foundations for Everyone','IBM','SPEC','BEG','4.7','61.0');
('4','Advanced Business Analytics','UOCB','SPEC','INT','4.5','78.0');
('5','A Crash Course in Data Science','JHU','COUR','MIX','4.5','83.0');
('6','AWS Fundamentals','AWS','SPEC','BEG','4.6','89.0');
('7','Data Warehousing for Business Intelligence','UOCS','SPEC','ADV','4.5','96.0');
('8','A Life of Happiness and Fulfillment','ISOB','COUR','MIX','4.8','102.0');
('9','AI For Everyone','DLAI','COUR','BEG','4.8','117.0');
('10','Academic English: Writing','UOCI','SPEC','BEG','4.7','125.0');

