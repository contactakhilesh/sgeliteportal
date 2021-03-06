USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_CARRIER_ALLOCATION](
	[region] [varchar](10) NULL,
	[origin] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[icd] [varchar](50) NULL,
	[cont_size] [int] NULL,
	[lane_grouping] [varchar](50) NULL,
	[bidder] [varchar](50) NULL,
	[flexibag] [char](10) NULL,
	[number_of_transhipment] [int] NULL,
	[transit_time] [int] NULL,
	[allocation_percentage] [numeric](9, 0) NULL,
	[allocation_in_cont] [numeric](9, 0) NULL,
	[allocation_in_teu] [numeric](9, 0) NULL,
	[spend_cost] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
