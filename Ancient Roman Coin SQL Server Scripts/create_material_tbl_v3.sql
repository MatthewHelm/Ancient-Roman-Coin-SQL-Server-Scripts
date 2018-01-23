USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblMaterial'))
BEGIN
    DROP TABLE [dbo].[tblMaterial]
END
GO

/****** Object:  Table [dbo].[tblMaterial]    Script Date: 7/18/2014 8:52:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMaterial](
	[material_id] [int] IDENTITY(1,1) NOT NULL,
	[material_name] [nvarchar](64) NOT NULL,
	[material_notes] [nvarchar](2048) NULL,
 CONSTRAINT [PK_tblMaterial] PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


