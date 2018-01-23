USE [Ancient Roman Coins]
GO


IF (EXISTS (SELECT *
				 FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME = 'tblSet' and TABLE_SCHEMA = 'dbo' ))
BEGIN
	DROP TABLE [dbo].[tblSet]
END


/****** Object:  Table [dbo].[tblSet]    Script Date: 9/28/2014 9:54:02 PM ******/
DROP TABLE [dbo].[tblSet]
GO

/****** Object:  Table [dbo].[tblSet]    Script Date: 9/28/2014 9:54:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSet](
	[set_id] [int] IDENTITY(1,1) NOT NULL,
	[collection_id] [int] not null,
	[coin_id] [int] null,
	[set_name] [nvarchar](96) NOT NULL,
	[set_description] [nvarchar](MAX) NULL,
 CONSTRAINT [PK_tblSet] PRIMARY KEY CLUSTERED
(
	[set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO