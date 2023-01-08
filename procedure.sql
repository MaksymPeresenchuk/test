-- Дана процедура insert_org(org_id varchar, org_name varchar) додає в таблицю organizations
-- новий рядок із вказаними аргументами.

DROP PROCEDURE IF EXISTS insert_org(varchar, varchar);
CREATE OR REPLACE PROCEDURE insert_org(org_id varchar, org_name varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO organizations (organization_id, organization_name) VALUES (org_id, org_name);
END;
$$;

SELECT * FROM organizations
-- Виклик процедури
CALL insert_org ('KPI', 'Kyiv Polytechnic Institute');

