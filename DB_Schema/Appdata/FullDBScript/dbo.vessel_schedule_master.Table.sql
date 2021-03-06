USE [appdata]
GO
/****** Object:  Index [idx_vessel_schedule_master2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_vessel_schedule_master2] ON [dbo].[vessel_schedule_master]
GO
/****** Object:  Index [idx_vessel_schedule_master1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_vessel_schedule_master1] ON [dbo].[vessel_schedule_master]
GO
/****** Object:  Table [dbo].[vessel_schedule_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[vessel_schedule_master]
GO
/****** Object:  Table [dbo].[vessel_schedule_master]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vessel_schedule_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vessel_schedule_master](
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lloyds_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [datetime] NULL,
	[port_load] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eta] [datetime] NULL,
	[port_disc] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[etapol] [datetime] NULL,
 CONSTRAINT [PK_vessel_schedule_master] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[vessel_schedule_master] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_vessel_schedule_master1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vessel_schedule_master]') AND name = N'idx_vessel_schedule_master1')
CREATE NONCLUSTERED INDEX [idx_vessel_schedule_master1] ON [dbo].[vessel_schedule_master]
(
	[eta] ASC,
	[port_load] ASC,
	[port_disc] ASC,
	[carrier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_vessel_schedule_master2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vessel_schedule_master]') AND name = N'idx_vessel_schedule_master2')
CREATE NONCLUSTERED INDEX [idx_vessel_schedule_master2] ON [dbo].[vessel_schedule_master]
(
	[etd] ASC,
	[port_disc] ASC,
	[port_load] ASC,
	[carrier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
