USE [AMERICA]
GO
/****** Object:  Table [dbo].[LSR_LOG]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSR_LOG](
	[lsr_no] [varchar](50) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[cust_id] [varchar](10) NULL,
	[invoice_n] [numeric](12, 0) NULL,
	[freight_rate] [numeric](10, 2) NULL,
	[reason] [varchar](50) NULL,
	[process_date] [datetime] NULL,
	[complete] [varchar](1) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[LSR_LOG] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LSR_LOG_idx1]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE CLUSTERED INDEX [LSR_LOG_idx1] ON [dbo].[LSR_LOG]
(
	[lsr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LSR_LOG_idx2]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LSR_LOG_idx2] ON [dbo].[LSR_LOG]
(
	[lsr_no] ASC,
	[cust_ord_no] ASC,
	[cust_id] ASC,
	[process_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
