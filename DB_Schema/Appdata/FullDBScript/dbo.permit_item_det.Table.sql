USE [appdata]
GO
/****** Object:  Index [idx_permit_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_permit_det] ON [dbo].[permit_item_det]
GO
/****** Object:  Table [dbo].[permit_item_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_item_det]
GO
/****** Object:  Table [dbo].[permit_item_det]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_item_det]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_item_det](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[inhouse_item_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hs_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hs_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dg_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_desc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cty_origin] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cty_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[brand] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[model] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipping_marks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_qty] [decimal](15, 4) NULL,
	[hs_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dut_qty] [decimal](15, 4) NULL,
	[dut_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_dut_qty] [decimal](15, 4) NULL,
	[tot_dut_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[alcohol_value] [decimal](6, 3) NULL,
	[alcohol_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cif_fob_amt] [decimal](15, 2) NULL,
	[currency_code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[out_qty] [decimal](8, 0) NULL,
	[out_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[in_qty] [decimal](8, 0) NULL,
	[in_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inner_qty] [decimal](8, 0) NULL,
	[inner_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inmost_qty] [decimal](8, 0) NULL,
	[inmost_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[curr_lot_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prev_lot_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marking] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marking_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inhouse_doc] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outhouse_doc] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pref_code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[text_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_n] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri2] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri3] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code_dt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[content_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[item_unit_price] [decimal](15, 4) NULL,
	[curr_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_sell_price] [decimal](15, 2) NULL,
	[gst_rate] [decimal](2, 0) NULL,
	[gst_amt] [decimal](15, 2) NULL,
	[excise_duty] [decimal](15, 2) NULL,
	[excise_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[excise_duty_tot] [decimal](15, 4) NULL,
	[customs_duty] [decimal](15, 2) NULL,
	[customs_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customs_duty_tot] [decimal](15, 2) NULL,
	[other_duty] [numeric](15, 2) NULL,
	[other_curr] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_duty_tot] [numeric](15, 2) NULL,
 CONSTRAINT [PK_permit_item_det] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_item_det] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_permit_det]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_item_det]') AND name = N'idx_permit_det')
CREATE NONCLUSTERED INDEX [idx_permit_det] ON [dbo].[permit_item_det]
(
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
