USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_autochase_carrier](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[ref_1] [varchar](50) NULL,
	[activity] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[sent_d] [datetime] NULL,
	[xml_file_name] [varchar](100) NULL,
	[log_d] [datetime] NULL,
	[msg_status] [varchar](50) NULL,
	[bkg_cfm_seq_n] [decimal](18, 0) NULL,
	[bkg_cfm_dt] [datetime] NULL,
	[si_ack_seq_n] [decimal](18, 0) NULL,
	[si_ack_dt] [datetime] NULL,
	[eliteint] [varchar](20) NULL,
	[xml_filename_resp] [varchar](50) NULL,
	[recv_date_resp] [datetime] NULL,
	[status_resp] [varchar](50) NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[msg_type] [varchar](10) NULL,
	[chasing_time] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[carrier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
