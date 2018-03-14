USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_fuel_levy_dt](
	[fuel_month] [numeric](18, 0) NOT NULL,
	[fuel_year] [numeric](18, 0) NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[price] [decimal](9, 2) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_fuel_levy_dt] PRIMARY KEY CLUSTERED 
(
	[fuel_month] ASC,
	[fuel_year] ASC,
	[from_date] ASC,
	[to_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
