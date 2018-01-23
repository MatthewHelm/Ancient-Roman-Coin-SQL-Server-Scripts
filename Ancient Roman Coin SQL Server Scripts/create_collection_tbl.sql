USE [Ancient Roman Coins]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblCollection' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblCollection]
END


/****** Object:  Table [dbo].[tblCollection]    Script Date: 9/28/2014 9:54:02 PM ******/
DROP TABLE [dbo].[tblCollection]
GO

/****** Object:  Table [dbo].[tblCollection]    Script Date: 9/28/2014 9:54:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCollection](
	[collection_id] [int] IDENTITY(1,1) NOT NULL,
	[collection_name] [nvarchar](96) NOT NULL,
	[collection_description] [nvarchar](MAX) NULL,
 CONSTRAINT [PK_tblCollection] PRIMARY KEY CLUSTERED
(
	[collection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO