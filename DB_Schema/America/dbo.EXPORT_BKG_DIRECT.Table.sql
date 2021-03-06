USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_BKG_DIRECT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_BKG_DIRECT](
	[EXPORT_BKG_DIRECT_N] [numeric](10, 0) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[USER_ID] [varchar](40) NOT NULL,
	[SHIPPER_NAME] [varchar](70) NOT NULL,
	[SHIPPER_CTC] [varchar](50) NOT NULL,
	[SHIPPER_TEL] [varchar](20) NOT NULL,
	[SHIPPER_FAX] [varchar](20) NOT NULL,
	[SHIPPER_EMAIL] [varchar](50) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[DOCUMENTATION_IND] [varchar](1) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NOT NULL,
	[CARGO_DESC1] [varchar](100) NOT NULL,
	[CARGO_DESC2] [varchar](100) NOT NULL,
	[REMARKS1] [varchar](50) NOT NULL,
	[REMARKS2] [varchar](50) NOT NULL,
	[REMARKS3] [varchar](50) NOT NULL,
	[REMARKS4] [varchar](50) NOT NULL,
	[REMARKS5] [varchar](50) NOT NULL,
	[BILLING1] [varchar](50) NOT NULL,
	[BILLING2] [varchar](50) NOT NULL,
	[BILLING3] [varchar](50) NOT NULL,
	[FCL_OR_LCL] [varchar](3) NOT NULL,
	[TRANSFER_FLAG] [varchar](1) NOT NULL,
	[NO_OF_PKGS] [numeric](10, 0) NOT NULL,
	[WEIGHT] [numeric](11, 3) NOT NULL,
	[M3] [numeric](11, 3) NOT NULL,
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[PKGS_TYPE] [varchar](20) NOT NULL,
	[CANCEL_REM] [varchar](50) NOT NULL,
	[CANCEL_IND] [varchar](1) NOT NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NOT NULL,
	[ETA_SIN] [datetime] NOT NULL,
	[ETA_POD] [datetime] NOT NULL,
	[PORT_OF_DISC] [varchar](10) NOT NULL,
	[BKG_DIRECT_LINE_N] [numeric](10, 0) NOT NULL,
	[BKG_DIRECT_REF_N] [varchar](30) NOT NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[EXPRESS_BL_IND] [varchar](1) NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[CR_BKG_REF_N] [varchar](30) NULL,
	[ETD] [datetime] NULL,
	[CR_REF_BKG_N] [varchar](30) NULL,
	[PO_N] [varchar](40) NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[MARKING] [varchar](2000) NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[CUST_ID] [varchar](10) NULL,
	[LOT_NO] [varchar](200) NULL,
	[BATCH_NO] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[INV_VALUE_TTL] [varchar](40) NULL,
	[CARGO_DESC3] [varchar](50) NULL,
	[CTY_ORIG] [varchar](40) NULL,
	[REQ_SHIP_DATE] [varchar](40) NULL,
	[CONT_NO] [varchar](40) NULL,
	[EDI_SHIPPER1] [varchar](50) NULL,
	[EDI_SHIPPER2] [varchar](50) NULL,
	[EDI_SHIPPER3] [varchar](50) NULL,
	[EDI_SHIPPER4] [varchar](50) NULL,
	[EDI_SHIPPER5] [varchar](50) NULL,
	[EDI_SHIPPER6] [varchar](50) NULL,
	[EDI_CONS1] [varchar](50) NULL,
	[EDI_CONS2] [varchar](50) NULL,
	[EDI_CONS3] [varchar](50) NULL,
	[EDI_CONS4] [varchar](50) NULL,
	[EDI_NOTIFY1] [varchar](50) NULL,
	[EDI_NOTIFY2] [varchar](50) NULL,
	[EDI_NOTIFY3] [varchar](50) NULL,
	[EDI_NOTIFY4] [varchar](50) NULL,
	[OCEAN_FRT_CODE] [varchar](40) NULL,
	[BL_DRAFT_PREP] [varchar](40) NULL,
	[BL_INSTRUC] [varchar](100) NULL,
	[EDI_REMARKS] [varchar](250) NULL,
	[LC_NO] [varchar](40) NULL,
	[EDI_TP] [varchar](1) NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_REC_D] [datetime] NULL,
	[CONFIRM_IND] [varchar](1) NULL,
	[EDI_SENDER] [varchar](40) NULL,
	[EDI_RECEIVER] [varchar](40) NULL,
	[EDI_REVISION] [varchar](10) NULL,
	[EDI_REC_TYPE] [varchar](10) NULL,
	[EDI_CONS5] [varchar](50) NULL,
	[EDI_CONS6] [varchar](50) NULL,
	[EDI_NOTIFY5] [varchar](50) NULL,
	[EDI_NOTIFY6] [varchar](50) NULL,
	[DUP_ORD_IND] [varchar](1) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[CUSTOMER_NAME] [varchar](70) NULL,
	[NET_WEIGHT] [numeric](11, 3) NULL,
	[BKG_MKGS_N] [numeric](10, 0) NULL,
	[TRADE_TERM] [varchar](20) NULL,
	[CONTRACT_N] [varchar](20) NULL,
	[COUNTRY_DEL] [varchar](50) NULL,
	[CONT_ISO] [numeric](10, 0) NULL,
	[WT_UOM] [varchar](10) NULL,
	[PRT_SIG_IND] [varchar](1) NULL,
	[LC_DESC] [varchar](2000) NULL,
	[EDI_SALES_AGENT_ID] [varchar](20) NULL,
	[EDI_SALES_AGENT_NAME] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD1] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD2] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD3] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD4] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD5] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ID] [varchar](20) NULL,
	[EDI_BSNS_UNIT_NAME] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD1] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD2] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD3] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD4] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD5] [varchar](35) NULL,
	[PAYMENT_TERMS] [varchar](250) NULL,
	[TOT_FOB] [numeric](11, 2) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
	[CONFIRM_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[MODIFIED_USER] [varchar](40) NULL,
	[MODIFIED_D] [datetime] NULL,
	[ORDER_RCV_D] [datetime] NULL,
 CONSTRAINT [PK_EXP_BKG_DIRECT] PRIMARY KEY CLUSTERED 
(
	[EXPORT_BKG_DIRECT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_BKG_DIRECT] TO  SCHEMA OWNER 
GO
