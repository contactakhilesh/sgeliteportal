USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [consolidated_inv_error](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[error_desc] [varchar](200) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[source] [varchar](5) NOT NULL
) ON [PRIMARY]

GO
