USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master_temp](
	[carrier_id] [varchar](10) NULL,
	[carrier_name] [varchar](50) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](100) NULL,
	[country_name] [varchar](100) NULL,
	[cont_size] [varchar](10) NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_carrier_nominated_master_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
