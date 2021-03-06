USE [appdata]
GO
/****** Object:  Table [dbo].[carrier_nominated_master_temp]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_nominated_master_temp]
GO
/****** Object:  Table [dbo].[carrier_nominated_master_temp]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_nominated_master_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_nominated_master_temp](
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_carrier_nominated_master_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_nominated_master_temp] TO  SCHEMA OWNER 
GO
