USE [AMERICA]
GO
/****** Object:  Table [dbo].[credit_approval]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credit_approval](
	[rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[customer_name] [varchar](255) NOT NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[address3] [varchar](50) NULL,
	[address4] [varchar](50) NULL,
	[address5] [varchar](50) NULL,
	[incorporation_dt] [datetime] NULL,
	[country_id] [varchar](10) NULL,
	[business_activity] [varchar](255) NULL,
	[paidup_capital] [varchar](50) NULL,
	[share_holders1] [varchar](50) NULL,
	[share_holders2] [varchar](50) NULL,
	[share_holders3] [varchar](50) NULL,
	[share_holders4] [varchar](50) NULL,
	[share_holders5] [varchar](50) NULL,
	[dir_name] [varchar](80) NULL,
	[dir_age] [int] NULL,
	[dir_background] [varchar](150) NULL,
	[pic_name] [varchar](80) NULL,
	[pic_designation] [varchar](50) NULL,
	[pic_department] [varchar](50) NULL,
	[branch] [char](1) NULL,
	[overseas_ofc] [varchar](50) NULL,
	[business_type] [varchar](50) NULL,
	[others] [varchar](50) NULL,
	[total_sales] [numeric](18, 2) NULL,
	[total_teu] [numeric](10, 0) NULL,
	[gross_profit] [numeric](18, 2) NULL,
	[credit_limit] [numeric](18, 2) NULL,
	[credit_term] [int] NULL,
	[opinion] [varchar](150) NULL,
	[sales_year1] [numeric](18, 2) NULL,
	[sales_year2] [numeric](18, 2) NULL,
	[sales_year3] [numeric](18, 2) NULL,
	[gp_year1] [numeric](18, 2) NULL,
	[gp_year2] [numeric](18, 2) NULL,
	[gp_year3] [numeric](18, 2) NULL,
	[opexpenses_year1] [numeric](18, 2) NULL,
	[opexpenses_year2] [numeric](18, 2) NULL,
	[opexpenses_year3] [numeric](18, 2) NULL,
	[netprofit_year1] [numeric](18, 2) NULL,
	[netprofit_year2] [numeric](18, 2) NULL,
	[netprofit_year3] [numeric](18, 2) NULL,
	[attachment] [char](1) NULL,
	[reason] [varchar](255) NULL,
	[applied_by] [varchar](50) NULL,
	[recommended_by] [varchar](50) NULL,
	[rec_credit_limit] [numeric](18, 2) NULL,
	[rec_credit_term] [int] NULL,
	[valid_dt] [datetime] NULL,
	[confirm1_by] [varchar](50) NULL,
	[confirm1_dt] [datetime] NULL,
	[confirm2_by] [varchar](50) NULL,
	[confirm2_dt] [datetime] NULL,
	[approve1] [char](1) NULL,
	[approve2] [char](1) NULL,
	[currency_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_credit_approval] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[credit_approval] TO  SCHEMA OWNER 
GO
