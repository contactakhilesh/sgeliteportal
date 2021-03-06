USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ord_mgmt_activity_mast](
	[parentAcctid] [numeric](10, 0) NOT NULL,
	[business_unit] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[activity_desc] [varchar](255) NOT NULL,
	[team] [varchar](20) NULL,
	[screen_related] [numeric](10, 0) NULL,
	[details] [varchar](2000) NULL,
	[attachment_link] [varchar](1000) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[manual_update] [char](1) NULL,
	[job_type] [varchar](10) NULL,
 CONSTRAINT [PK_ord_mgmt_activity_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
