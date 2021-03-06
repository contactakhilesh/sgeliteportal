USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_product_code]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_product_code]
GO
/****** Object:  Table [dbo].[permit_master_product_code]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_product_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_product_code](
	[prod_code] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hs_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[prod_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_product_code] PRIMARY KEY CLUSTERED 
(
	[prod_code] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_product_code] TO  SCHEMA OWNER 
GO
