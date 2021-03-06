USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_CUST_MAP]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_CUST_MAP](
	[seq_n] [decimal](18, 0) NOT NULL,
	[from_cust_id] [varchar](10) NULL,
	[from_cust_name] [varchar](100) NULL,
	[to_cust_id] [varchar](10) NULL,
	[to_cust_name] [varchar](100) NULL,
	[from_office_code] [varchar](10) NULL,
	[to_office_code] [varchar](10) NULL,
	[product_name] [varchar](200) NULL,
	[remarks] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_CUST_MAP] TO  SCHEMA OWNER 
GO
