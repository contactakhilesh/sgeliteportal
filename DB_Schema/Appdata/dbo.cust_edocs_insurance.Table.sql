USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cust_edocs_insurance](
	[cust_id] [varchar](10) NOT NULL,
	[from_n] [numeric](10, 0) NOT NULL,
	[to_n] [numeric](10, 0) NOT NULL,
	[prefix] [varchar](10) NULL,
	[valid] [numeric](1, 0) NOT NULL,
	[user_id] [varchar](20) NULL,
	[entry_d] [datetime] NULL,
	[max_n] [numeric](10, 0) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parent_id] [varchar](50) NULL,
	[email_status] [int] NULL,
 CONSTRAINT [PK_cust_edocs_insurance] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
