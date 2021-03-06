USE [appdata]
GO
/****** Object:  Trigger [trg_populate_export_si_det_table]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_populate_export_si_det_table]
GO
/****** Object:  Table [dbo].[msg315]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[msg315]
GO
/****** Object:  Table [dbo].[msg315]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[msg315]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[msg315](
	[seq_n] [numeric](18, 0) NOT NULL,
	[msg315_d] [datetime] NULL,
	[insert315_d] [datetime] NULL,
	[carrier] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[equipment_n] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[filename] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sc_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[matched] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [numeric](18, 0) NULL,
	[ref_1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[event_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_of_delivery] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_load] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_of_receipt] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_discharge] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_location] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_msg315] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[msg315] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[msg315] TO [public] AS [dbo]
GO
