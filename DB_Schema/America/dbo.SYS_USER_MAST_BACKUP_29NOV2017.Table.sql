USE [AMERICA]
GO
/****** Object:  Table [dbo].[SYS_USER_MAST_BACKUP_29NOV2017]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USER_MAST_BACKUP_29NOV2017](
	[USER_ID] [varchar](30) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[DEPT_ID] [varchar](50) NOT NULL,
	[COST_CTR_C] [varchar](50) NOT NULL,
	[DESIG_ID] [varchar](10) NULL,
	[CREATE_D] [datetime] NOT NULL,
	[PASSWORD] [varchar](20) NULL,
	[USER_TEL] [varchar](20) NULL,
	[USER_FAX] [varchar](20) NULL,
	[USER_EMAIL] [varchar](150) NULL,
	[USER_STAMP] [varchar](50) NULL,
	[DESIGNATION] [varchar](50) NULL,
	[MANAGER_EMAIL] [varchar](150) NULL,
	[ROLEID] [int] NULL,
	[active] [varchar](1) NULL,
	[disable_d] [datetime] NULL,
	[reinstate_d] [datetime] NULL,
	[dec_id] [varchar](17) NULL,
	[dec_code] [varchar](20) NULL,
	[dec_name] [varchar](105) NULL,
	[dec_contact] [varchar](25) NULL,
	[def_dhl_senders_id] [numeric](18, 0) NULL,
	[def_dhl_file_path] [varchar](150) NULL,
	[def_dhl_file_error] [varchar](150) NULL,
	[def_business_unit] [varchar](10) NULL,
	[BL_SURRENDER_USER_SIG] [varchar](20) NULL,
	[BL_SURRENDER_EMAIL_ADD] [varchar](50) NULL,
	[user_security_exempt] [char](1) NULL,
	[DHL_WEB_PRINTER] [varchar](50) NULL,
	[FULL_DOCS_PRINTER] [varchar](50) NULL,
	[office_id] [char](10) NULL,
	[main_dec_id] [varchar](17) NULL,
	[mobile_no] [varchar](30) NULL,
	[dept_stamp] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SYS_USER_MAST_BACKUP_29NOV2017] TO  SCHEMA OWNER 
GO
