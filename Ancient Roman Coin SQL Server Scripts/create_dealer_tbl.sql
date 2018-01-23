USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblDealer' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblDealer]
END


/****** Object:  Table [dbo].[tblDealer]    Script Date: 9/28/2014 9:50:59 PM ******/
DROP TABLE [dbo].[tblDealer]
GO

/****** Object:  Table [dbo].[tblDealer]    Script Date: 9/28/2014 9:50:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDealer](
	[dealer_id] [int] NOT NULL,
	[last_name] [nvarchar](32) NOT NULL,
	[first_name] [nvarchar](32) NOT NULL,
	[street_address1] [nvarchar](128) NOT NULL,
    [street_address2] [nvarchar](128) NOT NULL,
	[city] [nchar] (64) NOT NULL,
	[state_province_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[phone_number] [nvarchar](32) NOT NULL,
	[email_address] [nvarchar](64) NULL,
	[web_site] [nvarchar](256) NULL,
 CONSTRAINT [PK_tblDealer] PRIMARY KEY CLUSTERED 
(
	[dealer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


