USE [appdata]
GO
/****** Object:  Table [dbo].[AutoInvCode_Mast]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AutoInvCode_Mast]
GO
/****** Object:  Table [dbo].[AutoInvCode_Mast]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoInvCode_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AutoInvCode_Mast](
	[autoinvcode] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[autoinvdesc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AutoInvCode_Mast] TO  SCHEMA OWNER 
GO
