USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) NULL,
	[cust_ord_no] [varchar](100) NULL,
	[po_no] [varchar](100) NULL,
	[etd] [varchar](30) NULL,
	[pod] [varchar](500) NULL,
 CONSTRAINT [PK_tmp_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
