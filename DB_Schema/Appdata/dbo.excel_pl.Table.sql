USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[mod_id] [varchar](10) NULL,
	[mod_dt] [datetime] NULL,
	[crt_id] [varchar](10) NULL,
	[crt_dt] [datetime] NOT NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) NULL,
	[cust_ord_no] [varchar](100) NULL,
	[po_no] [varchar](100) NULL,
	[etd] [varchar](30) NULL,
	[pod] [varchar](500) NULL,
	[remarks] [varchar](max) NULL,
 CONSTRAINT [PK_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
