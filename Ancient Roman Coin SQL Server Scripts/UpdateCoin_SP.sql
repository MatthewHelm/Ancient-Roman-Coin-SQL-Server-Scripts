use [Ancient Roman Coins];
go
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
CREATE PROCEDURE UpdateCoin_sp(
@coinId int,
@coinName nvarchar(64), 
@coinTypeId int, 
@coinDescription nvarchar(max), 
@issuingAuthorityId int,
@mintId int,
@materialId int,
@obverseLegend nvarchar(128),
@obverseImage varbinary(MAX),
@obverseId int,
@reverseLegend nvarchar(128),
@exergue nvarchar(128),
@reverseImage varbinary(MAX),
@reverseId int,
@gradeId int,
@weight decimal(18,2),
@diameter decimal(18,2),
@dieAxis int,
@physAttribId int,
@dealerId int,
@price money,
@ricVolumeId int,
@ricSectionId int,
@ricIndex nvarchar(64),
@ricIndexId int) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	update [Ancient Roman Coins].dbo.tblObverse set obverse_legend = @obverseLegend, obverse_image = @obverseImage where obverse_id = @obverseId;

	update [Ancient Roman Coins].dbo.tblReverse set reverse_legend = @reverseLegend, reverse_image = @reverseImage, exergue = @exergue where reverse_id = @reverseId;

	update [Ancient Roman Coins].dbo.tblPhysicalAttributes set weight = @weight, diameter = @diameter, die_axis = @dieAxis where physical_attributes_id = @physAttribId;

	update [Ancient Roman Coins].dbo.tblRicIndex set ric_volume_id = @ricVolumeId, ric_section_id = @ricSectionId, ric_index = @ricIndex where ric_index_id = @ricIndexId;

	update [Ancient Roman Coins].dbo.tblCoins set coin_name = @coinName, coin_type_id = @coinTypeId, coin_description = @coinDescription, issuing_authority_id = @issuingAuthorityId,
	   mint_id = @mintId, material_id = @materialId, grade_id = @gradeId, price = @price where coin_id = @coinId;
	 
END
GO
