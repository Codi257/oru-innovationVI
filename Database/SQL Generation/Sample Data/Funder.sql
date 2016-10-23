DROP TABLE IF EXISTS Funder;
CREATE TABLE Funder(
   FunderID    INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,ProjectID   INTEGER  NOT NULL
  ,Funder      INTEGER  NOT NULL
  ,GrantID     VARCHAR(30)
  ,StartDate   DATE  NOT NULL
  ,EndDate     VARCHAR(10) NOT NULL
  ,DateCreated VARCHAR(13) NOT NULL
  ,DateUpdated VARCHAR(14) NOT NULL
  ,UserID      INTEGER  NOT NULL
  ,DateDeleted VARCHAR(30)
  ,ExportID    INTEGER  NOT NULL
);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (254,79,33,NULL,'10/1/2010','12/31/9999','10/10/14 1:38','12/12/14 12:54',178107,NULL,8094);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (255,130,33,NULL,'10/1/2010','12/31/9999','10/10/14 1:43','12/12/14 12:54',178107,NULL,8094);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (256,78,33,NULL,'10/1/2010','12/31/9999','10/10/14 1:46','12/12/14 12:54',178107,NULL,8094);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (282,79,16,NULL,'10/1/2010','12/31/9999','12/12/14 2:57','12/12/14 2:58',178107,NULL,8094);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (283,130,16,NULL,'10/1/2010','12/31/9999','12/12/14 2:58','12/12/14 2:58',178107,NULL,8094);
INSERT INTO Funder(FunderID,ProjectID,Funder,GrantID,StartDate,EndDate,DateCreated,DateUpdated,UserID,DateDeleted,ExportID) VALUES (284,78,16,NULL,'10/1/2010','12/31/9999','12/12/14 2:58','12/12/14 2:59',178107,NULL,8094);
