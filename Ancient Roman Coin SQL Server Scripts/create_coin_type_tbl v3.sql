USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblCoinType'))
BEGIN
    DROP TABLE [dbo].[tblCoinType]
END


/****** Object:  Table [dbo].[tblCoinType]    Script Date: 1/3/2015 5:03:55 PM ******/
DROP TABLE [dbo].[tblCoinType]
GO

/****** Object:  Table [dbo].[tblCoinType]    Script Date: 1/3/2015 5:03:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCoinType](
	[coin_type_id] [int] NOT NULL,
	[coin_type] [nvarchar](32) NULL,
	[description] [nvarchar](1024) NULL,
 CONSTRAINT [PK_tblCoinType] PRIMARY KEY CLUSTERED 
(
	[coin_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


