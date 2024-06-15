-- Triggers and Events

-- Triggers
-- Triggers are used to initiate an event

DELIMITER $$
CREATE TRIGGER employee_update
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;


INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Joseph', 'Badmus', 'Carpenter', 50000, 3);

select * 
from employee_salary;

select *
from employee_demographics;


-- EVENTS

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

-- Troubleshooting
show variables like 'event%';






