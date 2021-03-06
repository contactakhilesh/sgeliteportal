USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_ROLL]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF_ROLL] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_ROLL_PRINT_IN_RPTS_IND]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_ROLL_11_220579874__K25_K2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_ROLL_11_220579874__K25_K2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21] ON [dbo].[EXPORT_REF_ROLL]
GO
/****** Object:  Table [dbo].[EXPORT_REF_ROLL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_REF_ROLL]
GO
/****** Object:  Table [dbo].[EXPORT_REF_ROLL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_ROLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_REF_ROLL](
	[SEQ_N] [numeric](18, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](18, 0) NOT NULL,
	[USER_CREATED] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DT_TIME_CREATED] [datetime] NULL,
	[NC_FLAG] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_SAIL_DT] [datetime] NULL,
	[ORIG_ETA_DEST_DT] [datetime] NULL,
	[ORIG_CUTOFF_DT] [datetime] NULL,
	[ORIG_VOY_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_SCAC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_NVOC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_CARRIER_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_SAIL_DT] [datetime] NULL,
	[NEW_ETA_DEST_DT] [datetime] NULL,
	[NEW_CUTOFF_DT] [datetime] NULL,
	[NEW_VOY_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_SCAC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_NVOC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_CARRIER_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_ETA_DT] [datetime] NULL,
	[NEW_ETA_DT] [datetime] NULL,
	[REMARKS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRINT_IN_RPTS_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_BL_FROM_SSLINE_D] [datetime] NULL,
	[NEW_BL_FROM_SSLINE_D] [datetime] NULL,
	[ORIG_ACTUAL_SAIL_D] [datetime] NULL,
	[NEW_ACTUAL_SAIL_D] [datetime] NULL,
	[LAST_USER_CREATED] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_COMPLAINT_DESC] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_CR_BKG_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_CR_BKG_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_PLANT_LOAD_D] [datetime] NULL,
	[NEW_PLANT_LOAD_D] [datetime] NULL,
	[ORIG_BL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_BL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_PAYMENT_TERMS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_PAYMENT_TERMS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[NEW_DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[ORIG_DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[NEW_DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[ORIG_BL_TO_SSLINE_D] [datetime] NULL,
	[NEW_BL_TO_SSLINE_D] [datetime] NULL,
	[ORIG_DOCS_DISP_BY_BANK_D] [datetime] NULL,
	[NEW_DOCS_DISP_BY_BANK_D] [datetime] NULL,
	[ORIG_DOCS_FROM_CUST_D] [datetime] NULL,
	[NEW_DOCS_FROM_CUST_D] [datetime] NULL,
	[ORIG_SHIP_ON_BOARD] [datetime] NULL,
	[NEW_SHIP_ON_BOARD] [datetime] NULL,
	[ORIG_BL_ISSUE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_BL_ISSUE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_ACTUAL_ARR_D] [datetime] NULL,
	[NEW_ACTUAL_ARR_D] [datetime] NULL,
	[ORIG_WEB_WAREHOUSE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_WEB_WAREHOUSE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[internal_remarks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[orig_gi_chemical_d] [datetime] NULL,
	[new_gi_chemical_d] [datetime] NULL,
	[NEW_1ST_LINE_NET_WT] [numeric](11, 3) NULL,
	[orig_1st_line_net_wt] [numeric](11, 3) NULL,
	[NEW_1ST_LINE_WT] [numeric](11, 3) NULL,
	[orig_1st_line_wt] [numeric](11, 3) NULL,
	[new_1st_line_m3] [numeric](12, 4) NULL,
	[orig_1st_line_m3] [numeric](12, 4) NULL,
	[orig_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[new_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[conf_bl_to_ssline_d] [datetime] NULL,
	[isf102_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[express_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[obl_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIG_doc_cutoff_date] [datetime] NULL,
	[NEW_doc_cutoff_date] [datetime] NULL,
 CONSTRAINT [PK_EXPORT_REF_ROLL] PRIMARY KEY CLUSTERED 
(
	[SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF_ROLL] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_REF_ROLL] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_ROLL_11_220579874__K25_K2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_ROLL]') AND name = N'_dta_index_EXPORT_REF_ROLL_11_220579874__K25_K2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_ROLL_11_220579874__K25_K2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21] ON [dbo].[EXPORT_REF_ROLL]
(
	[PRINT_IN_RPTS_IND] ASC,
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[USER_CREATED],
	[DT_TIME_CREATED],
	[NC_FLAG],
	[ORIG_SAIL_DT],
	[ORIG_ETA_DEST_DT],
	[ORIG_CUTOFF_DT],
	[ORIG_VOY_NO],
	[ORIG_VESSEL],
	[ORIG_SCAC],
	[ORIG_NVOC],
	[ORIG_CARRIER_NAME],
	[NEW_SAIL_DT],
	[NEW_ETA_DEST_DT],
	[NEW_CUTOFF_DT],
	[NEW_VOY_NO],
	[NEW_VESSEL],
	[NEW_SCAC],
	[NEW_NVOC],
	[NEW_CARRIER_NAME]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
