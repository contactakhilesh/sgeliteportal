USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_dhl_airwaybills](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybills_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_tmp_dhl_airwaybills] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
