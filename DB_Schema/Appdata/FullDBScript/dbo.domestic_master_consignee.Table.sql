USE [appdata]
GO
/****** Object:  Table [dbo].[domestic_master_consignee]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[domestic_master_consignee]
GO
/****** Object:  Table [dbo].[domestic_master_consignee]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domestic_master_consignee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domestic_master_consignee](
	[cust_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[postal_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_person] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loc_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_consignee] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_consignee] TO  SCHEMA OWNER 
GO
