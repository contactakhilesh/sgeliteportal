USE [appdata]
GO
/****** Object:  Table [dbo].[temp_autochase_carrier]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_autochase_carrier]
GO
/****** Object:  Table [dbo].[temp_autochase_carrier]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_autochase_carrier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_autochase_carrier](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[activity] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sent_d] [datetime] NULL,
	[xml_file_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[log_d] [datetime] NULL,
	[msg_status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bkg_cfm_seq_n] [decimal](18, 0) NULL,
	[bkg_cfm_dt] [datetime] NULL,
	[si_ack_seq_n] [decimal](18, 0) NULL,
	[si_ack_dt] [datetime] NULL,
	[eliteint] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_filename_resp] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recv_date_resp] [datetime] NULL,
	[status_resp] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chasing_time] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__temp_autochase_c__7D053A49] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[carrier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_autochase_carrier] TO  SCHEMA OWNER 
GO
