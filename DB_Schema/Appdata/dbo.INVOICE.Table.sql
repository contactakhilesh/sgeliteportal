USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INVOICE](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_D] [datetime] NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[INV_YM] [varchar](6) NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NOT NULL,
	[INV_TRA_TYPE] [varchar](1) NOT NULL,
	[INV_PRN_D] [datetime] NOT NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NOT NULL,
	[INV_CANCEL_IND] [varchar](1) NOT NULL,
	[INV_CANCEL_D] [datetime] NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[HBL_N] [varchar](30) NOT NULL,
	[OCEAN_BL] [varchar](30) NULL,
	[GD_DES1] [varchar](100) NOT NULL,
	[GD_DES2] [varchar](100) NOT NULL,
	[GD_DES3] [varchar](40) NOT NULL,
	[GD_DES4] [varchar](40) NOT NULL,
	[GD_DES5] [varchar](40) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_M3] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[INV_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_STD_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TYPE] [varchar](2) NULL,
	[PRINT_N] [numeric](5, 0) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[VOID_IND] [varchar](1) NULL,
	[TT_IND] [varchar](1) NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) NULL,
	[TT_CURR] [varchar](3) NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL,
	[INV_EX_RATE_USER_ID] [varchar](20) NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[CONT_FLAG] [char](1) NULL,
	[GD_DESC5] [varchar](40) NULL,
	[GD_DESC6] [varchar](40) NULL,
	[GD_DESC7] [varchar](40) NULL,
	[INV_STAMP_IND] [varchar](1) NULL,
	[INV_OTH_REF] [varchar](40) NULL,
	[REFBL_ID] [varchar](1) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[WITHHOLD_TAX] [numeric](3, 0) NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[REV_CRINV_N] [numeric](10, 0) NULL,
	[cost_centre_acctg] [varchar](10) NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[ar_doc_no] [varchar](20) NULL,
	[hub_rowid] [numeric](10, 0) NOT NULL,
	[yy_invoice_no] [varchar](20) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[ar_doc_dt] [datetime] NULL,
	[type] [varchar](10) NOT NULL,
	[isautocreated] [char](1) NULL,
	[upd_app] [varchar](3) NULL,
	[lsr_no] [varchar](50) NULL,
	[TO_ENVI] [varchar](10) NULL,
	[TO_ENVI_JOB] [varchar](10) NULL,
	[BILL_TO_PARTY] [varchar](10) NULL,
	[IS_GROUP] [varchar](1) NULL,
	[GROUP_NO] [varchar](50) NULL,
	[APPROVED_BY] [varchar](10) NULL,
	[APPROVED_DATE] [datetime] NULL,
	[PROCESS_FLAG] [varchar](10) NULL,
	[PROCESS_DATE] [datetime] NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [PK_INVOICE] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [INVOICE]  WITH NOCHECK ADD  CONSTRAINT [FK_INVOICE] FOREIGN KEY([CUST_ID])
REFERENCES [CUSTOMER_MAST] ([CUST_ID])
GO
ALTER TABLE [INVOICE] CHECK CONSTRAINT [FK_INVOICE]
GO
ALTER TABLE [INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_invoice_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [INVOICE] CHECK CONSTRAINT [FK_invoice_entity_rowid]
GO
