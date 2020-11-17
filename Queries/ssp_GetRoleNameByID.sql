USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_GetRoleNameByID]    Script Date: 10/5/2020 1:52:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_GetRoleNameByID]
@pRoleId int -- Input Parameter
--@pRoleName varchar(50) OUTPUT  -- Output Parameter  
 

AS

BEGIN
SET NOCOUNT ON

SELECT RoleName = UserRole.RoleName
FROM  tbl_UserRole AS UserRole
WHERE UserRole.RoleId = @pRoleId
END
