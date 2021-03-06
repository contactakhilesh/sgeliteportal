USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [outstanding_gi_jobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[export_ref_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NULL,
	[assign_to_user] [varchar](50) NULL,
	[gi_chemical_d] [datetime] NULL,
	[etd] [datetime] NOT NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]

GO
