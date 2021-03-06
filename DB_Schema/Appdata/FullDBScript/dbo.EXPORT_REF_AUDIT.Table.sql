USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_REF_AUDIT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_REF_AUDIT]
GO
/****** Object:  Table [dbo].[EXPORT_REF_AUDIT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_AUDIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_REF_AUDIT](
	[application_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_date] [datetime] NULL,
	[eidt_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hostname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[old_value] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[new_value] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_ref_n] [numeric](9, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF_AUDIT] TO  SCHEMA OWNER 
GO
