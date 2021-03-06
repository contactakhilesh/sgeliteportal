USE [appdata]
GO
/****** Object:  Table [dbo].[rpt_alb_chg_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[rpt_alb_chg_det]
GO
/****** Object:  Table [dbo].[rpt_alb_chg_det]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_alb_chg_det]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rpt_alb_chg_det](
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_n] [numeric](11, 3) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[loc_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_group] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_sub_group] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_period] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[total_jan] [numeric](11, 3) NOT NULL,
	[total_feb] [numeric](11, 3) NOT NULL,
	[total_mar] [numeric](11, 3) NOT NULL,
	[total_apr] [numeric](11, 3) NOT NULL,
	[total_may] [numeric](11, 3) NOT NULL,
	[total_jun] [numeric](11, 3) NOT NULL,
	[total_jul] [numeric](11, 3) NOT NULL,
	[total_aug] [numeric](11, 3) NOT NULL,
	[total_sep] [numeric](11, 3) NOT NULL,
	[total_oct] [numeric](11, 3) NOT NULL,
	[total_nov] [numeric](11, 3) NOT NULL,
	[total_dec] [numeric](11, 3) NOT NULL,
 CONSTRAINT [PK_ALB] PRIMARY KEY NONCLUSTERED 
(
	[country_id] ASC,
	[seq_n] ASC,
	[cust_id] ASC,
	[bill_period] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[rpt_alb_chg_det] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[rpt_alb_chg_det] TO [public] AS [dbo]
GO
