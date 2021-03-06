USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_BIDDER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_BIDDER]
GO
/****** Object:  Table [dbo].[TEMP_BIDDER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_BIDDER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_BIDDER](
	[bidder_short_name] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customer_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customer_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_BIDDER] TO  SCHEMA OWNER 
GO
