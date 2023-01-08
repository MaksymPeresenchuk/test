-- Даний тригер при додаванні нового рядка в таблицю Certifications записує
-- значення поля certification_name у верхньому регістрі.

DROP TRIGGER IF EXISTS certificate_insert ON customers;

CREATE OR REPLACE FUNCTION upper_certificate_name() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE certifications 
          SET certification_name = upper(certification_name) WHERE certifications.certification_id = NEW.certification_id; 
		  RETURN NULL;
     END;
$$;

CREATE TRIGGER certificate_insert 
AFTER INSERT ON certifications
FOR EACH ROW EXECUTE FUNCTION upper_certificate_name()

-- Перевірка роботи
INSERT INTO certifications (certification_id, certification_name) VALUES ('PROF', 'Professional');
-- Видалимо доданий рядок з таблиці Certifications
DELETE FROM certifications where certification_id = 'PROF';

SELECT * FROM certifications