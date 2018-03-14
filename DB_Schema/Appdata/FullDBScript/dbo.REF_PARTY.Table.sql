USE [appdata]
GO
/****** Object:  Table [dbo].[REF_PARTY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[REF_PARTY]
GO
/****** Object:  Table [dbo].[REF_PARTY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REF_PARTY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REF_PARTY](
	[PartyName] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PartyDifferentName] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[REF_PARTY] TO  SCHEMA OWNER 
GO
