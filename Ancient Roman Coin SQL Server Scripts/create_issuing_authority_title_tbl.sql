USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblIssuingAuthorityTitle'))
BEGIN
    DROP TABLE [dbo].[tblIssuingAuthorityTitle]
END

/****** Object:  Table [dbo].[tblIssuingAuthorityTitle]    Script Date: 9/28/2014 10:03:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblIssuingAuthorityTitle](
	[issuing_authority_title_id][int] IDENTITY(1,1) NOT NULL,
	[issuing_authority_title] [nvarchar](32) NOT NULL,
	[Description] [nvarchar](MAX) NULL
 CONSTRAINT [PK_tblIssuingAuthorityTitle] PRIMARY KEY CLUSTERED 
(
	[issuing_authority_title_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


