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
CREATE PROCEDURE InsertCoin_sp(
@coinName nvarchar(64), 
@coinTypeId int, 
@coinDescription nvarchar(max), 
@issuingAuthorityId int,
@mintId int,
@materialId int,
@obverseLegend nvarchar(128),
@obverseImage varbinary(MAX),
@reverseLegend nvarchar(128),
@exergue nvarchar(128),
@reverseImage varbinary(MAX),
@gradeId int,
@weight decimal(18,2),
@diameter decimal(18,2),
@dieAxis int,
@dealerId int,
@price money,
@ricVolumeId int,
@ricSectionId int,
@ricIndex varchar(64)) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @obverseId int;
	declare @reverseId int
	declare @physAttribId int;
	declare @ricIndexId int;
	

    insert into [Ancient Roman Coins].dbo.tblObverse (obverse_legend, obverse_description, obverse_image) values (@obverseLegend, 'N/A', @obverseImage);
	set @obverseId = @@IDENTITY;

	insert into [Ancient Roman Coins].dbo.tblReverse (reverse_legend, exergue, reverse_description, reverse_image) values (@ReverseLegend, @exergue, 'N/A', @ReverseImage);
	set @reverseId = @@IDENTITY;

	insert into [Ancient Roman Coins].dbo.tblPhysicalAttributes (weight, diameter, die_axis) values  (@weight, @diameter, @dieAxis);
	set @physAttribId = @@IDENTITY;

    insert into [Ancient Roman Coins].dbo.tblRicIndex (ric_volume_id, ric_section_id, ric_index) values  (@ricVolumeId, @ricSectionId, @ricIndex);
	set @ricIndexId = @@IDENTITY;

	--insert into [Ancient Roman Coins].dbo.tblCoins (coin_name, coi)
	 --  values (@coinName, @coinTypeId, @coinDescription, @issuingAuthorityId, @mintId, @physAttribId, @obverseId, @reverseId, @dealerId, @gradeId, @price, 1);

	 insert into [Ancient Roman Coins].dbo.tblCoins (coin_name, coin_type_id, coin_description, issuing_authority_id, mint_id, physical_attributes_id, obverse_id, reverse_id, dealer_id, grade_id, price, ric_index_id, material_id)
	  values (@coinName, @coinTypeId, @coinDescription, @issuingAuthorityId, @mintId, @physAttribId, @obverseId, @reverseId, @dealerId, @gradeId, @price, @ricIndexId, @materialId);


-- coin_name, coin_type_id, coin_description, issuing_authority_id, mint_id, physical_attributes_id, obverse_id, reverse_id, dealer_id, grade_id, price, ric_index_id

	 
END
GO
