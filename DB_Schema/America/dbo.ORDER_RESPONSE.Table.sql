USE [AMERICA]
GO
/****** Object:  Table [dbo].[ORDER_RESPONSE]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_RESPONSE](
	[export_n] [numeric](10, 0) NOT NULL,
	[response_type] [int] NOT NULL,
	[processed] [char](1) NULL,
	[datesent] [datetime] NULL,
	[dateinserted] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[ORDER_RESPONSE] TO  SCHEMA OWNER 
GO
