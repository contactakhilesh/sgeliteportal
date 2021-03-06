USE [appdata]
GO
/****** Object:  Table [dbo].[shipper_consignee_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[shipper_consignee_master]
GO
/****** Object:  Table [dbo].[shipper_consignee_master]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shipper_consignee_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shipper_consignee_master](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEL1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FAX1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[iscustomer] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_shipper_consignee_master] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[shipper_consignee_master] TO  SCHEMA OWNER 
GO
