USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [invoice_to_consolidate](
	[batch_id] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](20) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
 CONSTRAINT [PK_invoice_to_consolidate] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC,
	[user_id] ASC,
	[invoice_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
