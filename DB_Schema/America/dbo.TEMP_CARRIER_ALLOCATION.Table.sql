USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_CARRIER_ALLOCATION]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_CARRIER_ALLOCATION](
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
	[allocation_percentage] [numeric](4, 0) NULL,
	[allocation_in_cont] [numeric](4, 0) NULL,
	[allocation_in_teu] [numeric](4, 0) NULL,
	[spend_cost] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_CARRIER_ALLOCATION] TO  SCHEMA OWNER 
GO
