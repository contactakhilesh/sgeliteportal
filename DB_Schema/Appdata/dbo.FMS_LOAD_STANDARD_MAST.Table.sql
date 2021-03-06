USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FMS_LOAD_STANDARD_MAST](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [nchar](10) NOT NULL,
	[weight_desc] [varchar](100) NOT NULL,
	[cont_type_id] [varchar](100) NULL,
	[pallet_count] [int] NULL,
	[package_count] [numeric](9, 0) NULL,
	[package_type] [varchar](100) NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[m3] [numeric](18, 3) NULL,
 CONSTRAINT [PK_FMS_LOAD_STANDARD_MAST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
