-- Функція виводить курси, із кількістю студентів вище заданою (у тисячах)
DROP FUNCTION IF EXISTS get_quantity(float8); 

CREATE OR REPLACE FUNCTION  get_quantity(set_qua float8) 
    RETURNS TABLE (course_qua varchar, quantity float8)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT courses.course_title::varchar, courses.amount_of_students::float8
    FROM courses 
    WHERE courses.amount_of_students > set_qua;
END;
$$;

-- Тестування
SELECT * FROM get_quantity(100.0);