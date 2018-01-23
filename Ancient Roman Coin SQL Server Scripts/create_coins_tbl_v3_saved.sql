USE [Ancient Roman Coins]
GO


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_NAME = 'tblCoins' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblCoins]
END



/****** Object:  Table [dbo].[tblCoins]    Script Date: 7/18/2014 8:50:39 PM ******/
DROP TABLE [dbo].[tblCoins]
GO

/****** Object:  Table [dbo].[tblCoins]    Script Date: 7/18/2014 8:50:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCoins](
	[coin_id] [int] IDENTITY(1,1) NOT NULL,
	[coin_name] [nvarchar](64) NULL,
	[coin_type_id] [int] NOT NULL,
	[coin_description] [nvarchar](MAX) NULL,
    [issuing_authority_id] [int] NULL,
	[mint_id] [int] NULL,
	[material_id] [int] NULL,
	[physical_attributes_id] [int] NULL,
	[obverse_id] [int] NOT NULL,
	[reverse_id] [int] NOT NULL,
	[dealer_id] [int] NULL,
    [grade_id] [int] NULL,
    [price] [decimal](18,2) NULL,
    [ric_index_id] [int] NULL,
 
 CONSTRAINT fk_tblCoins_tblIssuingAuthority foreign key (issuing_authority_id) references tblIssuingAuthority (issuing_authority_id),
 CONSTRAINT fk_tblCoins_tblMint foreign key (mint_id) references tblMint (mint_id),
 CONSTRAINT fk_tblCoins_tblPhysicalAttributes foreign key (physical_attributes_id) references tblPhysicalAttributes (physical_attributes_id),
 CONSTRAINT fk_tblCoins_tblCoinType foreign key (coin_type_id) references tblCoinType (coin_type_id),
 CONSTRAINT fk_tblCoins_tblObverse foreign key (obverse_id) references tblObverse (obverse_id),
 CONSTRAINT fk_tblCoins_tblReverse foreign key (reverse_id) references tblReverse (reverse_id),
 --CONSTRAINT fk_tblCoins_tblDealer foreign key (dealer_id) references tblDealer (dealer_id),
 CONSTRAINT fk_tblCoins_tblGrade foreign key (grade_id) references tblGrade (grade_id),
 CONSTRAINT fk_tblCoins_tblMaterial foreign key (material_id) references tblMaterial (material_id),
 CONSTRAINT fk_tblCoins_tblRicIndex foreign key (ric_index_id) references tblRicIndex (ric_index_id),
 CONSTRAINT [PK_tblCoins] PRIMARY KEY CLUSTERED 
(
	[coin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


