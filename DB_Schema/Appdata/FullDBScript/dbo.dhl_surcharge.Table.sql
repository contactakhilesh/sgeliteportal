USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_surcharge]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_surcharge] DROP CONSTRAINT IF EXISTS [DF_dhl_surcharge_amount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_surcharge]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_surcharge] DROP CONSTRAINT IF EXISTS [DF_dhl_surcharge_basis]
GO
/****** Object:  Index [dhl_surcharge_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [dhl_surcharge_idx1] ON [dbo].[dhl_surcharge]
GO
/****** Object:  Table [dbo].[dhl_surcharge]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_surcharge]
GO
/****** Object:  Table [dbo].[dhl_surcharge]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_surcharge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_surcharge](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[basis] [bit] NOT NULL,
	[percentage] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dhl_surcharge] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_surcharge] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [dhl_surcharge_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[dhl_surcharge]') AND name = N'dhl_surcharge_idx1')
CREATE UNIQUE NONCLUSTERED INDEX [dhl_surcharge_idx1] ON [dbo].[dhl_surcharge]
(
	[country_cd] ASC,
	[chgcode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
