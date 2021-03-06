USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dtl_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cost_statement_dtl_temp]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dtl_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dtl_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cost_statement_dtl_temp](
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[technical_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[per] [numeric](10, 4) NULL,
	[validity] [datetime] NULL,
	[expiry] [datetime] NULL,
	[hs_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_type] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_permit_cost_statement_dtl_temp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cost_statement_dtl_temp] TO  SCHEMA OWNER 
GO
