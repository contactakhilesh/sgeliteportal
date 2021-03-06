USE [appdata]
GO
/****** Object:  Trigger [TRG_ESI_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_ESI_JOBS_UPDATED]
GO
/****** Object:  Trigger [trg_after_upd_EXPORT_si_det]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_EXPORT_si_det]
GO
/****** Object:  Index [_dta_index_export_si_det_11_1763537366__K1_K5_K6]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_export_si_det_11_1763537366__K1_K5_K6] ON [dbo].[export_si_det]
GO
/****** Object:  Table [dbo].[export_si_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[export_si_det]
GO
/****** Object:  Table [dbo].[export_si_det]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[export_si_det]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[export_si_det](
	[export_n] [decimal](18, 0) NOT NULL,
	[move_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[send_det_wt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipping_instruction] [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[doc_header_seq_n_atd] [numeric](18, 0) NULL,
	[doc_header_seq_n_ata] [numeric](18, 0) NULL,
	[po_n_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_payment_loc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[senddelete_flag] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[push_email_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[push_email_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POD_315] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TotalPalletSendFlag] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tech_name_ind] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customs_clearance_POL_d] [datetime] NULL,
	[container_clearance_POD_d] [datetime] NULL,
	[freight_payment_loc_code] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_export_si_det] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[export_si_det] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[export_si_det] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_export_si_det_11_1763537366__K1_K5_K6]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[export_si_det]') AND name = N'_dta_index_export_si_det_11_1763537366__K1_K5_K6')
CREATE NONCLUSTERED INDEX [_dta_index_export_si_det_11_1763537366__K1_K5_K6] ON [dbo].[export_si_det]
(
	[export_n] ASC,
	[actual_sail_d] ASC,
	[actual_arr_d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
