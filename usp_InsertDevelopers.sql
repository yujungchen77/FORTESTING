USE [bios]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertDevelopers]    Script Date: 03/15/2014 14:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_InsertDevelopers]
	@_id nvarchar(50),
	@birth datetime,
	@death datetime,
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@aka nvarchar(50),
	@title nvarchar(100)
	
AS
BEGIN
	
	INSERT INTO  Developers  (_id, birth, death, firstname, lastname, aka, title)
    VALUES (@_id, @birth, @death, @firstname, @lastname, @aka, @title)
	
END
