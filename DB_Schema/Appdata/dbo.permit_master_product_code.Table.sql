USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_product_code](
	[prod_code] [varchar](35) NOT NULL,
	[hs_code] [varchar](10) NOT NULL,
	[prod_uom] [varchar](3) NULL,
	[prod_desc] [text] NULL,
	[RowID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_product_code] PRIMARY KEY CLUSTERED 
(
	[prod_code] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
