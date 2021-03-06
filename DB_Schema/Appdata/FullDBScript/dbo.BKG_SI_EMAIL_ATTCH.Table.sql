USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BKG_SI_EMAIL_ATTCH]') AND type in (N'U'))
ALTER TABLE [dbo].[BKG_SI_EMAIL_ATTCH] DROP CONSTRAINT IF EXISTS [DF__BKG_SI_EM__bc_re__27671F17]
GO
/****** Object:  Table [dbo].[BKG_SI_EMAIL_ATTCH]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[BKG_SI_EMAIL_ATTCH]
GO
/****** Object:  Table [dbo].[BKG_SI_EMAIL_ATTCH]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BKG_SI_EMAIL_ATTCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BKG_SI_EMAIL_ATTCH](
	[rowid] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[field_label] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bc_req] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[BKG_SI_EMAIL_ATTCH] TO  SCHEMA OWNER 
GO
