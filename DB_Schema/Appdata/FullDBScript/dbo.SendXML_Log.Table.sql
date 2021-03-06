USE [appdata]
GO
/****** Object:  Trigger [trg_post_ins_sendxml_log_nc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_ins_sendxml_log_nc]
GO
/****** Object:  Trigger [trg_after_ins_sendxml_log_cancellation]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_sendxml_log_cancellation]
GO
/****** Object:  Trigger [trg_after_ins_sendxml_log]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_sendxml_log]
GO
/****** Object:  Trigger [trg_after_ins_send_email_carrier]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_send_email_carrier]
GO
/****** Object:  Index [sendxml_log_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [sendxml_log_idx2] ON [dbo].[SendXML_Log]
GO
/****** Object:  Index [sendxml_log_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [sendxml_log_idx1] ON [dbo].[SendXML_Log]
GO
/****** Object:  Index [I_MsgStatus_Inc_ExportN_Activity]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_MsgStatus_Inc_ExportN_Activity] ON [dbo].[SendXML_Log]
GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K9_K6_K8_K4_K12_K7_K20_K1_K5_K11_13_14_15]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SendXML_Log_11_336056283__K9_K6_K8_K4_K12_K7_K20_K1_K5_K11_13_14_15] ON [dbo].[SendXML_Log]
GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K6_K5_K1_7_8]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SendXML_Log_11_336056283__K6_K5_K1_7_8] ON [dbo].[SendXML_Log]
GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K6_K1_K4_K7_K8_K9_K12_K20_K5_K11_13_14_15]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SendXML_Log_11_336056283__K6_K1_K4_K7_K8_K9_K12_K20_K5_K11_13_14_15] ON [dbo].[SendXML_Log]
GO
/****** Object:  Table [dbo].[SendXML_Log]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SendXML_Log]
GO
/****** Object:  Table [dbo].[SendXML_Log]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SendXML_Log](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [decimal](10, 0) NULL,
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
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SendXML_Log] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SendXML_Log] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SendXML_Log] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K6_K1_K4_K7_K8_K9_K12_K20_K5_K11_13_14_15]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'_dta_index_SendXML_Log_11_336056283__K6_K1_K4_K7_K8_K9_K12_K20_K5_K11_13_14_15')
CREATE NONCLUSTERED INDEX [_dta_index_SendXML_Log_11_336056283__K6_K1_K4_K7_K8_K9_K12_K20_K5_K11_13_14_15] ON [dbo].[SendXML_Log]
(
	[activity] ASC,
	[seq_n] ASC,
	[export_n] ASC,
	[user_id] ASC,
	[sent_d] ASC,
	[xml_file_name] ASC,
	[bkg_cfm_seq_n] ASC,
	[carrier_id] ASC,
	[ref_1] ASC,
	[msg_status] ASC
)
INCLUDE ( 	[bkg_cfm_dt],
	[si_ack_seq_n],
	[si_ack_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K6_K5_K1_7_8]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'_dta_index_SendXML_Log_11_336056283__K6_K5_K1_7_8')
CREATE NONCLUSTERED INDEX [_dta_index_SendXML_Log_11_336056283__K6_K5_K1_7_8] ON [dbo].[SendXML_Log]
(
	[activity] ASC,
	[ref_1] ASC,
	[seq_n] ASC
)
INCLUDE ( 	[user_id],
	[sent_d]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_SendXML_Log_11_336056283__K9_K6_K8_K4_K12_K7_K20_K1_K5_K11_13_14_15]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'_dta_index_SendXML_Log_11_336056283__K9_K6_K8_K4_K12_K7_K20_K1_K5_K11_13_14_15')
CREATE NONCLUSTERED INDEX [_dta_index_SendXML_Log_11_336056283__K9_K6_K8_K4_K12_K7_K20_K1_K5_K11_13_14_15] ON [dbo].[SendXML_Log]
(
	[xml_file_name] ASC,
	[activity] ASC,
	[sent_d] ASC,
	[export_n] ASC,
	[bkg_cfm_seq_n] ASC,
	[user_id] ASC,
	[carrier_id] ASC,
	[seq_n] ASC,
	[ref_1] ASC,
	[msg_status] ASC
)
INCLUDE ( 	[bkg_cfm_dt],
	[si_ack_seq_n],
	[si_ack_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_MsgStatus_Inc_ExportN_Activity]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'I_MsgStatus_Inc_ExportN_Activity')
CREATE NONCLUSTERED INDEX [I_MsgStatus_Inc_ExportN_Activity] ON [dbo].[SendXML_Log]
(
	[msg_status] ASC
)
INCLUDE ( 	[export_n],
	[activity]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [sendxml_log_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'sendxml_log_idx1')
CREATE NONCLUSTERED INDEX [sendxml_log_idx1] ON [dbo].[SendXML_Log]
(
	[export_n] ASC,
	[activity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [sendxml_log_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Log]') AND name = N'sendxml_log_idx2')
CREATE NONCLUSTERED INDEX [sendxml_log_idx2] ON [dbo].[SendXML_Log]
(
	[export_n] ASC,
	[bkg_cfm_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
