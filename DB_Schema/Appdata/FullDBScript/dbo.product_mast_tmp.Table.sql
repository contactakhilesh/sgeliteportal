USE [appdata]
GO
/****** Object:  Table [dbo].[product_mast_tmp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[product_mast_tmp]
GO
/****** Object:  Table [dbo].[product_mast_tmp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_mast_tmp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[product_mast_tmp](
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[uom] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[criterio] [numeric](10, 4) NULL,
	[coststatment_date] [datetime] NULL,
	[customs_hs_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[prod_full_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_product_mast_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[product_mast_tmp] TO  SCHEMA OWNER 
GO
