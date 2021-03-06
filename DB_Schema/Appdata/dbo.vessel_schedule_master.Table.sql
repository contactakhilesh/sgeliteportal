USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vessel_schedule_master](
	[carrier_id] [varchar](10) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[lloyds_no] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[port_load] [varchar](10) NULL,
	[eta] [datetime] NULL,
	[port_disc] [varchar](10) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[etapol] [datetime] NULL,
 CONSTRAINT [PK_vessel_schedule_master] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
