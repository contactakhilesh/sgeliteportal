USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice_to_consolidate]') AND type in (N'U'))
ALTER TABLE [dbo].[invoice_to_consolidate] DROP CONSTRAINT IF EXISTS [DF_invoice_to_consolidate_created_dt]
GO
/****** Object:  Table [dbo].[invoice_to_consolidate]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[invoice_to_consolidate]
GO
/****** Object:  Table [dbo].[invoice_to_consolidate]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice_to_consolidate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[invoice_to_consolidate](
	[batch_id] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_invoice_to_consolidate] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC,
	[user_id] ASC,
	[invoice_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[invoice_to_consolidate] TO  SCHEMA OWNER 
GO
