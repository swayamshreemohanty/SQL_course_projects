-- SELECT * FROM employees
-- SELECT e.id AS employee_id, e.first_name, p.title FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;



-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name AS team_name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id=2
-- ;


SELECT e.id AS employee_id, e.first_name, e.last_name, t.name AS team_name, cb.name AS building_name
FROM employees AS e
INNER JOIN teams AS t ON t.id = e.team_id
INNER JOIN company_buildings AS cb ON cb.id = t.building_id
WHERE cb.id=3
;