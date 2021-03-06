USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_HSBC_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_HSBC_INSURANCE]
GO
/****** Object:  Table [dbo].[DOC_HSBC_INSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HSBC_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_HSBC_INSURANCE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[policy_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tm_vessel] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_date] [datetime] NULL,
	[Ins_clause1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_cond] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claims_at] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payable_to] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins_date] [datetime] NULL,
	[Ins_clause2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause9] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause10] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause11] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_clause12] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Survey_agent] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tm_aircraft] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tm_parcel] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tm_land] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tm_courier] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pay_agent] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_HSBC_INSURANCE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_HSBC_INSURANCE] TO [public] AS [dbo]
GO
