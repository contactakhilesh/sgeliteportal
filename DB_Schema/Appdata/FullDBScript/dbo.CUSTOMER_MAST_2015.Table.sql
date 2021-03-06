USE [appdata]
GO
/****** Object:  Table [dbo].[CUSTOMER_MAST_2015]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_MAST_2015]
GO
/****** Object:  Table [dbo].[CUSTOMER_MAST_2015]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST_2015]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_MAST_2015](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_NAME2] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POSTAL_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TEL1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TEL2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EMAIL_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EMAIL_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_ACC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SALESMAN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD1_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LIST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST_REG_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS4] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IPASS] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INAME2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IPASS2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICUST] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IACTIVE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GLB_CUST_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEPT_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BUSINESS_REG_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TDB_CR_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_LOGO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_ADD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[parentAcctid] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [AcctName] [varchar](81) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [iscustomer] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [salesman_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [def_loc_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [UEN] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [nominated_carrier] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [bu_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [bu_id] [numeric](10, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [isinvoiceable] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [CHK_CNBLICNO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [consolidate_inv] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [attention] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [chk_permit_product] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [yy_cust_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [sy_cust_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [include_in_consplrpt] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [def_dhl_senders_id] [numeric](18, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [business_unit] [numeric](10, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [cancel_cust_id] [int] NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [DHL_ACCT_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [ins_premium_rate] [decimal](9, 3) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [LogoName] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [postal_code1] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST_2015] ADD [postal_code2] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_MAST_2015] TO  SCHEMA OWNER 
GO
