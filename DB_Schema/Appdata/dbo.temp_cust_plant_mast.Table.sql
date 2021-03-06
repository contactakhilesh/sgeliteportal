USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_cust_plant_mast](
	[CUST_ID] [varchar](10) NULL,
	[PLANT_CODE] [varchar](20) NULL,
	[PLANT_DESC] [varchar](255) NULL,
	[EMAIL_ADDRESS] [varchar](100) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DATE] [datetime] NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[address3] [varchar](35) NULL,
	[tel_no] [varchar](35) NULL,
	[permit_email] [varchar](255) NULL
) ON [PRIMARY]

GO
