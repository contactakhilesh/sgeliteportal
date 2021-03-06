USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[credit_approval]') AND type in (N'U'))
ALTER TABLE [dbo].[credit_approval] DROP CONSTRAINT IF EXISTS [DF_credit_approval_approve2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[credit_approval]') AND type in (N'U'))
ALTER TABLE [dbo].[credit_approval] DROP CONSTRAINT IF EXISTS [DF_credit_approval_approve1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[credit_approval]') AND type in (N'U'))
ALTER TABLE [dbo].[credit_approval] DROP CONSTRAINT IF EXISTS [DF_credit_approval_attachment]
GO
/****** Object:  Table [dbo].[credit_approval]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[credit_approval]
GO
/****** Object:  Table [dbo].[credit_approval]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[credit_approval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[credit_approval](
	[rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[customer_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[address1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incorporation_dt] [datetime] NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[business_activity] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[paidup_capital] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[share_holders1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[share_holders2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[share_holders3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[share_holders4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[share_holders5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dir_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dir_age] [int] NULL,
	[dir_background] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pic_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pic_designation] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pic_department] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[branch] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[overseas_ofc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[business_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[others] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[total_sales] [numeric](18, 2) NULL,
	[total_teu] [numeric](10, 0) NULL,
	[gross_profit] [numeric](18, 2) NULL,
	[credit_limit] [numeric](18, 2) NULL,
	[credit_term] [int] NULL,
	[opinion] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[attachment] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reason] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applied_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recommended_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rec_credit_limit] [numeric](18, 2) NULL,
	[rec_credit_term] [int] NULL,
	[valid_dt] [datetime] NULL,
	[confirm1_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[confirm1_dt] [datetime] NULL,
	[confirm2_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[confirm2_dt] [datetime] NULL,
	[approve1] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[approve2] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_credit_approval] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[credit_approval] TO  SCHEMA OWNER 
GO
