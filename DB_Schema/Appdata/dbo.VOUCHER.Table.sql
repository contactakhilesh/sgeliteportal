USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VOUCHER](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_TRA_TYPE] [varchar](1) NOT NULL,
	[VOC_REF_N] [numeric](10, 0) NOT NULL,
	[VOC_JOB_N] [numeric](10, 0) NOT NULL,
	[VOUCHER_D] [datetime] NOT NULL,
	[COST_CENTRE_C] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[REF_EX_RATE] [numeric](11, 5) NULL,
	[VOC_EX_RATE] [numeric](11, 5) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NULL,
	[VOID_IND] [varchar](1) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[TERM_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[BANK] [varchar](30) NULL,
	[DOC_NO] [varchar](20) NULL,
	[DOC_NAME] [varchar](30) NULL,
	[PAY_DATE] [datetime] NULL,
	[DOC_DATE] [datetime] NULL,
	[DOC_IND] [varchar](2) NULL,
	[PO_NO] [varchar](16) NULL,
	[PO_DATE] [datetime] NULL,
	[DOC_DUE_DATE] [datetime] NULL,
	[DOC_TERM] [numeric](5, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[CHEQUE_NO] [varchar](10) NULL,
	[VOC_EX_RATE_USER_ID] [varchar](20) NULL,
	[VOC_EX_RATE_ENTRY_D] [datetime] NULL,
	[VOC_EX_RATE_USD] [numeric](11, 5) NULL,
	[REMARKS3] [varchar](50) NULL,
	[REMARKS4] [varchar](50) NULL,
	[REMARKS5] [varchar](50) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[INVOICE_N] [numeric](10, 0) NULL,
	[REV_VOUCHER_N] [numeric](10, 0) NULL,
	[isautocreated] [char](1) NOT NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[type] [varchar](10) NOT NULL,
	[orig_invoice] [varchar](40) NULL,
	[orig_environment] [varchar](10) NULL,
	[trn_proc_dt] [datetime] NULL,
	[TO_ENVI] [varchar](10) NULL,
	[APPROVED_BY] [varchar](10) NULL,
	[APPROVED_DATE] [datetime] NULL,
	[PROCESS_FLAG] [varchar](10) NULL,
	[PROCESS_DATE] [datetime] NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [PK_VOUCHER] PRIMARY KEY NONCLUSTERED 
(
	[VOUCHER_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [VOUCHER]  WITH CHECK ADD  CONSTRAINT [FK_voucher_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [VOUCHER] CHECK CONSTRAINT [FK_voucher_entity_rowid]
GO
