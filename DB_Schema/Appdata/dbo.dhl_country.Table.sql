USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_country](
	[country_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[terms_of_trade_reqd_flag] [bit] NOT NULL,
	[terms_of_payments_reqd_flag] [bit] NOT NULL,
	[invoice_number_reqd_flag] [bit] NOT NULL,
	[export_type_reqd_flag] [bit] NOT NULL,
	[export_reason_reqd_flag] [bit] NOT NULL,
	[US_certificate_of_origin_flag] [bit] NOT NULL,
	[currency_cd] [varchar](3) NOT NULL,
	[state_label] [varchar](9) NULL,
	[UsePostCode_flag] [bit] NOT NULL,
	[ddp_in_flag] [varchar](1) NOT NULL,
	[ddp_out_flag] [varchar](1) NOT NULL,
	[ddu_flag] [varchar](1) NOT NULL,
	[dvu_flag] [varchar](1) NOT NULL,
	[nds_flag] [varchar](1) NOT NULL,
	[sat_flag] [varchar](1) NOT NULL,
	[Threshold_value] [float] NULL,
	[tc_allowed_flag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
