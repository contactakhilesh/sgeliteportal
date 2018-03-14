USE [AMERICA]
GO
/****** Object:  Table [dbo].[broker_email_param]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[broker_email_param](
	[export_n] [numeric](10, 0) NULL,
	[param1] [varchar](255) NULL,
	[param2] [varchar](255) NULL,
	[param3] [varchar](255) NULL,
	[param4] [varchar](255) NULL,
	[param5] [varchar](255) NULL,
	[param6] [varchar](255) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[broker_email_param] TO  SCHEMA OWNER 
GO
