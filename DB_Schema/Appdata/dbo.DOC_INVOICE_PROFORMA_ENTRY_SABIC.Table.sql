USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_INVOICE_PROFORMA_ENTRY_SABIC](
	[DOC_HEAD_NO] [varchar](30) NOT NULL,
	[SCC_REF_NO] [varchar](20) NULL,
	[SCC_REF_TYPE] [varchar](20) NULL,
	[DOC_TITLE] [varchar](200) NULL,
	[DOC_CREATION_DT] [datetime] NULL,
	[SHIPPER_REFERENCE_NO] [varchar](50) NULL,
	[INVOICE_NO] [varchar](100) NULL,
	[INVOICE_DATE] [datetime] NULL,
	[BL_NO] [varchar](20) NULL,
	[BILL_TO_ADD1] [varchar](70) NULL,
	[BILL_TO_ADD2] [varchar](70) NULL,
	[BILL_TO_ADD3] [varchar](70) NULL,
	[BILL_TO_ADD4] [varchar](70) NULL,
	[BILL_TO_ADD5] [varchar](70) NULL,
	[BILL_TO_ADD6] [varchar](70) NULL
) ON [PRIMARY]

GO
