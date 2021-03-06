USE [appdata]
GO
/****** Object:  Table [dbo].[Vessel_ref_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Vessel_ref_mast]
GO
/****** Object:  Table [dbo].[Vessel_ref_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vessel_ref_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vessel_ref_mast](
	[VESSEL_REF] [numeric](10, 0) NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_DATE] [datetime] NULL,
	[actual_sail_d] [datetime] NULL,
	[etd] [datetime] NULL,
	[first_etd] [datetime] NULL,
	[CR_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_grp] [numeric](5, 0) NULL,
	[eta_dest] [datetime] NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_d] [datetime] NULL,
 CONSTRAINT [PK_Vessel_ref_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Vessel_ref_mast] TO  SCHEMA OWNER 
GO
