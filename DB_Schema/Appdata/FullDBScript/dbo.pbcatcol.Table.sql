USE [appdata]
GO
/****** Object:  Index [pbcatcol_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pbcatcol_idx] ON [dbo].[pbcatcol]
GO
/****** Object:  Table [dbo].[pbcatcol]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[pbcatcol]
GO
/****** Object:  Table [dbo].[pbcatcol]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbcatcol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbcatcol](
	[pbc_tnam] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_tid] [int] NULL,
	[pbc_ownr] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_cnam] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_cid] [smallint] NULL,
	[pbc_labl] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_lpos] [smallint] NULL,
	[pbc_hdr] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_hpos] [smallint] NULL,
	[pbc_jtfy] [smallint] NULL,
	[pbc_mask] [varchar](31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_case] [smallint] NULL,
	[pbc_hght] [smallint] NULL,
	[pbc_wdth] [smallint] NULL,
	[pbc_ptrn] [varchar](31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_bmap] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_init] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_cmnt] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_edit] [varchar](31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbc_tag] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[pbcatcol] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[pbcatcol] TO [public] AS [dbo]
GO
/****** Object:  Index [pbcatcol_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pbcatcol]') AND name = N'pbcatcol_idx')
CREATE UNIQUE NONCLUSTERED INDEX [pbcatcol_idx] ON [dbo].[pbcatcol]
(
	[pbc_tnam] ASC,
	[pbc_ownr] ASC,
	[pbc_cnam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
