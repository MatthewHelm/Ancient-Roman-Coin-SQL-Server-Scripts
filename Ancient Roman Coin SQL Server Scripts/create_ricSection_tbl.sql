USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblRicSection'))
BEGIN
    DROP TABLE [dbo].[tblRicSection]
END
GO

/****** Object:  Table [dbo].[tblRicSection]    Script Date: 7/18/2014 8:54:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRicSection](
	[ric_section_id] [int] IDENTITY(1,1) NOT NULL,
	[ric_volume_id] [int] NOT NULL,
	[ric_section] [nvarchar](64) NULL,
	[ric_section_description] [nvarchar](512) NULL,


 CONSTRAINT fk_tblRicSection_tblRicVolume foreign key (ric_volume_id) references tblRicVolume (ric_volume_id),


 CONSTRAINT [PK_tblRicSection] PRIMARY KEY CLUSTERED 
(
	[ric_section_id] ASC
--	[ric_vol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


