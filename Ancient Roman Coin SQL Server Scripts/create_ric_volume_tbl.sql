USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblRicVolume'))
BEGIN
    DROP TABLE [dbo].[tblRicVolume]
END
GO

/****** Object:  Table [dbo].[tblRicVolume]    Script Date: 9/30/2014 7:47:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRicVolume](
	[ric_volume_id] [int] IDENTITY(1,1) NOT NULL,
	[ric_volume] [nvarchar](8) NOT NULL,
	[ric_volume_description] [nvarchar](1024) NULL,
 CONSTRAINT [PK_tblRicVolume] PRIMARY KEY CLUSTERED 
(
	[ric_volume_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


