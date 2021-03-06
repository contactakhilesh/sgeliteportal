USE [AMERICA]
GO
/****** Object:  Table [dbo].[VENDOR_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDOR_MAST](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) NULL,
	[sy_vendor_id] [varchar](20) NULL,
	[allow_dg_cargo] [varchar](1) NULL,
	[check_actual_cr] [varchar](1) NULL,
	[HAULIER_EMAIL] [varchar](255) NULL,
	[EMAIL_3] [varchar](255) NULL,
	[HAULIER_EMAIL_CC] [varchar](255) NULL,
	[include_in_consplrpt] [char](1) NOT NULL,
	[email_to_name] [varchar](255) NULL,
	[email_cc_name] [varchar](255) NULL,
	[bl_confirmation_email_address] [varchar](255) NULL,
	[AkaVendor] [char](10) NULL,
	[mitsui_email_bkg_to] [varchar](255) NULL,
	[mitsui_email_bkg_cc] [varchar](255) NULL,
	[mitsui_email_si_to] [varchar](255) NULL,
	[mitsui_email_si_cc] [varchar](255) NULL,
	[sap_code] [varchar](30) NULL,
	[TO_ENVI] [varchar](10) NULL,
	[PAY_GRP] [varchar](20) NULL,
	[FREIGHT_AUDIT] [varchar](10) NULL,
	[REMIT_TO_SUPP] [varchar](10) NULL,
	[F_PARTY_NUMBER] [numeric](20, 0) NULL,
	[F_SUPPLIER_NUMBER] [numeric](20, 0) NULL,
	[F_SUPPLIER_SITE_NUMBER] [numeric](20, 0) NULL,
 CONSTRAINT [PK_VENDOR_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[VENDOR_MAST] TO  SCHEMA OWNER 
GO
