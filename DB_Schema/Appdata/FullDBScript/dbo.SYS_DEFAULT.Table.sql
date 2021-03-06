USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAULT__sys__44F781FE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__chk_p__780B7B02]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__link___096B112E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__enabl__64398C7F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__show___63456846]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__IsMai__3C2B9B25]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__invoi__357E9D96]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__conso__2ED1A007]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
ALTER TABLE [dbo].[SYS_DEFAULT] DROP CONSTRAINT IF EXISTS [DF__SYS_DEFAU__log_h__109731AA]
GO
/****** Object:  Table [dbo].[SYS_DEFAULT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SYS_DEFAULT]
GO
/****** Object:  Table [dbo].[SYS_DEFAULT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DEFAULT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYS_DEFAULT](
	[DEFAULT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HBL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[COY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COY_ADD1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COY_ADD2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COY_ADD3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COY_ADD4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CR_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_PAY_TO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_PAY_TO2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BANK_AC_CODE] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EX_AC_CODE] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INVOICE_PAY_TO3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PERIOD_START] [numeric](22, 0) NULL,
	[CASH_AC_CODE] [numeric](22, 4) NULL,
	[FIND_YEAR] [numeric](22, 0) NULL,
	[D_DATE] [datetime] NULL,
	[DATE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LOCAL_AR_ACC] [numeric](22, 4) NULL,
	[LOCAL_AP_ACC] [numeric](22, 4) NULL,
	[FORIEGN_AR_ACC] [numeric](22, 4) NULL,
	[FORIEGN_AP_ACC] [numeric](22, 4) NULL,
	[BANK_DET1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DET2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DET3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DET4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DET5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MAST_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_NAME1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_NAME2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_NAME3] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_NAME4] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_AC1] [numeric](22, 0) NULL,
	[BANK_AC2] [numeric](22, 0) NULL,
	[BANK_AC3] [numeric](22, 0) NULL,
	[BANK_AC4] [numeric](22, 0) NULL,
	[CUST_QUT_FOOT] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_QUT_HEAD] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST_HEAD] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRINT_NAME1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRINT_NAME2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RPT_TEXT] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REM1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REM2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CITY_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_TOP] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_LEFT] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AWB_TOP] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AWB_LEFT] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WORK_HR1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WORK_HR2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INVOICE_PAY_TO4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IATA_CD] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACC_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AIR_CHG_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[HBL_COY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ALERT_DAYS] [numeric](2, 0) NULL,
	[OBL_REMARKS1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBL_REMARKS2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ARR_REMARKS] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COY_DO_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[E_DOCS_COUNTRY_ID] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_FOOT8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_DECL] [varchar](350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_CERT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_CONT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_DECL] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [HAZARD_DECL2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [SOA_FOOTER] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_NAME5] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_AC5] [numeric](22, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [TAX_LABEL] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [QUICK_TRACK_URL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [ELITEINT_URL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [version] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [UEN] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [INV_FOOT9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [INV_FOOT10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [log_history] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [consolidate_invoice] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [invoice_prefix] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [IsMainEntity] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [show_invoice_footer] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [enable_cost_statement] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [link_to_YYAcctgSystem] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [chk_payable_linked_to_invoice] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [def_dom_trucker_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [chk_read_write] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [chk_custid_security] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [chk_ord_mgmt_ind] [numeric](1, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [ord_mgmt_msg] [numeric](1, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [server_ip_add] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [dbase_name] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_NAME6] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_AC6] [numeric](22, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_NAME7] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_AC7] [numeric](22, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_NAME8] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [BANK_AC8] [numeric](22, 0) NULL
ALTER TABLE [dbo].[SYS_DEFAULT] ADD [sys] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
 CONSTRAINT [PK_SYS_DEFAULT] PRIMARY KEY NONCLUSTERED 
(
	[DEFAULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SYS_DEFAULT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SYS_DEFAULT] TO [public] AS [dbo]
GO
