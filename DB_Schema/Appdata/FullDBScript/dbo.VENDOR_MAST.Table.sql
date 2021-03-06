USE [appdata]
GO
/****** Object:  Trigger [trg_u_vendor]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_vendor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[VENDOR_MAST] DROP CONSTRAINT IF EXISTS [DF__VENDOR_MA__inclu__27DA89B5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[VENDOR_MAST] DROP CONSTRAINT IF EXISTS [DF__VENDOR_MA__check__4F937554]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[VENDOR_MAST] DROP CONSTRAINT IF EXISTS [DF__VENDOR_MA__allow__4CEC12D3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[VENDOR_MAST] DROP CONSTRAINT IF EXISTS [DF__VENDOR_MA__isven__334B710A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[VENDOR_MAST] DROP CONSTRAINT IF EXISTS [DF__VENDOR_MAS__flag__2D9297B4]
GO
/****** Object:  Index [IX_VEND_TYPE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_VEND_TYPE] ON [dbo].[VENDOR_MAST]
GO
/****** Object:  Index [_dta_index_VENDOR_MAST_11_667149422__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_32_]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_VENDOR_MAST_11_667149422__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_32_] ON [dbo].[VENDOR_MAST]
GO
/****** Object:  Index [_dta_index_VENDOR_MAST_11_667149422__K1_K2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_VENDOR_MAST_11_667149422__K1_K2] ON [dbo].[VENDOR_MAST]
GO
/****** Object:  Index [_dta_index_VENDOR_MAST_c_11_667149422__K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_VENDOR_MAST_c_11_667149422__K1] ON [dbo].[VENDOR_MAST] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[VENDOR_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[VENDOR_MAST]
GO
/****** Object:  Table [dbo].[VENDOR_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR_MAST](
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VENDOR_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VEND_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD1] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POSTAL_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEL1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEL2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FAX1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FAX2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_ACC_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURRENCY_ID] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST_REGISTERED_YN] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IN_THIS_CURR] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST_REG_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MAWB_CODE] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[isvendor] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETS] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UEN] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_bkg1] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_bkg2] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_bkg3] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_bkg4] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[laycan_ptc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[laycan_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sy_vendor_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[allow_dg_cargo] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[check_actual_cr] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAULIER_EMAIL] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_3] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAULIER_EMAIL_CC] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[include_in_consplrpt] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email_to_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_cc_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_confirmation_email_address] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[VENDOR_MAST] ADD [AkaVendor] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[VENDOR_MAST] ADD [mitsui_email_bkg_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [mitsui_email_bkg_cc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [mitsui_email_si_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [mitsui_email_si_cc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [sap_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [TO_ENVI] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [PAY_GRP] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [FREIGHT_AUDIT] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [REMIT_TO_SUPP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [F_PARTY_NUMBER] [numeric](20, 0) NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [F_SUPPLIER_NUMBER] [numeric](20, 0) NULL
ALTER TABLE [dbo].[VENDOR_MAST] ADD [F_SUPPLIER_SITE_NUMBER] [numeric](20, 0) NULL
 CONSTRAINT [PK_VENDOR_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VENDOR_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VENDOR_MAST] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_VENDOR_MAST_c_11_667149422__K1]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND name = N'_dta_index_VENDOR_MAST_c_11_667149422__K1')
CREATE CLUSTERED INDEX [_dta_index_VENDOR_MAST_c_11_667149422__K1] ON [dbo].[VENDOR_MAST]
(
	[VENDOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_VENDOR_MAST_11_667149422__K1_K2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND name = N'_dta_index_VENDOR_MAST_11_667149422__K1_K2')
CREATE NONCLUSTERED INDEX [_dta_index_VENDOR_MAST_11_667149422__K1_K2] ON [dbo].[VENDOR_MAST]
(
	[VENDOR_ID] ASC,
	[VENDOR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_VENDOR_MAST_11_667149422__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_32_]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND name = N'_dta_index_VENDOR_MAST_11_667149422__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_32_')
CREATE NONCLUSTERED INDEX [_dta_index_VENDOR_MAST_11_667149422__K2_1_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_32_] ON [dbo].[VENDOR_MAST]
(
	[VENDOR_NAME] ASC
)
INCLUDE ( 	[VENDOR_ID],
	[VENDOR_SHORT_NAME],
	[VEND_TYPE_ID],
	[ADD1],
	[ADD2],
	[ADD3],
	[ADD4],
	[ADD5],
	[COUNTRY_ID],
	[POSTAL_C],
	[TEL1],
	[TEL2],
	[FAX1],
	[FAX2],
	[CONTACT1],
	[CONTACT2],
	[EMAIL_1],
	[EMAIL_2],
	[CR_NO],
	[VENDOR_TYPE_SUB_ID],
	[VENDOR_ACC_ID],
	[CURRENCY_ID],
	[GST],
	[TERM_IND],
	[BANK_IND],
	[GST_REGISTERED_YN],
	[IN_THIS_CURR],
	[TERM_ID],
	[GST_REG_NO],
	[VENDOR_PORT_ID],
	[MAWB_CODE],
	[flag],
	[isvendor],
	[ETS],
	[CREATE_D],
	[CREATE_BY],
	[MODIFY_D],
	[MODIFY_BY],
	[UEN],
	[email_bkg1],
	[email_bkg2],
	[email_bkg3],
	[email_bkg4],
	[laycan_ptc],
	[laycan_tel],
	[group_id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_VEND_TYPE]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_MAST]') AND name = N'IX_VEND_TYPE')
CREATE NONCLUSTERED INDEX [IX_VEND_TYPE] ON [dbo].[VENDOR_MAST]
(
	[VEND_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
