USE [AMERICA]
GO
/****** Object:  Table [dbo].[Daily_LC_Advised_Rpt]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daily_LC_Advised_Rpt](
	[customer_id] [varchar](10) NULL,
	[advice_ref] [varchar](50) NULL,
	[lc_no] [varchar](50) NULL,
	[step] [varchar](10) NULL,
	[lc_currency] [varchar](10) NULL,
	[lc_amount] [varchar](50) NULL,
	[trans_d] [varchar](50) NULL,
	[received_ind] [varchar](10) NULL,
	[received_d] [datetime] NULL,
	[entry_d] [datetime] NULL,
	[pol] [varchar](200) NULL,
	[pod] [varchar](200) NULL,
	[lc_sent_by] [varchar](50) NULL,
	[cust_name] [varchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Daily_LC_Advised_Rpt] TO  SCHEMA OWNER 
GO
