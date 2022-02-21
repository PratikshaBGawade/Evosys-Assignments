
DROP VIEW

-- CREATING VIEW 
-- The following statement creates a view named emp_dept based on the emp table:
CREATE VIEW emp_dept AS 
SELECT
    *
FROM
    emp
WHERE
    deptno = 30;

-- The view returns only emp whose deptno is 30.
SELECT
    *
FROM
    emp_dept;
    
-- The following statement creates another view named emp_details based on the emp_dept view:
CREATE VIEW emp_details AS 
SELECT
    ename,
    job,
    sal,
    deptno
FROM
    emp_dept;

--The salesman_contacts view returns the only name, job,sal and deptno of the employee:
SELECT
    *
FROM
    emp_details;

-- To drop the emp_dept view, you use the following statement:
DROP VIEW emp_dept;

-- Because the emp_details view is dependent on the emp_dept view, it became invalid when the emp_dept view was dropped.
SELECT
    object_name,
    status
FROM
    user_objects
WHERE
    object_type = 'VIEW'
    AND object_name = 'EMP_DETAILS';
    
-- To drop the emp_details view, you use the following DROP VIEW statement:
DROP VIEW emp_details;


