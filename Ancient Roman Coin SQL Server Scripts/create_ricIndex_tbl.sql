USE [Ancient Roman Coins]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE  TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'tblRicIndex'))
BEGIN
    DROP TABLE [dbo].[tblRicIndex]
END
GO

/****** Object:  Table [dbo].[tblRicIndex]    Script Date: 7/18/2014 8:54:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRicIndex](
	[ric_index_id] [int] IDENTITY(1,1) NOT NULL,
	[coin_id] [int] null,
	[ric_volume_id] [int] NOT NULL,
	[ric_section_id] [int] NOT NULL,
	[ric_index] [nvarchar](64) not NULL,
	[ric_index_description] [nvarchar](512) NULL,

 CONSTRAINT fk_tblRicIndex_tblRicVolume foreign key (ric_volume_id) references tblRicVolume (ric_volume_id),
 CONSTRAINT fk_tblRicIndex_tblRicSection foreign key (ric_section_id) references tblRicSection (ric_section_id),
--  CONSTRAINT fk_tblRicIndex_tblCoins foreign key (coin_id) references tblCoins (coin_id),

 CONSTRAINT [PK_tblRicIndex] PRIMARY KEY CLUSTERED 
(
	[ric_index_id] ASC
--	[ric_section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


