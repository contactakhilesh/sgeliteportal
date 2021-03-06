USE [AMERICA]
GO
/****** Object:  Table [dbo].[AUTO_PROFORMA_LOG]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTO_PROFORMA_LOG](
	[export_n] [numeric](10, 0) NOT NULL,
	[log_description] [varchar](255) NULL,
	[entry_d] [datetime] NULL,
	[entry_by] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AUTO_PROFORMA_LOG] TO  SCHEMA OWNER 
GO
