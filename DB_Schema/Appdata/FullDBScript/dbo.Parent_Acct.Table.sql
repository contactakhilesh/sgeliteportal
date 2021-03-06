USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__hitra__5F5EFD72]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacct__fax__5E6AD939]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__timeo__5D76B500]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__delet__5C8290C7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__enabl__5B8E6C8E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__modif__5A9A4855]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__modif__59A6241C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__creat__58B1FFE3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__creat__57BDDBAA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__expir__56C9B771]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__activ__55D59338]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__phone__54E16EFF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__postc__53ED4AC6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__addre__52F9268D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
ALTER TABLE [dbo].[Parent_Acct] DROP CONSTRAINT IF EXISTS [DF__parentacc__acctn__52050254]
GO
/****** Object:  Table [dbo].[Parent_Acct]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Parent_Acct]
GO
/****** Object:  Table [dbo].[Parent_Acct]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Acct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Parent_Acct](
	[parentacctid] [int] NOT NULL,
	[acctname] [varchar](81) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[accttype] [int] NOT NULL,
	[address] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[postcode] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[countrycode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[phone] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[activatedate] [datetime] NULL,
	[expirydate] [datetime] NULL,
	[createdby] [int] NULL,
	[createddate] [datetime] NULL,
	[modifiedby] [int] NULL,
	[modifieddate] [datetime] NULL,
	[enabled] [int] NOT NULL,
	[deleted] [int] NOT NULL,
	[logintry] [int] NOT NULL,
	[timeout] [int] NULL,
	[fax] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hitrate_freq] [int] NULL,
 CONSTRAINT [PK_Parent_Acct] PRIMARY KEY CLUSTERED 
(
	[parentacctid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Parent_Acct] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Parent_Acct] TO [public] AS [dbo]
GO
