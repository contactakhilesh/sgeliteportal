USE [AMERICA]
GO
/****** Object:  Table [dbo].[rpt_alb_chg_det]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_alb_chg_det](
	[country_id] [varchar](10) NOT NULL,
	[seq_n] [numeric](11, 3) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[loc_desc] [varchar](50) NULL,
	[item_desc] [varchar](50) NULL,
	[item_group] [varchar](50) NULL,
	[item_sub_group] [varchar](50) NULL,
	[bill_period] [varchar](10) NOT NULL,
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

GO
ALTER AUTHORIZATION ON [dbo].[rpt_alb_chg_det] TO  SCHEMA OWNER 
GO
