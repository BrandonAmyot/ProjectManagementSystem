-- Query 8a (with SID as input)
SELECT TID
FROM Members
WHERE SID=1001;

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