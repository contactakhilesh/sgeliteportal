USE [appdata]
GO
/****** Object:  Table [dbo].[temp_cust_plant_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_cust_plant_mast]
GO
/****** Object:  Table [dbo].[temp_cust_plant_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_cust_plant_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_cust_plant_mast](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_DESC] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_ADDRESS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_DATE] [datetime] NULL,
	[address1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tel_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[permit_email] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_cust_plant_mast] TO  SCHEMA OWNER 
GO
