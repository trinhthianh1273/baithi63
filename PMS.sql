DROP DATABASE IF EXISTS PMS;

CREATE DATABASE IF NOT EXISTS PMS;

USE PMS;

CREATE TABLE ORGANIZATION(
	OrganizationID INTEGER NOT NULL AUTO_INCREMENT,
	OrganizationName varchar(255) NULL,
	Code varchar(20) NULL,
	Address varchar(255) NULL,
	Phone varchar(50) NULL,
	Fax char(50) NULL,
	Email varchar(255) NULL,
	Website varchar(255) NULL,
	ParentID INTEGER NULL,
 CONSTRAINT PK_ORGANIZATION PRIMARY KEY CLUSTERED 
(
	OrganizationID
)
);


CREATE TABLE EMPLOYEE(
	EmployeeID INTEGER NOT NULL AUTO_INCREMENT,
	FirstName varchar(50) NULL,
	Code varchar(15) NULL,
	LastName varchar(30) NULL,
	Address varchar(255) NULL,
	Phone varchar(50) NULL,
	Mobile varchar(255) NULL,
	Email varchar(255) NULL,
	Photo varchar (255),
	CurriculumVitaeType varchar(255) NULL,
	CurriculumVitae varchar (255) NULL,
	OrganizationID INTEGER NULL,
	DateofBirth datetime NULL,
	IndentifyNumber varchar(50) NULL,
	IssuedPlace varchar(255) NULL,
	IssuedDate datetime NULL,
	PresentResidence varchar(255) NULL,
	RecruitedDate datetime NULL,
	DateOfEnteringOffice datetime NULL,
	NominatedDate datetime NULL,
	SexID INTEGER NULL,
	PositionID INTEGER NULL,
	Status INTEGER NULL,
 CONSTRAINT PK_EMPLOYEE PRIMARY KEY CLUSTERED 
(
	EmployeeID )
);

CREATE TABLE POSITION (
	PositionID INTEGER NOT NULL AUTO_INCREMENT,
	PositionName varchar(255) NULL,
 CONSTRAINT PK_POSITION PRIMARY KEY CLUSTERED 
(
	PositionID ));

CREATE TABLE SEX(
	SexID INTEGER NOT NULL AUTO_INCREMENT,
	SexName varchar(255) NULL,
 CONSTRAINT PK_SEX PRIMARY KEY CLUSTERED 
(
	SexID ASC
)
); 

CREATE TABLE USERS(
	UsersID INTEGER NOT NULL AUTO_INCREMENT,
	UserName varchar(50) NULL,
	Password varchar(255) NULL,
	Discription varchar(255) NULL,
	EmployeeID INTEGER NULL,
 CONSTRAINT PK_USERS PRIMARY KEY CLUSTERED 
(
	UsersID 
)
);

INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (40, N'Tr???n H???i', N'100001', N'Tri???u', N'H?? N???i', NULL, N'0902603358', N'trieuth@tnt-tech.vn', NULL, NULL, NULL, 4, CAST(N'1975-09-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (41, N'Tr???n H???ng', N'100002', N'H??a', N'H?? N???i', NULL, N'0913226249', N'hoath@tnt-tech.vn', NULL, NULL, NULL, 4, CAST(N'1974-10-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (42, N'?????ng Vi???t', N'100004', N'H??ng', N'H?? N???i', NULL, N'0915436211', N'hungdv@tnt-tech.vn', NULL, NULL, NULL, 5, CAST(N'1988-04-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (43, N'L?? Th??? Thu', N'100005', N'Trang', N'H?? N???i', NULL, N'0942635386', N'tranglt@tnt-tech.vn', NULL, NULL, NULL, 5, CAST(N'1986-12-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (44, N'?????ng Th???', N'100006', N'????o', N'H?? N???i', NULL, N'0983011289', N'daodt@tnt-tech.vn', NULL, NULL, NULL, 5, CAST(N'1989-12-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (45, N'Nguy???n ????o Anh', N'100007', N'Tu???n', N'H?? N???i', NULL, N'0912653335', N'chatunhi@gmail.com', NULL, NULL, NULL, 5, CAST(N'1967-11-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (46, N'Ph???m Th???', N'100008', N'Dung', N'H?? N???i', NULL, N'0971186368', N'dungpt@tnt-tech.vn', NULL, NULL, NULL, 5, CAST(N'1992-02-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (47, N'Nguy???n Kim', N'100009', N'Ng???c', N'H?? N???i', NULL, N'0988428698', N'purchasing@tnt-tech.vn', NULL, NULL, NULL, 6, CAST(N'1985-05-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (48, N'D????ng V??n', N'100010', N'Th??nh', N'H?? N???i', NULL, N'0936657222', N'thanhdv@tnt-tech.vn', NULL, NULL, NULL, 6, CAST(N'1985-04-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (49, N'L?? Th??? Thu', N'100038', N'Hi???n', N'H?? N???i', NULL, N'0902108824', N'hienltt@tnt-tech.vn', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (50, N'N??ng Th??? Th??y', N'100012', N'Linh', N'H?? N???i', NULL, N'0943442123', N'linhnt@tnt-tech.vn', NULL, NULL, NULL, 7, CAST(N'1989-12-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (51, N'??o??n Vi???t', N'100014', N'Chung', N'H?? N???i', NULL, N'0932160573', N'chungtnt.tech@gmail.com', NULL, NULL, NULL, 7, CAST(N'1973-05-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (52, N'L?? Tr???n', N'100015', N'????ng', N'H?? N???i', NULL, N'0901766699', N'danglt@tnt-tech.vn', NULL, NULL, NULL, 8, CAST(N'1981-09-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (53, N'??inh Tr?????ng', N'100017', N'Xu??n', N'H?? N???i', NULL, N'0389971300', N'xuandt@tnt-tech.vn', NULL, NULL, NULL, 8, CAST(N'1990-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (54, N'????? Qu???c', N'100016', N'H??ng', N'H?? N???i', NULL, N'0913031759', N'hungdq@tnt-tech.vn', NULL, NULL, NULL, 8, CAST(N'1976-11-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (55, N'Ki???u V??n', N'100037', N'Kh???i', N'H?? N???i', NULL, N'0919232885', N'khaikv@tnt-tech.vn', NULL, NULL, NULL, 8, CAST(N'1977-06-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (56, N'Nguy???n Vi???t', N'100019', N'H??ng', N'H?? N???i', NULL, N'0868604330', N'hungnv@tnt-tech.vn', NULL, NULL, NULL, 9, CAST(N'1987-07-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (57, N'Nguy???n Xu??n', N'100020', N'M???nh', N'H?? N???i', NULL, N'0903257330', N'manhnx@tnt-tech.vn', NULL, NULL, NULL, 9, CAST(N'1990-12-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 17, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (58, N'????? Qu???c', N'100039', N'S??n', N'H?? N???i', NULL, N' 0903257044 ', N' sondq@tnt-tech.vn ', NULL, NULL, NULL, 9, CAST(N'1991-09-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 17, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (59, N'Ho??ng V??n', N'100023', N'Lanh', N'H?? N???i', NULL, N'0986497369', N'lanhhv@tnt-tech.vn', NULL, NULL, NULL, 10, CAST(N'1986-10-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (60, N'Nguy???n Kim', N'100024', N'Ki??n', N'H?? N???i', NULL, N'0968090587', N'kiennk@tnt-tech.vn', NULL, NULL, NULL, 10, CAST(N'1987-09-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (61, N'V?? Th???', N'100025', N'Th???c', N'H?? N???i', NULL, N'0949961288', N'thucvt@tnt-tech.vn', NULL, NULL, NULL, 10, CAST(N'1988-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (62, N'Ph???m Thanh', N'100026', N'T??ng', N'H?? N???i', NULL, N'0912365275', N'tungpt@tnt-tech.vn', NULL, NULL, NULL, 10, CAST(N'1982-07-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (63, N'L?? H???i', N'100029', N'Qu??n', N'H?? N???i', NULL, N' 0812950035 ', N'quanlh@tnt-tech.vn', NULL, NULL, NULL, 10, CAST(N'1990-10-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (64, N'Ph???m Th??i', N'100039', N'D????ng', N'H?? N???i', NULL, N'0966533568', N'duongpt@tnt-tech.vn', NULL, NULL, NULL, 11, CAST(N'1984-12-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 20, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (65, N'Nguy???n Thu', N'100036', N'Ph????ng', N'H?? N???i', NULL, N'0328452456', N'phuong-nguyenthu@tnt-tech.vn', NULL, NULL, NULL, 11, CAST(N'1998-02-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (66, N'Th??i V??n', N'100003', N'Minh', N'H??? Ch?? Minh', NULL, N'0903664290', N'minhtv@tnt-tech.vn', NULL, NULL, NULL, 12, CAST(N'1974-09-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (67, N'????? Tuy???t', N'100013', N'Anh', N'H??? Ch?? Minh', NULL, N'0938745785', N'anhdt@tnt-tech.vn', NULL, NULL, NULL, 13, CAST(N'1990-04-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (68, N'Ph???m Thanh', N'100044', N'Tuy???n', N'H??? Ch?? Minh', NULL, N'0983776264', N'tuyenpt@tnt-tech.vn', NULL, NULL, NULL, 14, CAST(N'1992-08-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (69, N'Nguy???n C??ng', N'100018', N'Nam', N'H??? Ch?? Minh', NULL, N'0986485479', N'namnc@tnt-tech.vn', NULL, NULL, NULL, 17, CAST(N'1991-03-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (70, N'Tr???n Minh', N'100033', N'Qu??n', N'H??? Ch?? Minh', NULL, N' 0376845954 ', N' quantm@tnt-tech.vn ', NULL, NULL, NULL, 17, CAST(N'1997-11-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (71, N'Tr???n Ng???c', N'100021', N'Ph????ng', N'H??? Ch?? Minh', NULL, N'0909994003', N'phuongtn@tnt-tech.vn', NULL, NULL, NULL, 15, CAST(N'1989-10-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 17, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (72, N'Nguy???n Th??nh', N'100022', N'Ph????ng', N'H??? Ch?? Minh', NULL, N'0905461801', N'phuongnt@tnt-tech.vn', NULL, NULL, NULL, 15, CAST(N'1992-01-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 17, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (73, N'Cao Minh', N'100027', N'Nh???t', N'H??? Ch?? Minh', NULL, N'0932434191', N'nhutcm@tnt-tech.vn', NULL, NULL, NULL, 16, CAST(N'1985-11-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (74, N'L??u Quang', N'100028', N'V??', N'H??? Ch?? Minh', NULL, N'0944977863', N'vulq@tnt-tech.vn', NULL, NULL, NULL, 16, CAST(N'1997-01-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (75, N'Nguy???n H???u', N'100031', N'T??i', N'H??? Ch?? Minh', NULL, N' 0936649796 ', N' tainh@tnt-tech.vn ', NULL, NULL, NULL, 16, CAST(N'1991-04-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (76, N'Tr???n Th???', N'100035', N'Vinh', N'H??? Ch?? Minh', NULL, N' 0963835034 ', N' vinhtt@tnt-tech.vn ', NULL, NULL, NULL, 16, CAST(N'1997-04-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (77, N'Nguy???n Trung', N'100046', N'Hi???u', N'H??? Ch?? Minh', NULL, N' 0967730672 ', N' hieunt@tnt-tech.vn ', NULL, NULL, NULL, 16, CAST(N'1998-01-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);
INSERT EMPLOYEE (EmployeeID, FirstName, Code, LastName, Address, Phone, Mobile, Email, Photo, CurriculumVitaeType, CurriculumVitae, OrganizationID, DateofBirth, IndentifyNumber, IssuedPlace, IssuedDate, PresentResidence, RecruitedDate, DateOfEnteringOffice, NominatedDate, SexID, PositionID, Status) VALUES (78, N'D????ng ??i???n ????ng', N'100047', N'Khoa', N'H??? Ch?? Minh', NULL, N' 0901496981 ', N' khoadd@tnt-tech.vn ', NULL, NULL, NULL, 16, CAST(N'1993-02-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, 1);


INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (1, N'TNT Technologies Joint Stock Company', N'TNT', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (2, N'TR??? S??? C??NG TY T???I H?? N???I', N'HANOI', NULL, NULL, NULL, NULL, NULL, 1);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (3, N'V??N PH??NG ?????I DI???N TP H??? CH?? MINH ', N'HCM', NULL, NULL, NULL, NULL, NULL, 1);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (4, N'BAN GI??M ?????C', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (5, N'PH??NG T??I CH??NH - K??? TO??N', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (6, N'PH??NG MUA H??NG', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (7, N'PH??NG H??NH CH??NH - NH??N S???', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (8, N'PH??NG GI???I PH??P & THI???T K???', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (9, N'PH??NG D???CH V??? K??? THU???T', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (10, N'PH??NG D??? ??N', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (11, N'PH??NG KINH DOANH', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (12, N'TR?????NG V??N PH??NG ?????I DI???N TP H??? CH?? MINH', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (13, N'K??? TO??N ', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (14, N'H??NH CH??NH NH??N S??? ', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (15, N'PH??NG D???CH V??? K??? THU???T', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (16, N'PH??NG D??? ??N', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT ORGANIZATION (OrganizationID, OrganizationName, Code, Address, Phone, Fax, Email, Website, ParentID) VALUES (17, N'PH??NG GI???I PH??P & THI???T K???', NULL, NULL, NULL, NULL, NULL, NULL, 3);

INSERT POSITION (PositionID, PositionName) VALUES (1, N'Gi??m ?????c');
INSERT POSITION (PositionID, PositionName) VALUES (2, N'Ph?? Gi??m ?????c');
INSERT POSITION (PositionID, PositionName) VALUES (3, N'Tr?????ng ?????i di???n VP H??? Ch?? Minh');
INSERT POSITION (PositionID, PositionName) VALUES (4, N'K??? to??n tr?????ng');
INSERT POSITION (PositionID, PositionName) VALUES (5, N'K??? to??n');
INSERT POSITION (PositionID, PositionName) VALUES (6, N'Nh??n vi??n kho');
INSERT POSITION (PositionID, PositionName) VALUES (7, N'K??? to??n kho');
INSERT POSITION (PositionID, PositionName) VALUES (8, N'Tr?????ng nh??m mua h??ng');
INSERT POSITION (PositionID, PositionName) VALUES (9, N'Chuy??n vi??n mua h??ng');
INSERT POSITION (PositionID, PositionName) VALUES (10, N'Tr?????ng ph??ng HCNS ');
INSERT POSITION (PositionID, PositionName) VALUES (11, N'Nh??n vi??n HCNS');
INSERT POSITION (PositionID, PositionName) VALUES (12, N'L??i xe ');
INSERT POSITION (PositionID, PositionName) VALUES (13, N'Tr?????ng ph??ng DES');
INSERT POSITION (PositionID, PositionName) VALUES (14, N'K??? s?? DES');
INSERT POSITION (PositionID, PositionName) VALUES (15, N'Chuy??n vi??n IT');
INSERT POSITION (PositionID, PositionName) VALUES (16, N'Tr?????ng ph??ng D???ch v???');
INSERT POSITION (PositionID, PositionName) VALUES (17, N'K??? thu???t vi??n');
INSERT POSITION (PositionID, PositionName) VALUES (18, N'Ph??? tr??ch d??? ??n');
INSERT POSITION (PositionID, PositionName) VALUES (19, N'K??? s?? d??? ??n');
INSERT POSITION (PositionID, PositionName) VALUES (20, N'Tr?????ng ph??ng Kinh doanh');
INSERT POSITION (PositionID, PositionName) VALUES (21, N'Nh??n vi??n Kinh doanh');

INSERT SEX (SexID, SexName) VALUES (2, N'Nam');
INSERT SEX (SexID, SexName) VALUES (1, N'N???');

INSERT USERS (UsersID, UserName, Password, Discription, EmployeeID) VALUES (1, N'Admin', N'123456', NULL, 55);
INSERT USERS (UsersID, UserName, Password, Discription, EmployeeID) VALUES (4, N'trieuth', N'123456', NULL, 40);

UPDATE EMPLOYEE SET SexID = 2 where SexID=0 AND EmployeeID<80;