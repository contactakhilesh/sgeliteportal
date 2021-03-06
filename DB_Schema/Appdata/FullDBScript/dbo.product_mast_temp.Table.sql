USE [appdata]
GO
/****** Object:  Table [dbo].[product_mast_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[product_mast_temp]
GO
/****** Object:  Table [dbo].[product_mast_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_mast_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[product_mast_temp](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[product_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[product_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
	[col_1] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[comp_grp_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_full_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_product_mast_temp] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[product_mast_temp] TO  SCHEMA OWNER 
GO
