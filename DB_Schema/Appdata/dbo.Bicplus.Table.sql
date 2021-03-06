USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bicplus](
	[Tag] [nvarchar](2) NULL,
	[Flag] [nvarchar](1) NULL,
	[BIC] [varchar](50) NULL,
	[Institution] [nvarchar](105) NULL,
	[Branch] [nvarchar](70) NULL,
	[City] [nvarchar](35) NULL,
	[Subtype] [nvarchar](4) NULL,
	[Services] [nvarchar](60) NULL,
	[Extra Info] [nvarchar](35) NULL,
	[Address] [nvarchar](140) NULL,
	[ZIPCode] [nvarchar](15) NULL,
	[Location] [nvarchar](90) NULL,
	[Country] [nvarchar](70) NULL,
	[POB Number] [nvarchar](35) NULL,
	[POB ZIP] [nvarchar](15) NULL,
	[POB Location] [nvarchar](90) NULL,
	[POB Country] [nvarchar](70) NULL,
	[SRC Info] [nvarchar](2) NULL,
	[Spec Code] [nvarchar](6) NULL,
	[Update Date] [nvarchar](6) NULL,
	[Origin] [nvarchar](4) NULL,
	[Key] [nvarchar](8) NULL,
	[Check] [nvarchar](2) NULL,
	[CHIPS] [nvarchar](6) NULL,
	[Nat ID] [nvarchar](15) NULL,
	[Act Date] [nvarchar](6) NULL,
	[Deact Date] [nvarchar](6) NULL,
	[Undo CP] [nvarchar](8) NULL,
	[Undo Nat] [nvarchar](8) NULL,
	[New Key] [nvarchar](8) NULL,
	[Commit Flag] [nvarchar](1) NULL,
	[Commit Inst] [nvarchar](1) NULL,
	[User] [nvarchar](128) NULL,
	[CB Info1] [nvarchar](17) NULL,
	[CB Info2] [nvarchar](17) NULL,
	[CB Info3] [nvarchar](17) NULL,
	[CB Info4] [nvarchar](17) NULL,
	[CB Info Date1] [nvarchar](29) NULL,
	[CB Info Date2] [nvarchar](29) NULL,
	[Merge Flag] [nvarchar](1) NULL,
	[Merge Method] [nvarchar](1) NULL,
	[Merge Result] [nvarchar](1) NULL,
	[Filler] [nvarchar](56) NULL
) ON [PRIMARY]

GO
