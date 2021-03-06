USE [appdata]
GO
/****** Object:  Table [dbo].[rpt_inv_sum]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[rpt_inv_sum]
GO
/****** Object:  Table [dbo].[rpt_inv_sum]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_inv_sum]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rpt_inv_sum](
	[sum_seq_n] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_from] [datetime] NULL,
	[date_to] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[rpt_inv_sum] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[rpt_inv_sum] TO [public] AS [dbo]
GO
