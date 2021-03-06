USE [AMERICA]
GO
/****** Object:  Table [dbo].[dhl_receivers]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dhl_receivers](
	[receivers_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[receiver_cd] [varchar](30) NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[attention] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[address_1] [varchar](50) NULL,
	[address_2] [varchar](50) NULL,
	[address_3] [varchar](50) NULL,
	[Zip] [varchar](12) NULL,
	[Iata] [varchar](3) NULL,
	[city] [varchar](35) NULL,
	[state] [varchar](35) NULL,
	[phone] [varchar](18) NULL,
	[mobile_fax] [varchar](18) NULL,
	[email1] [varchar](40) NULL,
	[email2] [varchar](40) NULL,
	[email3] [varchar](40) NULL,
	[vat_gst] [varchar](20) NULL,
	[account] [varchar](12) NULL,
	[import_licence] [varchar](16) NULL,
	[licence_expiry] [datetime] NULL,
	[reference] [varchar](30) NULL,
	[contents_1] [varchar](30) NULL,
	[contents_2] [varchar](30) NULL,
	[contents_3] [varchar](30) NULL,
	[mail_sort_cd] [varchar](2) NULL,
	[pre_alert_email] [text] NULL,
	[email_advisory_type] [varchar](30) NULL,
	[always_send_pre_alert_flag] [bit] NULL,
	[rec_default_sender_id] [varchar](30) NULL,
	[rec_default_product_id] [numeric](18, 0) NULL,
	[rec_default_local_product_cd] [varchar](2) NULL,
	[rec_default_global_product_cd] [varchar](2) NULL,
	[rec_default_service_id] [varchar](3) NULL,
	[receiver_retention] [bit] NULL,
	[Rec_Default_Product_name] [varchar](30) NULL,
	[Rec_Default_Service_name] [varchar](50) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[federal_tax_id] [varchar](19) NULL,
	[state_tax_id] [varchar](19) NULL,
 CONSTRAINT [PK_dhl_receivers] PRIMARY KEY CLUSTERED 
(
	[receivers_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dhl_receivers] TO  SCHEMA OWNER 
GO
