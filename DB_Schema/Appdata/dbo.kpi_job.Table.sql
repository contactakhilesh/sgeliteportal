USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_job](
	[export_n] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](3, 0) NOT NULL,
	[stddate1] [datetime] NULL,
	[stddate2] [datetime] NULL,
	[actualdate1] [datetime] NULL,
	[actualdate2] [datetime] NULL,
	[extstddate1] [datetime] NULL,
	[extstddate2] [datetime] NULL,
	[extactualdate1] [datetime] NULL,
	[extactualdate2] [datetime] NULL,
	[process_date] [datetime] NULL,
 CONSTRAINT [pk_kpi_job] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
