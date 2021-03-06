USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_textile_code](
	[category_code] [varchar](5) NOT NULL,
	[country_code] [varchar](2) NOT NULL,
	[quota_ind] [varchar](1) NULL,
	[text_desc] [varchar](100) NULL,
	[uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_textile_code] PRIMARY KEY CLUSTERED 
(
	[category_code] ASC,
	[country_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
