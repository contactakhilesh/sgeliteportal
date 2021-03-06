USE [AMERICA]
GO
/****** Object:  Table [dbo].[SendXML_Log]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendXML_Log](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_n] [decimal](10, 0) NULL,
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
	[carrier_id] [varchar](10) NULL,
	[msg_type] [varchar](10) NULL,
 CONSTRAINT [PK_SendXML_Log] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SendXML_Log] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_MsgStatus_Inc_ExportN_Activity]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [I_MsgStatus_Inc_ExportN_Activity] ON [dbo].[SendXML_Log]
(
	[msg_status] ASC
)
INCLUDE ( 	[export_n],
	[activity]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
