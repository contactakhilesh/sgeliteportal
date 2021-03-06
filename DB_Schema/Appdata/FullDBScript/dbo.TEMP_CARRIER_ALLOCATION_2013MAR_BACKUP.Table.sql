USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP]
GO
/****** Object:  Table [dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP](
	[region] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[icd] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_size] [int] NULL,
	[lane_grouping] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bidder] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[flexibag] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[number_of_transhipment] [int] NULL,
	[transit_time] [int] NULL,
	[allocation_percentage] [numeric](9, 0) NULL,
	[allocation_in_cont] [numeric](9, 0) NULL,
	[allocation_in_teu] [numeric](9, 0) NULL,
	[spend_cost] [numeric](10, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_CARRIER_ALLOCATION_2013MAR_BACKUP] TO  SCHEMA OWNER 
GO
