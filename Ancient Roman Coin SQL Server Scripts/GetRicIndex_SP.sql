-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRicIndex_sp] (@coinId int)
AS
BEGIN

	SET NOCOUNT ON;

	select ric_volume_id, ric_volume, ric_section_id, ric_section, ric_index_id, ric_index from [Ancient Roman Coins].dbo.tblRicVolume v
	inner join [Ancient Roman Coins].dbo.tblRicSection s on v.ric_volume_id = s.ric_volume_id
	inner join [Ancient Roman Coins].dbo.tblRicIndex i on s.ric_volume_id = i.ric_volume_id and s.ric_section_id = i.ric_section_id
	where 

   select coin_id, coin_name, c.coin_type_id, coin_description, c.issuing_authority_id, c.mint_id, weight, diameter, die_axis, c.physical_attributes_id,
   obverse_legend, obverse_description, obverse_image, c.obverse_id, reverse_legend, reverse_description, exergue, reverse_image, c.reverse_id, dealer_id, c.grade_id,
   price, material_id from [Ancient Roman Coins].dbo.tblCoins c
   inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
   inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
   inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id
   inner join [Ancient Roman Coins].dbo.tblGrade g on c.grade_id = g.grade_id
   inner join [Ancient Roman Coins].dbo.tblMint m on c.mint_id = m.mint_id
   inner join [Ancient Roman Coins].dbo.tblCoinType cc on c.coin_type_id = cc.coin_type_id
   inner join [Ancient Roman Coins].dbo.tblPhysicalAttributes p on c.physical_attributes_id = p.physical_attributes_id
   where coin_id = @coinId
END
GO
