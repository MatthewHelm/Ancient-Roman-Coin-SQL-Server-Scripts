USE [Ancient Roman Coins]
GO


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblGrade' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblGrade]
END


/****** Object:  Table [dbo].[tblGrade]    Script Date: 9/28/2014 9:54:02 PM ******/
DROP TABLE [dbo].[tblGrade]
GO

/****** Object:  Table [dbo].[tblGrade]    Script Date: 9/28/2014 9:54:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblGrade](
	[grade_id] [int] IDENTITY(1,1) NOT NULL,
	[grade_code] [nvarchar](16) NOT NULL,
	[description] [nvarchar](1024) NULL,
 CONSTRAINT [PK_tblGrade] PRIMARY KEY CLUSTERED 
(
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


