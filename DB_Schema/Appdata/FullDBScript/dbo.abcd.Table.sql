USE [appdata]
GO
/****** Object:  Table [dbo].[abcd]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[abcd]
GO
/****** Object:  Table [dbo].[abcd]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abcd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[abcd](
	[x] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[y] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORDER_ID] [numeric](10, 0) NOT NULL,
	[ORDER_TYPE] [numeric](2, 0) NULL,
	[EXP_IMP_N] [numeric](10, 0) NULL,
	[PROD_VAL] [numeric](11, 3) NULL,
	[PAYMENT_TERM_ID] [numeric](10, 0) NULL,
	[CREATED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MODIFIED_D] [datetime] NULL,
	[ETA_SIN] [datetime] NULL,
	[QUICK_TRACK_NO] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORDER_RCV_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[SHIPPER_CTC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_EMAIL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_TEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_FAX] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONFIRM_D] [datetime] NULL,
	[REQ_SHIP_D] [datetime] NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILLING1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILLING2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CANCEL_REM] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FCL_OR_LCL] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_FOB] [numeric](8, 2) NULL,
	[BIG_MARKING] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_TP] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_SENDER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REC_D] [datetime] NULL,
	[EDI_RECEIVER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REVISION] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REC_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_VALUE_TTL] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_DRAFT_PREP] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_INSTRUCT] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONFIRM_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[psa_portnet] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_pick_ref_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[stripes_del_no] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRAX_ORDERID] [numeric](11, 0) NULL,
	[TRAX_UPDATE_D] [datetime] NULL,
	[TRAX_UPDATE_USER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dhl_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONFIRMED] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[abcd] TO  SCHEMA OWNER 
GO
