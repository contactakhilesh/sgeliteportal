USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_RATES] DROP CONSTRAINT IF EXISTS [FK_CUSTOMER_REF_4126_CHGCODE_]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_RATES] DROP CONSTRAINT IF EXISTS [FK_CUSTOMER_REF_4123_PORT_MAS]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_RATES]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_RATES](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AUTO_BILL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONSIGNEE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_GST] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEQ_N] [numeric](11, 0) NULL,
 CONSTRAINT [PK_CUSTOMER_RATES] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_ID] ASC,
	[CHGCODE_ID] ASC,
	[TRA_TYPE] ASC,
	[PORT_LOAD_ID] ASC,
	[CONTRACT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_RATES] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUSTOMER_RATES] TO [public] AS [dbo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CUSTOMER_REF_4123_PORT_MAS]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]'))
ALTER TABLE [dbo].[CUSTOMER_RATES]  WITH NOCHECK ADD  CONSTRAINT [FK_CUSTOMER_REF_4123_PORT_MAS] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[PORT_MAST] ([PORT_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CUSTOMER_REF_4123_PORT_MAS]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]'))
ALTER TABLE [dbo].[CUSTOMER_RATES] CHECK CONSTRAINT [FK_CUSTOMER_REF_4123_PORT_MAS]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CUSTOMER_REF_4126_CHGCODE_]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]'))
ALTER TABLE [dbo].[CUSTOMER_RATES]  WITH NOCHECK ADD  CONSTRAINT [FK_CUSTOMER_REF_4126_CHGCODE_] FOREIGN KEY([CHGCODE_ID])
REFERENCES [dbo].[CHGCODE_MAST] ([CHGCODE_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CUSTOMER_REF_4126_CHGCODE_]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES]'))
ALTER TABLE [dbo].[CUSTOMER_RATES] CHECK CONSTRAINT [FK_CUSTOMER_REF_4126_CHGCODE_]
GO
