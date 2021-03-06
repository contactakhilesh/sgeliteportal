USE [AMERICA]
GO
/****** Object:  Table [dbo].[EGS_SWITCHES]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EGS_SWITCHES](
	[process_name] [varchar](500) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[switch_status] [int] NOT NULL,
	[vend_cust_id] [char](10) NULL,
	[process_type] [varchar](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EGS_SWITCHES] TO  SCHEMA OWNER 
GO
