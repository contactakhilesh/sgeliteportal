USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [haulier_pending](
	[group_n] [varchar](255) NOT NULL,
	[shipper_ref] [varchar](255) NOT NULL,
	[prod_no] [varchar](20) NULL,
	[qty] [varchar](10) NOT NULL,
	[shipping_point] [varchar](20) NOT NULL,
	[plant_code] [varchar](10) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[processed] [char](1) NOT NULL,
	[prod_ids] [varchar](500) NULL,
 CONSTRAINT [PK_haulier_pending] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
