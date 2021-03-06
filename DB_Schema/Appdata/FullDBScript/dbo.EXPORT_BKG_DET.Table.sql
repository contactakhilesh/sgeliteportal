USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_BKG_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_BKG_DET]
GO
/****** Object:  Table [dbo].[EXPORT_BKG_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_BKG_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_BKG_DET](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[BKG_LINE_N] [numeric](10, 0) NOT NULL,
	[BKG_REF_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIPPER_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TEL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EMAIL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACK] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CARGO_DES] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS3] [varchar](90) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CANCEL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CANCEL_REM] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FINAL_DEST] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA_POD] [datetime] NULL,
	[ETA_FINAL] [datetime] NULL,
	[PO_HAULIER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_WAREHOUSE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_CARGO_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_IMPORT_NO] [numeric](10, 0) NULL,
	[COLLECT_D] [datetime] NULL,
	[WEB_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_USER_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAULIER_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[EXPORT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONSIGNEE_REF_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUSTOMER_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONFIRM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EXPORT_BKG_DET] ADD [QUICK_TRACK_NO] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_EXPORT_BKG_DET] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_BKG_N] ASC,
	[BKG_LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_BKG_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_BKG_DET] TO [public] AS [dbo]
GO
