/* Removed students in order to not have only teams of 4 from student*/
DELETE FROM `projectmanagementsystem`.`student` WHERE `SID`='1051';
DELETE FROM `projectmanagementsystem`.`student` WHERE `SID`='1023';
DELETE FROM `projectmanagementsystem`.`student` WHERE `SID`='1022';

/* Removed students in order to not have only teams of 4 from members*/
DELETE FROM `projectmanagementsystem`.`members` WHERE `SID`='1051';
DELETE FROM `projectmanagementsystem`.`members` WHERE `SID`='1023';
DELETE FROM `projectmanagementsystem`.`members` WHERE `SID`='1022';

/* Updated team NoOfMembers*/
UPDATE `projectmanagementsystem`.`teams` SET `NoOfMembers`='3' WHERE `TID`='13';
UPDATE `projectmanagementsystem`.`teams` SET `NoOfMembers`='2' WHERE `TID`='6';
