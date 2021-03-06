USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [laycan](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[ex] [varchar](10) NOT NULL,
	[per] [varchar](15) NULL,
	[surveyor] [varchar](20) NOT NULL,
	[type] [char](1) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_laycan] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
