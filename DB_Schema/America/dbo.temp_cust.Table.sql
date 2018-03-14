USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_cust]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_cust](
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_cust] TO  SCHEMA OWNER 
GO
