USE ProjectManagementSystem;

SELECT TID, 4 - NoOfMembers
FROM teams
WHERE NoOfMembers < 4;