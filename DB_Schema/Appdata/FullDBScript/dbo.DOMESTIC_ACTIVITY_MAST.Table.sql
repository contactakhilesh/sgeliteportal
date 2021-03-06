USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_ACTIVITY_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOMESTIC_ACTIVITY_MAST] DROP CONSTRAINT IF EXISTS [DF__domestic___ETD_F__151BEFA5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_ACTIVITY_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOMESTIC_ACTIVITY_MAST] DROP CONSTRAINT IF EXISTS [DF__domestic___ETA_F__1427CB6C]
GO
/****** Object:  Table [dbo].[DOMESTIC_ACTIVITY_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_ACTIVITY_MAST]
GO
/****** Object:  Table [dbo].[DOMESTIC_ACTIVITY_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_ACTIVITY_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_ACTIVITY_MAST](
	[seq_n] [decimal](18, 0) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[act_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[ETA_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[start_date_ot] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[end_date_ot] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd_atd_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[start_date_hr_rate] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[end_date_hr_rate] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd_atd_hr_rate] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_MAST] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_ACTIVITY_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_ACTIVITY_MAST] TO [public] AS [dbo]
GO
