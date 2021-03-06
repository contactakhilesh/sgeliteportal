USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CHINA_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NOT NULL,
	[elite_ref_no] [varchar](50) NOT NULL,
	[rep_cover_note] [varchar](100) NULL,
	[insurer] [varchar](200) NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](500) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](1000) NULL,
	[claims_at] [varchar](100) NULL,
	[payable_to] [varchar](100) NULL,
	[ins_date] [datetime] NULL,
	[Survey_agent] [varchar](20) NULL,
	[currency] [varchar](10) NULL
) ON [PRIMARY]

GO
