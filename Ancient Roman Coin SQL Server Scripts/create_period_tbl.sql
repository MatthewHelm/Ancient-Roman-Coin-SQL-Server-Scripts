USE [Ancient Roman Coins]
GO


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblPeriod' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblPeriod]
END

/****** Object:  Table [dbo].[tblPeriod]    Script Date: 9/28/2014 9:54:02 PM ******/

/****** Object:  Table [dbo].[tbPeriod]    Script Date: 9/28/2014 9:54:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPeriod](
	[period_id] [int] IDENTITY(1,1) NOT NULL,
	[perod_name] [nvarchar](64) NOT NULL,
	[period_description] [nvarchar](1024) NULL,
	[seq_no] int null,
 CONSTRAINT [PK_tblPeriod] PRIMARY KEY CLUSTERED 
(
	[Period_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
