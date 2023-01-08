-- Перевірка роботи функції
SELECT * FROM courses

SELECT * FROM get_quantity(100.0);
SELECT * FROM get_quantity(40.0);
SELECT * FROM get_quantity(80.0);

-- Перевірка роботи тригеру
SELECT * FROM certifications

INSERT INTO certifications (certification_id, certification_name) VALUES ('PROF', 'Professional');
INSERT INTO certifications (certification_id, certification_name) VALUES ('STAT', 'Statistic');
INSERT INTO certifications (certification_id, certification_name) VALUES ('PROB', 'Probability');

DELETE FROM certifications where certification_id = 'PROF';
DELETE FROM certifications where certification_id = 'STAT';
DELETE FROM certifications where certification_id = 'PROB';

-- Перевірка роботи процедури
SELECT * FROM organizations

CALL insert_org ('KPI', 'Kyiv Polytechnic Institute');
CALL insert_org ('LPNU', 'Lviv Polytechnic National University');
CALL insert_org ('UCU', 'Ukrainian Catholic University');

DELETE FROM organizations where organization_id = 'KPI';
DELETE FROM organizations where organization_id = 'LPNU';
DELETE FROM organizations where organization_id = 'UCU';

