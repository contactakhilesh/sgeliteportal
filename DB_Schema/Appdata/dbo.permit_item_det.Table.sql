USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_item_det](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[inhouse_item_code] [varchar](20) NULL,
	[hs_code] [varchar](10) NOT NULL,
	[hs_type] [varchar](50) NOT NULL,
	[hs_desc] [varchar](50) NULL,
	[duty_type] [varchar](10) NULL,
	[duty_desc] [varchar](50) NULL,
	[dg_ind] [varchar](1) NULL,
	[item_desc] [text] NULL,
	[cty_origin] [varchar](2) NULL,
	[cty_desc] [varchar](50) NULL,
	[brand] [varchar](35) NULL,
	[model] [varchar](35) NULL,
	[shipping_marks] [text] NULL,
	[hs_qty] [decimal](15, 4) NULL,
	[hs_uom] [varchar](3) NULL,
	[dut_qty] [decimal](15, 4) NULL,
	[dut_uom] [varchar](3) NULL,
	[tot_dut_qty] [decimal](15, 4) NULL,
	[tot_dut_uom] [varchar](3) NULL,
	[alcohol_value] [decimal](6, 3) NULL,
	[alcohol_uom] [varchar](3) NULL,
	[cif_fob_amt] [decimal](15, 2) NULL,
	[currency_code] [varchar](3) NULL,
	[out_qty] [decimal](8, 0) NULL,
	[out_uom] [varchar](3) NULL,
	[in_qty] [decimal](8, 0) NULL,
	[in_uom] [varchar](3) NULL,
	[inner_qty] [decimal](8, 0) NULL,
	[inner_uom] [varchar](3) NULL,
	[inmost_qty] [decimal](8, 0) NULL,
	[inmost_uom] [varchar](3) NULL,
	[curr_lot_no] [varchar](30) NULL,
	[prev_lot_no] [varchar](30) NULL,
	[marking] [varchar](2) NULL,
	[marking_desc] [varchar](50) NULL,
	[inhouse_doc] [varchar](35) NULL,
	[outhouse_doc] [varchar](35) NULL,
	[pref_code] [varchar](3) NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [text] NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) NULL,
	[text_desc] [varchar](100) NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) NULL,
	[invoice_n] [varchar](35) NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[hs_code_dt] [varchar](10) NULL,
	[content_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[item_unit_price] [decimal](15, 4) NULL,
	[curr_desc] [varchar](100) NULL,
	[last_sell_price] [decimal](15, 2) NULL,
	[gst_rate] [decimal](2, 0) NULL,
	[gst_amt] [decimal](15, 2) NULL,
	[excise_duty] [decimal](15, 2) NULL,
	[excise_curr] [varchar](3) NULL,
	[excise_duty_tot] [decimal](15, 4) NULL,
	[customs_duty] [decimal](15, 2) NULL,
	[customs_curr] [varchar](3) NULL,
	[customs_duty_tot] [decimal](15, 2) NULL,
	[other_duty] [numeric](15, 2) NULL,
	[other_curr] [varchar](3) NULL,
	[other_duty_tot] [numeric](15, 2) NULL,
 CONSTRAINT [PK_permit_item_det] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
