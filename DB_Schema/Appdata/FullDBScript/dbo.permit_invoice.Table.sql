USE [appdata]
GO
/****** Object:  Table [dbo].[permit_invoice]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_invoice]
GO
/****** Object:  Table [dbo].[permit_invoice]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_invoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_invoice](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_no] [numeric](18, 0) NOT NULL,
	[invoice_n] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_d] [datetime] NULL,
	[valorem_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pref_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[term_type] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[term_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_rel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supp_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supp_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supp_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supp_name3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supp_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_inv_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_inv_rate] [decimal](18, 6) NULL,
	[tot_inv_amt] [decimal](15, 2) NULL,
	[tax_percent] [decimal](6, 3) NULL,
	[tax_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tax_rate] [decimal](18, 6) NULL,
	[tax_amt] [decimal](15, 2) NULL,
	[freight_percent] [decimal](6, 3) NULL,
	[freight_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_rate] [decimal](18, 6) NULL,
	[freight_amt] [decimal](15, 2) NULL,
	[insurance_percent] [decimal](6, 3) NULL,
	[insurance_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_invoice] TO  SCHEMA OWNER 
GO
