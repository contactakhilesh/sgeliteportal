USE [AMERICA]
GO
/****** Object:  Table [dbo].[loading_summary]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loading_summary](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[tare_wt] [numeric](18, 3) NULL,
	[dnno] [varchar](20) NULL,
	[unno] [varchar](15) NULL,
	[remarks] [varchar](50) NULL,
	[shipping_name] [varchar](50) NULL,
	[shipment_no] [varchar](20) NULL,
	[portload_dt] [datetime] NULL,
	[portload_id] [varchar](20) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
	[marine_pollutant] [char](1) NOT NULL,
 CONSTRAINT [PK_loading_summary] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[loading_summary] TO  SCHEMA OWNER 
GO
