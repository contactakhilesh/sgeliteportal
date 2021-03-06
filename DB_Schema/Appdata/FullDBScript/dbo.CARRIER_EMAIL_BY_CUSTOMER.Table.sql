USE [appdata]
GO
/****** Object:  Table [dbo].[CARRIER_EMAIL_BY_CUSTOMER]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CARRIER_EMAIL_BY_CUSTOMER]
GO
/****** Object:  Table [dbo].[CARRIER_EMAIL_BY_CUSTOMER]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CARRIER_EMAIL_BY_CUSTOMER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CARRIER_EMAIL_BY_CUSTOMER](
	[parentAcctid] [int] NOT NULL,
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bl_confirm_toemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_confirm_ccemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[bl_chaserreminderlist] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CARRIER_EMAIL_BY_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[parentAcctid] ASC,
	[vendor_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CARRIER_EMAIL_BY_CUSTOMER] TO  SCHEMA OWNER 
GO
