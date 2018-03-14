USE [appdata]
GO
/****** Object:  Table [dbo].[STOCK_INFO]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[STOCK_INFO]
GO
/****** Object:  Table [dbo].[STOCK_INFO]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STOCK_INFO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STOCK_INFO](
	[CR_AGENT_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BATCH_NO] [numeric](5, 0) NOT NULL,
	[BL_NO] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BOOKED_TYPE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BOOKED_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RECEIVED_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[STATUS] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_BL_ID] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_STOCK_INFO] PRIMARY KEY NONCLUSTERED 
(
	[CR_AGENT_ID] ASC,
	[BATCH_NO] ASC,
	[BL_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[STOCK_INFO] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[STOCK_INFO] TO [public] AS [dbo]
GO
