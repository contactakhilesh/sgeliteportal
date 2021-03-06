USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_receivers]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_receivers]
GO
/****** Object:  Table [dbo].[dhl_receivers]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_receivers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_receivers](
	[receivers_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[receiver_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[state] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mobile_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vat_gst] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[account] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[import_licence] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[licence_expiry] [datetime] NULL,
	[reference] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_3] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mail_sort_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pre_alert_email] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_advisory_type] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[always_send_pre_alert_flag] [bit] NULL,
	[rec_default_sender_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rec_default_product_id] [numeric](18, 0) NULL,
	[rec_default_local_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rec_default_global_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rec_default_service_id] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_retention] [bit] NULL,
	[Rec_Default_Product_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Rec_Default_Service_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[federal_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[state_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_dhl_receivers] PRIMARY KEY CLUSTERED 
(
	[receivers_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_receivers] TO  SCHEMA OWNER 
GO
