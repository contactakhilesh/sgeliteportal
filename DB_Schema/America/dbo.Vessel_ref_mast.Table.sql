USE [AMERICA]
GO
/****** Object:  Table [dbo].[Vessel_ref_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vessel_ref_mast](
	[VESSEL_REF] [numeric](10, 0) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DATE] [datetime] NULL,
	[actual_sail_d] [datetime] NULL,
	[etd] [datetime] NULL,
	[first_etd] [datetime] NULL,
	[CR_AGENT_ID] [varchar](10) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[port_load_id] [varchar](10) NULL,
	[vessel_grp] [numeric](5, 0) NULL,
	[eta_dest] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_d] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Vessel_ref_mast] TO  SCHEMA OWNER 
GO
