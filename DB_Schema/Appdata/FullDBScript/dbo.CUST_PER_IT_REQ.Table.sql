USE [appdata]
GO
/****** Object:  Table [dbo].[CUST_PER_IT_REQ]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUST_PER_IT_REQ]
GO
/****** Object:  Table [dbo].[CUST_PER_IT_REQ]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUST_PER_IT_REQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUST_PER_IT_REQ](
	[ItRequestNo] [numeric](9, 0) NOT NULL,
	[CustId] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Environment] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CUST_PER_IT_REQ] PRIMARY KEY CLUSTERED 
(
	[ItRequestNo] ASC,
	[CustId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUST_PER_IT_REQ] TO  SCHEMA OWNER 
GO
