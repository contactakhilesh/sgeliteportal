USE [appdata]
GO
/****** Object:  Table [dbo].[onhold_reason_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[onhold_reason_mast]
GO
/****** Object:  Table [dbo].[onhold_reason_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[onhold_reason_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[onhold_reason_mast](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[onhold_reason] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[onhold_reason_mast] TO  SCHEMA OWNER 
GO
