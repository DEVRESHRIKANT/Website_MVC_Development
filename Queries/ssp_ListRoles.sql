USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_ListRoles]    Script Date: 10/5/2020 1:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_ListRoles]

    -- Add the parameters for the stored procedure here

 --   @RoleName nvarchar(MAX),
	--@ModifiedDate datetime,
	--@Status bit
AS

BEGIN

    SET NOCOUNT ON; 

    SELECT * 
	FROM tbl_UserRole
	WHERE Status = 1
END


