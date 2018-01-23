USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblObverse' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblObverse]
END
GO


/****** Object:  Table [dbo].[tblObverse]    Script Date: 9/29/2014 5:51:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblObverse](
	[obverse_id] [int] IDENTITY(1,1) NOT NULL,
	[obverse_legend] nvarchar(128) NULL,
	[obverse_description] nvarchar(MAX) NULL,
	[obverse_image] [varbinary](max) NULL,
 CONSTRAINT [PK_tblObverse] PRIMARY KEY CLUSTERED 
(
	[obverse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


