USE [AMERICA]
GO
/****** Object:  Table [dbo].[PRESET_NC_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRESET_NC_MAST](
	[parentacctid] [decimal](5, 0) NULL,
	[team_name] [varchar](100) NULL,
	[nc_name] [varchar](100) NULL,
	[nc_parties] [varchar](20) NULL,
	[nc_type_code] [varchar](10) NULL,
	[nc_add_desc] [varchar](1) NULL,
	[created_by] [varchar](10) NULL,
	[date_created] [datetime] NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_PRESET_NC_MAST_pid] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PRESET_NC_MAST] TO  SCHEMA OWNER 
GO
