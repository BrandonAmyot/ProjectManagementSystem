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
