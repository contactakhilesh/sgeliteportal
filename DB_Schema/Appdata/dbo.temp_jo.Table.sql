USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_jo](
	[port_disc] [varchar](50) NULL,
	[country] [varchar](80) NULL,
	[no_of_order] [numeric](10, 0) NULL,
	[job_type] [varchar](30) NULL,
	[gross_wt] [decimal](10, 2) NULL,
	[net_wt] [decimal](10, 2) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_bulk] [numeric](10, 0) NULL,
	[freight_cot] [decimal](20, 2) NULL,
	[prod_val] [decimal](20, 2) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_temp_jo] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
