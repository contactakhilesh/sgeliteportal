USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_MANUAL_INSURANCE]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_MANUAL_INSURANCE](
	[cert_n] [numeric](10, 0) NULL,
	[ship_value] [numeric](18, 3) NULL,
	[so_n] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_MANUAL_INSURANCE] TO  SCHEMA OWNER 
GO
