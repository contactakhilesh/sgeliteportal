USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_BIDDER]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_BIDDER](
	[bidder_short_name] [nchar](50) NULL,
	[customer_name] [varchar](150) NULL,
	[customer_id] [char](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_BIDDER] TO  SCHEMA OWNER 
GO
