USE AMNHAC
GO


CREATE TABLE BaiViet(
	idPost INT IDENTITY PRIMARY KEY,
	UserId NVARCHAR(128),
	title NVARCHAR(MAX),
	Mota NVARCHAR(MAX) NOT NULL,
	video NVARCHAR(255),
	chedo NVARCHAR(50) NOT NULL,
	newday DATETIME, 
);