USE [appdata]
GO
/****** Object:  Table [dbo].[Bicplus]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[Bicplus]
GO
/****** Object:  Table [dbo].[Bicplus]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bicplus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bicplus](
	[Tag] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Flag] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BIC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Institution] [nvarchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Branch] [nvarchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Subtype] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Services] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Extra Info] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIPCode] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location] [nvarchar](90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [nvarchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POB Number] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POB ZIP] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POB Location] [nvarchar](90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POB Country] [nvarchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SRC Info] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Spec Code] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Update Date] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Origin] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Key] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Check] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHIPS] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nat ID] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Act Date] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Deact Date] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Undo CP] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Undo Nat] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[New Key] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Commit Flag] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Commit Inst] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[User] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info1] [nvarchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info2] [nvarchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info3] [nvarchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info4] [nvarchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info Date1] [nvarchar](29) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CB Info Date2] [nvarchar](29) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Merge Flag] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Merge Method] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Merge Result] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler] [nvarchar](56) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Bicplus] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Bicplus] TO [public] AS [dbo]
GO
