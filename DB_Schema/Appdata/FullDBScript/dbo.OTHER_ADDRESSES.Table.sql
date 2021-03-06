USE [appdata]
GO
/****** Object:  Table [dbo].[OTHER_ADDRESSES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[OTHER_ADDRESSES]
GO
/****** Object:  Table [dbo].[OTHER_ADDRESSES]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OTHER_ADDRESSES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OTHER_ADDRESSES](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_NAME2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POSTAL_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TEL1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TEL2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EMAIL_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EMAIL_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTACT_4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_ACC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CREDIT_LIMIT_A] [decimal](11, 2) NOT NULL,
	[INV_TO_DATE_A] [decimal](11, 2) NOT NULL,
	[INV_PAID_A] [decimal](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SALESMAN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ADD1_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LIST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURR_BAL] [decimal](10, 2) NULL,
	[LOOKUP_IND] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GST_REG_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS4] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IPASS] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INAME2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IPASS2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICUST] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IACTIVE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GLB_CUST_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEPT_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BUSINESS_REG_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TDB_CR_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_LOGO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_FOOTER6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_ADD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[OTHER_ADDRESSES] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[OTHER_ADDRESSES] TO [public] AS [dbo]
GO
