USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__tc_allo__2FEF161B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__Thresho__2EFAF1E2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__UsePost__2E06CDA9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__US_cert__2D12A970]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__export___2C1E8537]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__export___2B2A60FE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__invoice__2A363CC5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__terms_o__2942188C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_country] DROP CONSTRAINT IF EXISTS [DF__country__terms_o__284DF453]
GO
/****** Object:  Table [dbo].[dhl_country]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_country]
GO
/****** Object:  Table [dbo].[dhl_country]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_country](
	[country_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[terms_of_trade_reqd_flag] [bit] NOT NULL,
	[terms_of_payments_reqd_flag] [bit] NOT NULL,
	[invoice_number_reqd_flag] [bit] NOT NULL,
	[export_type_reqd_flag] [bit] NOT NULL,
	[export_reason_reqd_flag] [bit] NOT NULL,
	[US_certificate_of_origin_flag] [bit] NOT NULL,
	[currency_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[state_label] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UsePostCode_flag] [bit] NOT NULL,
	[ddp_in_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ddp_out_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ddu_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dvu_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nds_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sat_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Threshold_value] [float] NULL,
	[tc_allowed_flag] [bit] NOT NULL,
 CONSTRAINT [PK__dhl_country__2F50C2F4] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_country] TO  SCHEMA OWNER 
GO
