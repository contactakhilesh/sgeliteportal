USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_senders](
	[Senders_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sender_cd] [varchar](30) NOT NULL,
	[company] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Country_cd] [varchar](2) NOT NULL,
	[Country_name] [varchar](30) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Address3] [varchar](50) NULL,
	[Zip] [varchar](12) NULL,
	[Iata] [varchar](3) NULL,
	[City] [varchar](35) NULL,
	[State] [varchar](35) NULL,
	[Phone] [varchar](18) NULL,
	[mobile_fax] [varchar](18) NULL,
	[Email] [varchar](40) NULL,
	[vat_gst] [varchar](20) NULL,
	[Account_num] [varchar](12) NOT NULL,
	[tc_account] [varchar](12) NULL,
	[sender_reference] [varchar](35) NULL,
	[cost_center] [varchar](30) NULL,
	[contents_1] [varchar](30) NULL,
	[contents_2] [varchar](30) NULL,
	[contents_3] [varchar](30) NULL,
	[card_type] [varchar](15) NULL,
	[card_num] [varchar](30) NULL,
	[card_exp_dt] [datetime] NULL,
	[export_lic] [varchar](19) NULL,
	[license_exp_dt] [datetime] NULL,
	[federal_tax_id] [varchar](30) NULL,
	[state_tax_id] [varchar](19) NULL,
	[def_del_notification] [smallint] NULL,
	[sender_schedule_number] [varchar](4) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Destination_Billing] [bit] NOT NULL,
 CONSTRAINT [PK_dhl_senders] PRIMARY KEY CLUSTERED 
(
	[Senders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
