USE [appdata]
GO
/****** Object:  Trigger [postupdate_audit_carrier_event]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_carrier_event]
GO
/****** Object:  Trigger [postinsert_audit_carrier_event]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_carrier_event]
GO
/****** Object:  Trigger [postdelete_audit_carrier_event]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_carrier_event]
GO
/****** Object:  Table [dbo].[CARRIER_EVENT]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CARRIER_EVENT]
GO
/****** Object:  Table [dbo].[CARRIER_EVENT]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CARRIER_EVENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CARRIER_EVENT](
	[EVENT_ID] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_N] [numeric](10, 0) NOT NULL,
	[ORDER_TYPE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_OF_CALL] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHANGE_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REVISED_DATE] [datetime] NULL,
	[REASON_FOR_DELAY] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MOD_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_DATE] [datetime] NULL,
	[MOD_DATE] [datetime] NOT NULL,
 CONSTRAINT [PK_CARRIER_EVENT] PRIMARY KEY CLUSTERED 
(
	[EVENT_ID] DESC,
	[REF_N] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CARRIER_EVENT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CARRIER_EVENT] TO [public] AS [dbo]
GO
