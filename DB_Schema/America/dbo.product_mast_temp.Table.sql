USE [AMERICA]
GO
/****** Object:  Table [dbo].[product_mast_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_mast_temp](
	[cust_id] [varchar](10) NOT NULL,
	[product_id] [varchar](50) NOT NULL,
	[product_name] [varchar](100) NULL,
	[hs_code] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
	[entry_d] [datetime] NULL,
	[col_1] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[comp_grp_id] [varchar](30) NULL,
	[prod_full_name] [varchar](255) NULL,
 CONSTRAINT [PK_product_mast_temp] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[product_mast_temp] TO  SCHEMA OWNER 
GO
