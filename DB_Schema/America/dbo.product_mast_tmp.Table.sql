USE [AMERICA]
GO
/****** Object:  Table [dbo].[product_mast_tmp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_mast_tmp](
	[product_id] [varchar](20) NULL,
	[comp_name] [varchar](50) NULL,
	[uom] [varchar](20) NULL,
	[criterio] [numeric](10, 4) NULL,
	[coststatment_date] [datetime] NULL,
	[customs_hs_code] [varchar](50) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[prod_full_name] [varchar](255) NULL,
	[cust_id] [varchar](10) NULL,
 CONSTRAINT [pk_product_mast_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[product_mast_tmp] TO  SCHEMA OWNER 
GO
