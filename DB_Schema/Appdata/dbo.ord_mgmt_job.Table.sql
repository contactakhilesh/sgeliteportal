USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ord_mgmt_job](
	[export_n] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[status] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
	[created_dt] [datetime] NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parentAcctid] [numeric](10, 0) NULL,
	[business_unit] [numeric](10, 0) NULL,
 CONSTRAINT [PK_ord_ord_mgmt_job] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
