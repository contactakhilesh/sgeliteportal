USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [form_ab](
	[trans_id] [numeric](10, 0) NULL,
	[trans_date] [datetime] NULL,
	[trans_name] [varchar](100) NULL,
	[vessel_ref_fr] [numeric](10, 0) NULL,
	[vessel_ref_to] [numeric](10, 0) NULL,
	[export_n] [numeric](10, 0) NULL,
	[remarks_from] [varchar](255) NULL,
	[remarks_to] [varchar](255) NULL,
	[note] [varchar](255) NULL,
	[nc_party_code] [varchar](10) NULL,
	[nc_type_code] [varchar](10) NULL,
	[nc_complaint_desc] [varchar](255) NULL
) ON [PRIMARY]

GO
