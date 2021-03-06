USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_SCH](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[ETA_DEST] [datetime] NULL,
	[TRANSIT_DAYS] [numeric](3, 0) NULL,
	[CR_AGENT_ID] [varchar](10) NULL,
	[CR_BKG_REF_N] [varchar](30) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[FT_20_Q] [numeric](10, 0) NULL,
	[FT_40_Q] [numeric](10, 0) NULL,
	[FT_45_Q] [numeric](10, 0) NULL,
	[LAST_BKG_N] [numeric](10, 0) NULL,
	[SCH_FAX_IND] [varchar](1) NULL,
	[USER_ID] [varchar](10) NULL,
	[ENTRY_D] [datetime] NULL,
	[FILE_CLOSE_IND] [varchar](1) NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[REMARKS] [varchar](100) NULL,
	[CONT_WORDS] [varchar](50) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[TYPE_IND] [varchar](2) NULL,
	[TOTAL_M3] [numeric](10, 3) NULL,
	[TOTAL_WT] [numeric](10, 3) NULL,
	[POD_AGENT_ID] [varchar](10) NULL,
	[TOT_W3] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[VESSEL2] [varchar](30) NULL,
	[VOYAGE2] [varchar](20) NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[PORT_DISC_ID2] [varchar](10) NULL,
	[CLOSE_DATE] [datetime] NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[ACTUAL_CR_ID] [varchar](10) NULL,
	[CARRIER_PRINT_IND] [varchar](1) NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[PLACE_REC_NAME] [varchar](40) NULL,
	[ACTUAL_CR_NAME] [varchar](40) NULL,
 CONSTRAINT [PK_EXPORT_SCH] PRIMARY KEY CLUSTERED 
(
	[EXPORT_BKG_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
