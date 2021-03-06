USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DR_NOTE](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INVOICE_TYPE] [varchar](1) NULL,
	[CUST_ID] [varchar](10) NULL,
	[INV_YM] [varchar](6) NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NULL,
	[INV_TRA_TYPE] [varchar](1) NOT NULL,
	[INV_D] [datetime] NULL,
	[PRN_D] [datetime] NULL,
	[INV_PRN_D] [datetime] NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NULL,
	[INV_CANCEL_IND] [varchar](1) NULL,
	[INV_CANCEL_D] [datetime] NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[HBL_N] [varchar](30) NULL,
	[OCEAN_BL] [varchar](30) NULL,
	[GD_DES1] [varchar](40) NULL,
	[GD_DES2] [varchar](40) NULL,
	[GD_DES3] [varchar](40) NULL,
	[GD_DES4] [varchar](40) NULL,
	[GD_DES5] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[CREATE_D] [datetime] NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[INV_GST_A] [numeric](11, 2) NULL,
	[INV_TOT_STD_RATE] [numeric](11, 2) NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NULL,
	[INV_TOT_A] [numeric](11, 2) NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NULL,
	[PRINT_N] [numeric](10, 0) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[VOID_IND] [varchar](1) NULL,
	[CORRES_INVOICE_N] [numeric](10, 0) NULL,
	[TT_IND] [varchar](1) NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) NULL,
	[TT_CURR] [varchar](3) NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL,
	[INV_EX_RATE_USER_ID] [varchar](10) NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[GD_DES6] [varchar](40) NULL,
	[GD_DES7] [varchar](40) NULL,
	[GD_DES8] [varchar](40) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[ar_doc_no] [varchar](20) NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [SYS_C0051990] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [DR_NOTE]  WITH CHECK ADD  CONSTRAINT [FK_dr_note_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [DR_NOTE] CHECK CONSTRAINT [FK_dr_note_entity_rowid]
GO
