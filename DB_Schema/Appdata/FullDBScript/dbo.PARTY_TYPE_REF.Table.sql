USE [appdata]
GO
/****** Object:  Table [dbo].[PARTY_TYPE_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PARTY_TYPE_REF]
GO
/****** Object:  Table [dbo].[PARTY_TYPE_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARTY_TYPE_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PARTY_TYPE_REF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[logical_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PARTY_TYPE_REF] TO  SCHEMA OWNER 
GO
