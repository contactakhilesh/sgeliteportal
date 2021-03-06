USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXXONPO_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXXONPO_MAST](
	[cust_id] [varchar](10) NOT NULL,
	[consignee_ref] [varchar](40) NOT NULL,
	[po_no] [varchar](40) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[hs_code] [varchar](50) NULL,
	[unit_price] [numeric](13, 5) NULL,
	[cur_code] [varchar](5) NULL,
	[unit_price_uom] [varchar](10) NULL,
	[creation_date] [datetime] NOT NULL,
	[SO_REF_NO] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXXONPO_MAST] TO  SCHEMA OWNER 
GO
