USE [appdata]
GO
/****** Object:  Index [consolidated_pl_roe_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [consolidated_pl_roe_idx1] ON [dbo].[consolidated_pl_roe]
GO
/****** Object:  Table [dbo].[consolidated_pl_roe]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[consolidated_pl_roe]
GO
/****** Object:  Table [dbo].[consolidated_pl_roe]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[consolidated_pl_roe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[consolidated_pl_roe](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rate] [numeric](11, 4) NOT NULL,
 CONSTRAINT [PK_consolidated_pl_roe] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[consolidated_pl_roe] TO  SCHEMA OWNER 
GO
/****** Object:  Index [consolidated_pl_roe_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[consolidated_pl_roe]') AND name = N'consolidated_pl_roe_idx1')
CREATE NONCLUSTERED INDEX [consolidated_pl_roe_idx1] ON [dbo].[consolidated_pl_roe]
(
	[currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
