USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_INSURANCE]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_INSURANCE](
	[insurance_no] [numeric](9, 0) NULL,
	[shipperref_no] [varchar](50) NULL,
	[export_no] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_INSURANCE] TO  SCHEMA OWNER 
GO
