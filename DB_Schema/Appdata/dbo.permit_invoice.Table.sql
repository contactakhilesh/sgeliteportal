USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_invoice](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](18, 0) NOT NULL,
	[invoice_n] [varchar](35) NULL,
	[invoice_d] [datetime] NULL,
	[valorem_ind] [varchar](1) NULL,
	[pref_ind] [varchar](1) NULL,
	[term_type] [varchar](3) NULL,
	[term_desc] [varchar](100) NULL,
	[importer_rel] [varchar](50) NULL,
	[supp_code] [varchar](20) NULL,
	[supp_name1] [varchar](50) NULL,
	[supp_name2] [varchar](35) NULL,
	[supp_name3] [varchar](35) NULL,
	[supp_cr_uei] [varchar](20) NULL,
	[tot_inv_curr] [varchar](3) NULL,
	[tot_inv_rate] [decimal](18, 6) NULL,
	[tot_inv_amt] [decimal](15, 2) NULL,
	[tax_percent] [decimal](6, 3) NULL,
	[tax_curr] [varchar](3) NULL,
	[tax_rate] [decimal](18, 6) NULL,
	[tax_amt] [decimal](15, 2) NULL,
	[freight_percent] [decimal](6, 3) NULL,
	[freight_curr] [varchar](3) NULL,
	[freight_rate] [decimal](18, 6) NULL,
	[freight_amt] [decimal](15, 2) NULL,
	[insurance_percent] [decimal](6, 3) NULL,
	[insurance_curr] [varchar](3) NULL,
	[insurance_rate] [decimal](18, 6) NULL,
	[insurance_amt] [decimal](15, 2) NULL,
	[total_cost] [decimal](15, 2) NULL,
	[total_gst] [decimal](15, 2) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_invoice] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
