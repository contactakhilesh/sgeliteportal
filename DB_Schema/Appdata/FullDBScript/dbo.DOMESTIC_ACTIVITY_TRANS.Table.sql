USE [appdata]
GO
/****** Object:  Trigger [TRG_DACT_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_DACT_JOBS_UPDATED]
GO
/****** Object:  Table [dbo].[DOMESTIC_ACTIVITY_TRANS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_ACTIVITY_TRANS]
GO
/****** Object:  Table [dbo].[DOMESTIC_ACTIVITY_TRANS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_ACTIVITY_TRANS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_ACTIVITY_TRANS](
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[act_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[est_dt] [datetime] NULL,
	[actual_dt] [datetime] NULL,
	[act_text] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_TRANS] PRIMARY KEY CLUSTERED 
(
	[group_seq] ASC,
	[act_seq] ASC,
	[domestic_job_n] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_ACTIVITY_TRANS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_ACTIVITY_TRANS] TO [public] AS [dbo]
GO
