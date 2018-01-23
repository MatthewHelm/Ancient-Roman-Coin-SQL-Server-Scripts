USE [Ancient Roman Coins]
GO

/****** Object:  Table [dbo].[tblCoins]    Script Date: 9/21/2017 9:08:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCoins](
	[coin_id] [int] IDENTITY(1,1) NOT NULL,
	[coin_name] [nvarchar](64) NULL,
	[coin_type_id] [int] NOT NULL,
	[coin_description] [nvarchar](max) NULL,
	[issuing_authority_id] [int] NULL,
	[mint_id] [int] NULL,
	[material_id] [int] NULL,
	[physical_attributes_id] [int] NULL,
	[obverse_id] [int] NOT NULL,
	[reverse_id] [int] NOT NULL,
	[dealer_id] [int] NULL,
	[grade_id] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[ric_index_id] [int] NULL,
	[set_id] [int] NULL,
	[collection_id] [int] NULL,
	[collection_or_set] [bit] NULL,
 CONSTRAINT [PK_tblCoins] PRIMARY KEY CLUSTERED 
(
	[coin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblCoinType] FOREIGN KEY([coin_type_id])
REFERENCES [dbo].[tblCoinType] ([coin_type_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblCoinType]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblGrade] FOREIGN KEY([grade_id])
REFERENCES [dbo].[tblGrade] ([grade_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblGrade]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblIssuingAuthority] FOREIGN KEY([issuing_authority_id])
REFERENCES [dbo].[tblIssuingAuthority] ([issuing_authority_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblIssuingAuthority]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblMaterial] FOREIGN KEY([material_id])
REFERENCES [dbo].[tblMaterial] ([material_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblMaterial]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblMint] FOREIGN KEY([mint_id])
REFERENCES [dbo].[tblMint] ([mint_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblMint]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblObverse] FOREIGN KEY([obverse_id])
REFERENCES [dbo].[tblObverse] ([obverse_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblObverse]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblPhysicalAttributes] FOREIGN KEY([physical_attributes_id])
REFERENCES [dbo].[tblPhysicalAttributes] ([physical_attributes_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblPhysicalAttributes]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblReverse] FOREIGN KEY([reverse_id])
REFERENCES [dbo].[tblReverse] ([reverse_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblReverse]
GO

ALTER TABLE [dbo].[tblCoins]  WITH CHECK ADD  CONSTRAINT [fk_tblCoins_tblRicIndex] FOREIGN KEY([ric_index_id])
REFERENCES [dbo].[tblRicIndex] ([ric_index_id])
GO

ALTER TABLE [dbo].[tblCoins] CHECK CONSTRAINT [fk_tblCoins_tblRicIndex]
GO

INSERT INTO [dbo].[tblCoins] ([collection_or_set])VALUES (0) ;  
GO  



