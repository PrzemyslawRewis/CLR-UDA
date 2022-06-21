IF EXISTS(SELECT * FROM sys.databases WHERE name='Szkola')
DROP DATABASE Szkola;
GO

CREATE DATABASE Szkola;
GO

USE Szkola;
GO

IF OBJECT_ID('UCZNIOWIE') IS NOT NULL
DROP TABLE UCZNIOWIE;
GO
CREATE TABLE UCZNIOWIE (
    UczenID int,
    Wzrost int,
    Waga float,
    IQ int,
    PRIMARY KEY (UczenID)
);
GO

IF OBJECT_ID('TEST') IS NOT NULL
DROP TABLE TEST;
GO
CREATE TABLE TEST (
    TESTID int,
    testv float,
    PRIMARY KEY (TESTID)
);
GO

INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(1, 160, 60.1, 95);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(2, 180, 70.5, 94);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(3, 165, 62.3, 107);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(4, 155, 62.1, 111);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(5, 182, 71.1, 121);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(6, 195, 81.2, 107);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(7, 171, 66.7, 81);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(8, 178, 77.7, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(9, 169, 62.4, 117);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(10, 150, 52.5, 119);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(11, 189, 79.6, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(12, 175, 73.4, 141);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(13, 168, 56.9, 80);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(14, 205, 95.7, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(15, 178, 71.2, 88);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(16, 182, 73.7, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(17, 164, 58.8, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(18, 172, 55.7, 101);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(19, 174, 77.4, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(20, 168, 61.1, 84);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(21, 163, 57.6, 79);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(22, 158, 49.9, 110);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(23, 154, 71.8, 98);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(24, 186, 81.2, 140);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(25, 195, 101.2, 130);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(26, 170, 70.7, 89);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(27, 183, 71.0, 125);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(28, 190, 99.8, 105);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(29, 200, 111.3, 121);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(30, 149, 45.7, 155);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(31, 177, 72.6, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(32, 188, 88.3, 87);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(33, 199, 90.8, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(34, 166, 67.3, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(35, 155, 50.7, 141);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(36, 174, 71.2, 75);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(37, 165, 78.1, 111);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(38, 168, 70.0, 88);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(39, 171, 60.0, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(40, 173, 50.3, 94);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(41, 175, 65.3, 112);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(42, 178, 71.7, 73);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(43, 181, 83.9, 92);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(44, 184, 81.6, 113);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(45, 188, 91.2, 124);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(46, 176, 70.8, 150);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(47, 173, 56.3, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(48, 178, 74.3, 86);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(49, 175, 65.8, 98);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(50, 175, 81.1, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(51, 182, 71.3, 91);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(52, 183, 81.9, 95);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(53, 185, 80.0, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(54, 187, 90.2, 97);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(55, 189, 99.0, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(56, 177, 71.9, 81);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(57, 178, 80.4, 84);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(58, 177, 81.0, 98);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(59, 176, 71.8, 101);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(60, 167, 73.0, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(61, 169, 56.1, 105);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(62, 165, 51.2, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(63, 163, 49.7, 103);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(64, 158, 52.1, 109);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(65, 162, 48.9, 111);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(66, 198, 102.1, 114);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(67, 199, 99.9, 119);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(68, 203, 101.0, 122);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(69, 155, 52.2, 123);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(70, 158, 60.4, 77);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(71, 159, 55.2, 76);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(72, 161, 47.9, 81);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(73, 163, 53.2, 92);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(74, 167, 61.3, 87);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(75, 168, 70.1, 84);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(76, 172, 66.2, 91);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(77, 175, 69.2, 140);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(78, 179, 70.2, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(79, 176, 85.3, 106);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(80, 177, 78.3, 105);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(81, 188, 77.7, 112);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(82, 166, 55.5, 123);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(83, 151, 46.6, 160);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(84, 184, 77.4, 110);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(85, 161, 66.4, 120);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(86, 167, 49.9, 130);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(87, 175, 76.3, 90);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(88, 176, 68.4, 92);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(89, 177, 68.9, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(90, 178, 73.6, 88);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(91, 189, 85.4, 89);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(92, 166, 60.2, 82);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(93, 169, 70.3, 81);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(94, 171, 66.7, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(95, 177, 64.1, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(96, 197, 88.8, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(97, 167, 64.3, 105);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(98, 182, 76.3, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(99, 183, 74.3, 111);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(100, 185, 81.0, 114); 
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(101, 178, 78.0, 77);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(102, 160, 60.0, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(103, 180, 81.4, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(104, 165, 72.2, 94);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(105, 155, 52.7, 88);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(106, 182, 82.1, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(107, 195, 91.5, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(108, 178, 77.7, 102);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(109, 169, 70.4, 103);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(110, 150, 52.2, 104);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(111, 189, 90.2, 101);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(112, 175, 69.7, 109);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(113, 168, 71.1, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(114, 205, 101.7, 97);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(115, 178, 77.7, 96);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(116, 182, 84.2, 111);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(117, 164, 64.2, 121);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(118, 172, 69.9, 123);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(119, 174, 73.2, 131);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(120, 168, 67.2, 123);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(121, 163, 63.2, 89);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(122, 158, 57.9, 91);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(123, 154, 54.2, 92);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(124, 186, 86.3, 93);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(125, 195, 95.1, 91);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(126, 170, 70.2, 99);
INSERT INTO UCZNIOWIE ([UczenID], [Wzrost], [Waga], [IQ]) VALUES(127, 180, 81.3, 96);

GO
INSERT INTO TEST ([TESTID], [testv]) VALUES(1, 10);
INSERT INTO TEST ([TESTID], [testv]) VALUES(2, 3.5);
INSERT INTO TEST ([TESTID], [testv]) VALUES(3, 5.5);
INSERT INTO TEST ([TESTID], [testv]) VALUES(4, 10);
INSERT INTO TEST ([TESTID], [testv]) VALUES(5, 7);
GO