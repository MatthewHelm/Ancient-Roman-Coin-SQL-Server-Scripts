USE [Ancient Roman Coins]
GO

/****** Object:  StoredProcedure [dbo].[GetAllCoinsGivenPeriod_sp]    Script Date: 10/2/2017 9:41:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCoinsGivenPeriod_sp](@pperiod_id int) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
   inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
   inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
   inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id and i.period_id = @pperiod_id	 
END


GO


