USE [appdata]
GO
/****** Object:  Index [pbcattbl_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pbcattbl_idx] ON [dbo].[pbcattbl]
GO
/****** Object:  Table [dbo].[pbcattbl]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[pbcattbl]
GO
/****** Object:  Table [dbo].[pbcattbl]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbcattbl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbcattbl](
	[pbt_tnam] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbt_tid] [int] NULL,
	[pbt_ownr] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbd_fhgt] [smallint] NULL,
	[pbd_fwgt] [smallint] NULL,
	[pbd_fitl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbd_funl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbd_fchr] [smallint] NULL,
	[pbd_fptc] [smallint] NULL,
	[pbd_ffce] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbh_fhgt] [smallint] NULL,
	[pbh_fwgt] [smallint] NULL,
	[pbh_fitl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbh_funl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbh_fchr] [smallint] NULL,
	[pbh_fptc] [smallint] NULL,
	[pbh_ffce] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbl_fhgt] [smallint] NULL,
	[pbl_fwgt] [smallint] NULL,
	[pbl_fitl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbl_funl] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbl_fchr] [smallint] NULL,
	[pbl_fptc] [smallint] NULL,
	[pbl_ffce] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbt_cmnt] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[pbcattbl] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[pbcattbl] TO [public] AS [dbo]
GO
/****** Object:  Index [pbcattbl_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pbcattbl]') AND name = N'pbcattbl_idx')
CREATE UNIQUE NONCLUSTERED INDEX [pbcattbl_idx] ON [dbo].[pbcattbl]
(
	[pbt_tnam] ASC,
	[pbt_ownr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
