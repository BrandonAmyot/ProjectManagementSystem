USE projectmanagementsystem;

-- Query 1
SELECT Student.SID, NAME
FROM Student, Members
WHERE Student.SID=Members.SID AND TID IS NULL;

-- Query 2
SELECT Members.TID, Student.SID, NAME
FROM Student, Members
WHERE Student.SID=Members.SID
ORDER BY TID;

-- Query 3
SELECT Student.SID, NAME
FROM Student, Demos
WHERE Student.SID=Demos.SID AND Grade='N';

-- Query 4
SELECT TID
FROM Teams
WHERE NoOfMembers<4;

-- Query 5 (note that the TID value will be inputted by the user)
SELECT NAME
FROM Student, Members
WHERE Student.SID=Members.SID AND TID=1;

-- Query 6
SELECT DISTINCT TID
FROM demos
WHERE demos.Date = '2018-04-08';

-- Query 7
SELECT TID, 4 - NoOfMembers
FROM teams
WHERE NoOfMembers < 4;

-- Query 8a (with SID as input)
SELECT TID
FROM Members
WHERE members.SID=1001;

-- Query 8b (with NAME as input)
SELECT TID
FROM Members, Student
WHERE Members.SID=Student.SID AND NAME='Marie';

-- Query 9a (with SID as input)
SELECT Student.SID, NAME
FROM Members, Student
WHERE Members.SID=Student.SID AND TID IN (SELECT TID 
										  FROM Members
                                          WHERE SID='1001') 
	  AND Student.SID<>'1001';

-- Query 9b (with NAME as input)
SELECT Student.SID, NAME
FROM Members, Student
WHERE Members.SID=Student.SID AND TID IN (SELECT TID 
										  FROM Members, Student
                                          WHERE Members.SID=Student.SID 
												AND NAME='Brandon') 
	  AND NAME<>'Brandon';
