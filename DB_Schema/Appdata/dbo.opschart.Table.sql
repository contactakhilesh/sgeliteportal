USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [opschart](
	[export_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[exim_ind] [char](1) NOT NULL,
	[status] [char](1) NULL,
	[laycan_dt] [datetime] NULL,
	[FFI] [varchar](30) NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[location_id] [varchar](5) NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[pack_type] [varchar](10) NULL,
	[create_dt] [datetime] NOT NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_opschart] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[line_n] ASC,
	[exim_ind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
