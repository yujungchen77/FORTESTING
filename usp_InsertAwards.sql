USE [bios]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertAwards]    Script Date: 03/15/2014 14:08:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_InsertAwards]
	@_id nvarchar(50),
	@birth datetime,
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@award nvarchar(100),
	@year int,
	@by nvarchar(100)
	
AS
BEGIN
	
	INSERT INTO  Awards  (_id, birth, firstname, lastname, award, [year], [by])
    VALUES (@_id, @birth, @firstname, @lastname, @award, @year, @by)
	
	
END
