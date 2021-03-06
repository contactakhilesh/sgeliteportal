USE [appdata]
GO
/****** Object:  Trigger [trg_u_customer]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_customer]
GO
/****** Object:  Trigger [trg_u_cust_acc]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_cust_acc]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___inclu__26E6657C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___chk_p__737BD00F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___conso__2CE95795]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___CHK_C__29CCF3C8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___isinv__27E4AB56]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___nomin__489B93AB]
GO
/****** Object:  Index [IX_CUST_NAME]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_CUST_NAME] ON [dbo].[CUSTOMER_MAST]
GO
/****** Object:  Table [dbo].[CUSTOMER_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_MAST]
GO
/****** Object:  Table [dbo].[CUSTOMER_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_MAST](
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
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [AcctName] [varchar](81) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [iscustomer] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [salesman_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [def_loc_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [UEN] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [nominated_carrier] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [bu_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [bu_id] [numeric](10, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [isinvoiceable] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [CHK_CNBLICNO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [consolidate_inv] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [attention] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [chk_permit_product] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [yy_cust_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [sy_cust_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [include_in_consplrpt] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [def_dhl_senders_id] [numeric](18, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [business_unit] [numeric](10, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [cancel_cust_id] [int] NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [DHL_ACCT_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [ins_premium_rate] [decimal](9, 3) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [LogoName] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [postal_code1] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [postal_code2] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [cust_stamp] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [invparty_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [TO_ENVI] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [F_PARTY_NUMBER] [numeric](20, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [F_CUST_ACCOUNT_NUMBER] [numeric](20, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [F_CUST_SITE_NUMBER] [numeric](20, 0) NULL
ALTER TABLE [dbo].[CUSTOMER_MAST] ADD [bill_to_party] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_CUSTOMER_MAST] PRIMARY KEY CLUSTERED 
(
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUSTOMER_MAST] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CUST_NAME]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_MAST]') AND name = N'IX_CUST_NAME')
CREATE NONCLUSTERED INDEX [IX_CUST_NAME] ON [dbo].[CUSTOMER_MAST]
(
	[CUST_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
