USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblReverse' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblReverse]
END
GO

/****** Object:  Table [dbo].[tblReverse]    Script Date: 7/18/2014 8:53:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblReverse](
	[reverse_id] [int] IDENTITY(1,1) NOT NULL,
	[reverse_legend] nvarchar(128) NULL,
	[reverse_description] nvarchar(MAX) NULL,
	[exergue] [nvarchar](128) NULL,
	[reverse_image] [varbinary](max) NULL,
 CONSTRAINT [PK_tblReverse] PRIMARY KEY CLUSTERED 
(
	[reverse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


