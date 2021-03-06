USE [appdata]
GO
/****** Object:  Trigger [trg_update_on_inserted_send_email]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_inserted_send_email]
GO
/****** Object:  Trigger [trg_postinsert_expprod]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postinsert_expprod]
GO
/****** Object:  Trigger [trg_i_expprod]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_expprod]
GO
/****** Object:  Trigger [TRG_EP_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_EP_JOBS_UPDATED]
GO
/****** Object:  Trigger [postupdate_audit_export_prod]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_prod]
GO
/****** Object:  Trigger [postinsert_export_prod_cron_prod_name]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_export_prod_cron_prod_name]
GO
/****** Object:  Trigger [postinsert_export_prod_cron]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_export_prod_cron]
GO
/****** Object:  Trigger [postinsert_audit_export_prod]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_prod]
GO
/****** Object:  Trigger [postdelete_audit_export_prod]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_prod]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PRODUCT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_PRODUCT] DROP CONSTRAINT IF EXISTS [DF__EXPORT_PR__HD_FL__63A62650]
GO
/****** Object:  Index [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K3] ON [dbo].[EXPORT_PRODUCT]
GO
/****** Object:  Index [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K2_4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K2_4] ON [dbo].[EXPORT_PRODUCT]
GO
/****** Object:  Table [dbo].[EXPORT_PRODUCT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_PRODUCT]
GO
/****** Object:  Table [dbo].[EXPORT_PRODUCT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PRODUCT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_PRODUCT](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_DESC] [varchar](2500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HARMONIZE_CODE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIT_PRICE] [numeric](13, 5) NULL,
	[UNIT_PRICE_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ORIGIN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MANU_ADDR_CODE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_of_pallets] [numeric](10, 0) NULL,
	[net_wt_pallet] [decimal](12, 3) NULL,
	[gross_wt_pallet] [decimal](12, 3) NULL,
	[create_prod_dt] [datetime] NULL,
	[plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[grade] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[suffix] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustPackCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_dt] [datetime] NULL,
	[customs_fob_value] [numeric](21, 3) NULL,
	[source_po] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[source_so] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total_Net_Price] [decimal](12, 2) NULL,
	[IEC_CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EXPORT_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_PRODUCT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_PRODUCT] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K2_4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PRODUCT]') AND name = N'_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K2_4')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K2_4] ON [dbo].[EXPORT_PRODUCT]
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC
)
INCLUDE ( 	[PROD_NAME]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PRODUCT]') AND name = N'_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K3')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_PRODUCT_11_1675153013__K1_K3] ON [dbo].[EXPORT_PRODUCT]
(
	[PROD_EXPORT_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
