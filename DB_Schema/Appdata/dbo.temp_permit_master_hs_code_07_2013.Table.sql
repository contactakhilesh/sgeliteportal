USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_permit_master_hs_code_07_2013](
	[hs_code] [varchar](50) NOT NULL,
	[hs_desc] [varchar](255) NULL,
	[hs_uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
