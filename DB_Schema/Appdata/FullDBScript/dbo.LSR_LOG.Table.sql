USE [appdata]
GO
/****** Object:  Index [LSR_LOG_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [LSR_LOG_idx2] ON [dbo].[LSR_LOG]
GO
/****** Object:  Index [LSR_LOG_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [LSR_LOG_idx1] ON [dbo].[LSR_LOG] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[LSR_LOG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LSR_LOG]
GO
/****** Object:  Table [dbo].[LSR_LOG]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LSR_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LSR_LOG](
	[lsr_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_n] [numeric](12, 0) NULL,
	[freight_rate] [numeric](10, 2) NULL,
	[reason] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[process_date] [datetime] NULL,
	[complete] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LSR_LOG] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LSR_LOG_idx1]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LSR_LOG]') AND name = N'LSR_LOG_idx1')
CREATE CLUSTERED INDEX [LSR_LOG_idx1] ON [dbo].[LSR_LOG]
(
	[lsr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LSR_LOG_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LSR_LOG]') AND name = N'LSR_LOG_idx2')
CREATE UNIQUE NONCLUSTERED INDEX [LSR_LOG_idx2] ON [dbo].[LSR_LOG]
(
	[lsr_no] ASC,
	[cust_ord_no] ASC,
	[cust_id] ASC,
	[process_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
