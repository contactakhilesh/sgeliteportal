USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Carrier_Plants_Remarks](
	[port_id] [varchar](10) NULL,
	[cont_size] [varchar](10) NULL,
	[Remarks_plant] [varchar](max) NULL,
	[remarks_carrier] [varchar](max) NULL,
	[job_type] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
