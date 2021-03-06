USE [appdata]
GO
/****** Object:  Index [I_Export_n_Status_code]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_Export_n_Status_code] ON [dbo].[permit_txlog]
GO
/****** Object:  Table [dbo].[permit_txlog]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_txlog]
GO
/****** Object:  Table [dbo].[permit_txlog]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_txlog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_txlog](
	[job_n] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[customs_permit_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
	[shipper_ref] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status_code] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[status_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_d] [datetime] NULL,
	[xml_filename] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_log_hd] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_txlog] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_Export_n_Status_code]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_txlog]') AND name = N'I_Export_n_Status_code')
CREATE NONCLUSTERED INDEX [I_Export_n_Status_code] ON [dbo].[permit_txlog]
(
	[export_n] ASC,
	[status_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
