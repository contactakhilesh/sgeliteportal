USE [appdata]
GO
/****** Object:  Index [IX_EXPORT_REF_N]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_EXPORT_REF_N] ON [dbo].[EXPORT_SCH]
GO
/****** Object:  Table [dbo].[EXPORT_SCH]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_SCH]
GO
/****** Object:  Table [dbo].[EXPORT_SCH]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_SCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_SCH](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FIN_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[ETA_DEST] [datetime] NULL,
	[TRANSIT_DAYS] [numeric](3, 0) NULL,
	[CR_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_BKG_REF_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FT_20_Q] [numeric](10, 0) NULL,
	[FT_40_Q] [numeric](10, 0) NULL,
	[FT_45_Q] [numeric](10, 0) NULL,
	[LAST_BKG_N] [numeric](10, 0) NULL,
	[SCH_FAX_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NULL,
	[FILE_CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[REMARKS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_WORDS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVOCC_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TYPE_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOTAL_M3] [numeric](10, 3) NULL,
	[TOTAL_WT] [numeric](10, 3) NULL,
	[POD_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_W3] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[PO_HAULIER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_WAREHOUSE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[UP_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[PORT_DISC_ID2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLOSE_DATE] [datetime] NULL,
	[PLACE_REC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACTUAL_CR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CARRIER_PRINT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EXPORT_SCH] ADD [PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_SCH] ADD [PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_SCH] ADD [PLACE_REC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_SCH] ADD [ACTUAL_CR_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_EXPORT_SCH] PRIMARY KEY CLUSTERED 
(
	[EXPORT_BKG_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_SCH] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_SCH] TO [public] AS [dbo]
GO
/****** Object:  Index [IX_EXPORT_REF_N]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_SCH]') AND name = N'IX_EXPORT_REF_N')
CREATE NONCLUSTERED INDEX [IX_EXPORT_REF_N] ON [dbo].[EXPORT_SCH]
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
