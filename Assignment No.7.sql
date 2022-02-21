
ORACLE UPDATEABLE VIEW


INSERTING DATA 

INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (1,'John','Mathew','M','1-03-1988','John.Mathew@xyz.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (2,'Jim	','Parker','M','12-01-1978','Jim.Parker@xyz.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (3,'Sophia','Ran','F','10-08-1981','Sophia.Ran@xyz.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (4,'Wendi','Blake','F','21-06-1989','Wendi.Blake@xyz.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (5,'Roberto','Tamburello','M','17-02-1988','RTamburello@contoso.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (6,'Janice','Galvin','M','29-09-1958','JGalvin@contoso.com.co');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (7,'Shakti','Menon','F','20-04-1988','SMenon@contoso.net');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (8,'Zheng','Mu','M','13-11-1978','ZMu@contoso.net');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (9,'Shainace','Fernandes','F','15-02-1988','Shainace.Fernandes@xyz.com');
INSERT INTO members(MEMBER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL) VALUES (10,'Lisa','Cooper','F','19-12-1988','Lisa.Cooper@xyz.com');

		
			
-- CREATING VIEW 
-- The following statement creates a view named member_details based on the members table:

CREATE VIEW member_details AS 
SELECT
    member_id,
    first_name
FROM
    members;
    
-- It’s possible to delete a row from the members table via the member_details view:
DELETE
FROM
    member_details
WHERE
    member_id = 10;

--And you can update any column values exposed to the member_details view:
UPDATE
    member_details
SET
    first_name = 'Reyansh'
WHERE
    member_id = 2;

---
SELECT
    * FROM
    member_details;
    

