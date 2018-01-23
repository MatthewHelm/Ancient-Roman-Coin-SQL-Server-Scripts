USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblMint'))
BEGIN
    DROP TABLE [dbo].[tblMint]
END
GO

/****** Object:  Table [dbo].[tblMint]    Script Date: 7/18/2014 8:53:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMint](
	[mint_id] [int] IDENTITY(1,1) NOT NULL,
	[mint_name] [nvarchar](64) NOT NULL,
	[description] [nvarchar] (2048) NULL,
	[mint_location] [nvarchar](64) NULL,
	[service_start_date] [nvarchar](64) NULL,
	[service_end_date] [nvarchar](64) NULL,
	[modern_location] [nvarchar](64) NULL,
	[mint_abbreviations] [nvarchar] (256) NULL,

 CONSTRAINT [PK_tblMint] PRIMARY KEY CLUSTERED 
(
	[mint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


