USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_freight_rate_dt_temp](
	[country] [varchar](20) NULL,
	[destination] [varchar](30) NULL,
	[port_id] [varchar](10) NULL,
	[amt20] [numeric](10, 2) NULL,
	[amt40] [numeric](10, 2) NULL,
	[fright_perc] [numeric](10, 4) NULL,
	[insurance] [numeric](10, 4) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_id] [varchar](10) NULL,
 CONSTRAINT [pk_permit_freight_rate_dt_temp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_dt_temp] TO  SCHEMA OWNER 
GO
