USE [Shree_Database]
GO

/****** Object:  Table [dbo].[tbl_Files]    Script Date: 10/4/2014 11:44:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Files](
	[File_Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](50) NULL,
	[ContentType] [varchar](50) NULL,
	[FileData] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
