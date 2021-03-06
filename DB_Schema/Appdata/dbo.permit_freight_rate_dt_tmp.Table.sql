USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_freight_rate_dt_tmp](
	[country] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[rate20] [numeric](10, 4) NULL,
	[rate40] [numeric](10, 4) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_id] [varchar](10) NULL,
	[port_id] [varchar](10) NULL,
	[remark] [varchar](10) NULL,
 CONSTRAINT [pk_permit_freight_rate_dt_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
