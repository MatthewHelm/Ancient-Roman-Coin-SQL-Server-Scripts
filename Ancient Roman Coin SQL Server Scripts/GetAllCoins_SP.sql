USE [Ancient Roman Coins]
GO

/****** Object:  StoredProcedure [dbo].[InsertCoin_sp]    Script Date: 12/31/2016 7:47:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCoins_sp] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
   inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
   inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
   inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id	 
END

GO


