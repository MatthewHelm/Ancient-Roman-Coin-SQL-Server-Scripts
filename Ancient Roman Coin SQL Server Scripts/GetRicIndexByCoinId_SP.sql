
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

use [Ancient Roman Coins];
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRicIndexByCoinId_sp] (@coinId int)
AS
BEGIN

	SET NOCOUNT ON;

	select v.ric_volume_id, ric_volume, s.ric_section_id, ric_section, ric_index_id, ric_index from [Ancient Roman Coins].dbo.tblRicVolume v
	inner join [Ancient Roman Coins].dbo.tblRicSection s on v.ric_volume_id = s.ric_volume_id
	inner join [Ancient Roman Coins].dbo.tblRicIndex i on s.ric_volume_id = i.ric_volume_id and s.ric_section_id = i.ric_section_id
	where i.coin_id = @coinId;
END
GO
