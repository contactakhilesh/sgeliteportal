USE [AMERICA]
GO
/****** Object:  Table [dbo].[SHELL_CON_PROD]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHELL_CON_PROD](
	[CONSIGNEE_NAME] [varchar](100) NULL,
	[PROD_NAME] [varchar](100) NULL,
	[EMAIL_TO] [varchar](255) NULL,
	[EMAIL_CC] [varchar](255) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATE_DATE] [datetime] NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NULL,
	[port_id] [varchar](10) NULL,
	[port_email_to] [varchar](255) NULL,
	[port_email_cc] [varchar](255) NULL,
	[ei_job_type] [varchar](10) NULL,
	[ei_vendorid] [varchar](10) NULL,
	[ei_emailto] [varchar](500) NULL,
	[ei_emailcc] [varchar](500) NULL,
	[ei_emailtofumigator] [varchar](500) NULL,
	[ei_emailton2] [varchar](500) NULL,
 CONSTRAINT [PK_SHELL_CON_PROD] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SHELL_CON_PROD] TO  SCHEMA OWNER 
GO
