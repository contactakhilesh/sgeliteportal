USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_senders]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_senders] DROP CONSTRAINT IF EXISTS [DF_senders_Destination_Billing]
GO
/****** Object:  Table [dbo].[dhl_senders]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_senders]
GO
/****** Object:  Table [dbo].[dhl_senders]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_senders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_senders](
	[Senders_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sender_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mobile_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vat_gst] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_num] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tc_account] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_reference] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cost_center] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents_3] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_type] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_num] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_exp_dt] [datetime] NULL,
	[export_lic] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[license_exp_dt] [datetime] NULL,
	[federal_tax_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[state_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[def_del_notification] [smallint] NULL,
	[sender_schedule_number] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Destination_Billing] [bit] NOT NULL,
 CONSTRAINT [PK_dhl_senders] PRIMARY KEY CLUSTERED 
(
	[Senders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_senders] TO  SCHEMA OWNER 
GO
