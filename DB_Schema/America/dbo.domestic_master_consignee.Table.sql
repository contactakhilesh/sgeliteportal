USE [AMERICA]
GO
/****** Object:  Table [dbo].[domestic_master_consignee]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domestic_master_consignee](
	[cust_id] [varchar](50) NOT NULL,
	[name] [varchar](70) NOT NULL,
	[add1] [varchar](70) NULL,
	[add2] [varchar](70) NULL,
	[add3] [varchar](70) NULL,
	[add4] [varchar](70) NULL,
	[add5] [varchar](70) NULL,
	[ship_code] [varchar](10) NULL,
	[postal_code] [varchar](10) NULL,
	[contact_person] [varchar](70) NULL,
	[contact_no] [varchar](50) NULL,
	[loc_code] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_consignee] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_consignee] TO  SCHEMA OWNER 
GO
