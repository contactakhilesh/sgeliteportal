USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_master](
	[parentacctid] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](3, 0) NOT NULL,
	[kpi_desc] [varchar](255) NOT NULL,
	[date1_desc] [varchar](50) NOT NULL,
	[date2_desc] [varchar](50) NOT NULL,
	[elite_kpi] [varchar](100) NULL,
	[external_kpi] [varchar](100) NULL,
	[external_party] [varchar](20) NULL,
	[remarks] [varchar](255) NULL,
 CONSTRAINT [pk_kpi_master] PRIMARY KEY CLUSTERED 
(
	[parentacctid] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
