USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblIssuingAuthority'))
BEGIN
    DROP TABLE [dbo].[tblIssuingAuthority]
END
GO

/****** Object:  Table [dbo].[tblIssuingAuthority]    Script Date: 7/18/2014 8:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblIssuingAuthority](
	[issuing_authority_id] [int] IDENTITY(1,1) NOT NULL,
	[period_id] [int] null,
	[issuing_authority_name] [nvarchar](64) NOT NULL,
	[issuing_authority_full_name] [nvarchar] (128) NULL,
	[issuing_authority_biography] [nvarchar] (MAX) NULL,
	[issuing_authority_birth_date] [date] NULL,
    [issuing_authority_death_date] [date] NULL,
	[seq_no] int null,
 CONSTRAINT [PK_tblIssuingAuthority] PRIMARY KEY CLUSTERED 
(
	[issuing_authority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


