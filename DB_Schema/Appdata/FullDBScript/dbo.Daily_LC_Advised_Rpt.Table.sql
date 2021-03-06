USE [appdata]
GO
/****** Object:  Table [dbo].[Daily_LC_Advised_Rpt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Daily_LC_Advised_Rpt]
GO
/****** Object:  Table [dbo].[Daily_LC_Advised_Rpt]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Daily_LC_Advised_Rpt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Daily_LC_Advised_Rpt](
	[customer_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[advice_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[step] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trans_d] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[received_ind] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[received_d] [datetime] NULL,
	[entry_d] [datetime] NULL,
	[pol] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_sent_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Daily_LC_Advised_Rpt] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Daily_LC_Advised_Rpt] TO [public] AS [dbo]
GO
