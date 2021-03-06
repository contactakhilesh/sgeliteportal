USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_BKG_DET](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[BKG_LINE_N] [numeric](10, 0) NOT NULL,
	[BKG_REF_N] [varchar](30) NOT NULL,
	[SHIPPER_NAME] [varchar](70) NOT NULL,
	[CONTACT] [varchar](50) NOT NULL,
	[TEL_N] [varchar](20) NOT NULL,
	[FAX_N] [varchar](20) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACK] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[CARGO_DES] [varchar](50) NOT NULL,
	[REMARKS1] [varchar](50) NOT NULL,
	[REMARKS2] [varchar](50) NOT NULL,
	[REMARKS3] [varchar](90) NOT NULL,
	[USER_ID] [varchar](50) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CANCEL_IND] [varchar](1) NOT NULL,
	[CANCEL_REM] [varchar](50) NOT NULL,
	[FINAL_DEST] [varchar](30) NULL,
	[MKGS1] [varchar](500) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[SHIPPER_IND] [varchar](1) NULL,
	[COLLECT_1] [varchar](40) NULL,
	[COLLECT_2] [varchar](40) NULL,
	[COLLECT_3] [varchar](40) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA_POD] [datetime] NULL,
	[ETA_FINAL] [datetime] NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_CARGO_TYPE] [varchar](10) NULL,
	[T_IMPORT_NO] [numeric](10, 0) NULL,
	[COLLECT_D] [datetime] NULL,
	[WEB_IND] [varchar](1) NULL,
	[D_USER_ID] [varchar](15) NULL,
	[HAULIER_NAME] [varchar](100) NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[EXPORT_IND] [varchar](1) NULL,
	[CUST_ID] [varchar](10) NULL,
	[COLLECT_4] [varchar](40) NULL,
	[COLLECT_5] [varchar](40) NULL,
	[PO_N] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[CUSTOMER_NAME] [varchar](70) NULL,
	[CONFIRM_IND] [varchar](1) NULL,
	[CONTRACT_N] [varchar](20) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
 CONSTRAINT [PK_EXPORT_BKG_DET] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_BKG_N] ASC,
	[BKG_LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
