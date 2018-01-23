USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblPhysicalAttributes'))
BEGIN
    DROP TABLE [dbo].[tblPhysicalAttributes]
END
GO

/****** Object:  Table [dbo].[tblPhysicalAttributes]    Script Date: 9/30/2014 9:51:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPhysicalAttributes](
	[physical_attributes_id] [int] IDENTITY(1,1) NOT NULL,
	[weight] [decimal](18, 2) NULL,
	[diameter] [decimal](18, 2) NULL,
	[die_axis] [decimal] (18,2) NULL,
 CONSTRAINT [PK_tblPhysicalAttributes] PRIMARY KEY CLUSTERED 
(
	[physical_attributes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


