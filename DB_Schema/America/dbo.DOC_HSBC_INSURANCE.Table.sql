USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_HSBC_INSURANCE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_HSBC_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NOT NULL,
	[elite_ref_no] [varchar](50) NOT NULL,
	[policy_no] [varchar](20) NULL,
	[comp_name] [varchar](200) NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](100) NULL,
	[tm_vessel] [varchar](20) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[Ins_clause1] [varchar](2) NULL,
	[special_cond] [varchar](1000) NULL,
	[claims_at] [varchar](100) NULL,
	[payable_to] [varchar](100) NULL,
	[ins_date] [datetime] NULL,
	[Ins_clause2] [varchar](2) NULL,
	[Ins_clause3] [varchar](2) NULL,
	[Ins_clause4] [varchar](2) NULL,
	[Ins_clause5] [varchar](2) NULL,
	[Ins_clause6] [varchar](2) NULL,
	[Ins_clause7] [varchar](2) NULL,
	[Ins_clause8] [varchar](2) NULL,
	[Ins_clause9] [varchar](2) NULL,
	[Ins_clause10] [varchar](2) NULL,
	[Ins_clause11] [varchar](2) NULL,
	[Ins_clause12] [varchar](2) NULL,
	[Survey_agent] [varchar](20) NULL,
	[tm_aircraft] [varchar](20) NULL,
	[tm_parcel] [varchar](20) NULL,
	[tm_land] [varchar](20) NULL,
	[tm_courier] [varchar](20) NULL,
	[pay_agent] [varchar](20) NULL,
	[currency] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_HSBC_INSURANCE] TO  SCHEMA OWNER 
GO
