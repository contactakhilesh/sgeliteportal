USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mapol_mast](
	[prod_id] [varchar](80) NOT NULL,
	[desc1] [varchar](50) NULL,
	[desc2] [varchar](50) NULL,
	[desc3] [varchar](50) NULL,
	[desc4] [varchar](50) NULL,
	[desc5] [varchar](50) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_mapol_mast] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
