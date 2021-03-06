USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_USER_MAST] DROP CONSTRAINT IF EXISTS [default_def_dhl_file_error]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_USER_MAST] DROP CONSTRAINT IF EXISTS [default_def_dhl_file_path]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_USER_MAST] DROP CONSTRAINT IF EXISTS [DF__sys_user___activ__4258AA70]
GO
/****** Object:  Index [sys_user_mast_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [sys_user_mast_idx2] ON [dbo].[SYS_USER_MAST]
GO
/****** Object:  Index [_dta_index_SYS_USER_MAST_c_7_1628584890__K3_K15]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SYS_USER_MAST_c_7_1628584890__K3_K15] ON [dbo].[SYS_USER_MAST] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[SYS_USER_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SYS_USER_MAST]
GO
/****** Object:  Table [dbo].[SYS_USER_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYS_USER_MAST](
	[USER_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DEPT_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COST_CTR_C] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESIG_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NOT NULL,
	[PASSWORD] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_TEL] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_FAX] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_EMAIL] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_STAMP] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESIGNATION] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MANAGER_EMAIL] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROLEID] [int] NULL,
	[active] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[disable_d] [datetime] NULL,
	[reinstate_d] [datetime] NULL,
	[dec_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_name] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_contact] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[def_dhl_senders_id] [numeric](18, 0) NULL,
	[def_dhl_file_path] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[def_dhl_file_error] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[def_business_unit] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_SURRENDER_USER_SIG] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_SURRENDER_EMAIL_ADD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_security_exempt] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DHL_WEB_PRINTER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FULL_DOCS_PRINTER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[office_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[main_dec_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mobile_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dept_stamp] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SYS_USER_MAST] PRIMARY KEY NONCLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SYS_USER_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SYS_USER_MAST] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_SYS_USER_MAST_c_7_1628584890__K3_K15]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND name = N'_dta_index_SYS_USER_MAST_c_7_1628584890__K3_K15')
CREATE CLUSTERED INDEX [_dta_index_SYS_USER_MAST_c_7_1628584890__K3_K15] ON [dbo].[SYS_USER_MAST]
(
	[DEPT_ID] ASC,
	[active] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [sys_user_mast_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MAST]') AND name = N'sys_user_mast_idx2')
CREATE NONCLUSTERED INDEX [sys_user_mast_idx2] ON [dbo].[SYS_USER_MAST]
(
	[USER_ID] ASC,
	[PASSWORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
