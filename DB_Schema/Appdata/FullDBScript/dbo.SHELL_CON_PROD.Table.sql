USE [appdata]
GO
/****** Object:  Table [dbo].[SHELL_CON_PROD]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SHELL_CON_PROD]
GO
/****** Object:  Table [dbo].[SHELL_CON_PROD]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SHELL_CON_PROD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SHELL_CON_PROD](
	[CONSIGNEE_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_TO] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_CC] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_DATE] [datetime] NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_email_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_email_cc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_job_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_vendorid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_emailto] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_emailcc] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_emailtofumigator] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ei_emailton2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SHELL_CON_PROD] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SHELL_CON_PROD] TO  SCHEMA OWNER 
GO
