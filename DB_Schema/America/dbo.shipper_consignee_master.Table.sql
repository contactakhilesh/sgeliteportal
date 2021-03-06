USE [AMERICA]
GO
/****** Object:  Table [dbo].[shipper_consignee_master]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipper_consignee_master](
	[cust_id] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[TEL1] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[iscustomer] [varchar](1) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_shipper_consignee_master] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[shipper_consignee_master] TO  SCHEMA OWNER 
GO
