USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Domestic_Province_Transit_Time](
	[province] [varchar](100) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[time_scale] [varchar](50) NULL,
	[transit_time] [decimal](18, 0) NULL,
	[remarks] [varchar](200) NULL,
	[created_by] [char](20) NULL,
	[created_d] [datetime] NULL,
	[modified_by] [char](20) NULL,
	[modified_d] [datetime] NULL,
	[port_code] [varchar](10) NULL,
	[port_desc] [varchar](100) NULL
) ON [PRIMARY]

GO
