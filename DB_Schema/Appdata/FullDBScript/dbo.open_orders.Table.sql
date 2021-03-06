USE [appdata]
GO
/****** Object:  Table [dbo].[open_orders]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[open_orders]
GO
/****** Object:  Table [dbo].[open_orders]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[open_orders](
	[S_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[open_orders] ADD [PORT_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[open_orders] ADD [PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [VENDOR_NAME] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Entry_date] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [eta_pol] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [ETA] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Request_ship_d] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [revised_rdd] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [backlog_check] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [Booked_D] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [late_booking] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [confirm_book_d] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Estimated_sail_D] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [ATD] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [PROCESSED_DATE] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [CUT_OFF] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [HI_SENT_DATE] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [HI_cutt_off_date] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [EDI_REMARKS] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Permance_invoice_printed] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [No_Permance_invoice] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Plant_whse_roll] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [zero_insuff_stock] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Elite_Roll] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [credit_block] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [Nov_vessel_schedule] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [no_space] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [roll_vessel] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [no_equipment] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [shiping_point] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_1] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_2] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_3] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_4] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_5] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_6] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_7] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_8] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_9] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [Hi_sent_count] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [ISPROFORMAINV_PRINTED_count] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [nc_code_SOC] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [count_NC_10] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [dt_frm] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [dt_to] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [INCO_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [CR_BKG_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [booked_date_dt] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [confirm_book_date_dt] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[open_orders] ADD [REQ_SHIP_D] [datetime] NULL
ALTER TABLE [dbo].[open_orders] ADD [etd_dt] [datetime] NULL
ALTER TABLE [dbo].[open_orders] ADD [eta_dt] [datetime] NULL
ALTER TABLE [dbo].[open_orders] ADD [EXPORT_REF_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[open_orders] ADD [delivery_n] [varchar](3500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [weekday_indicator] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [vehicle_load_n] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [TOT_NET_WT] [numeric](38, 3) NULL
ALTER TABLE [dbo].[open_orders] ADD [TOT_WT] [numeric](38, 3) NULL
ALTER TABLE [dbo].[open_orders] ADD [TOT_PACKAGES] [numeric](38, 0) NULL
ALTER TABLE [dbo].[open_orders] ADD [PACKAGE_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [descripancy] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [eta_portnet] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[open_orders] ADD [eta_sg_delayed] [int] NOT NULL
ALTER TABLE [dbo].[open_orders] ADD [eta_dest] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[open_orders] TO  SCHEMA OWNER 
GO
