USE [AMERICA]
GO
/****** Object:  Table [dbo].[CUST_PLANT_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUST_PLANT_MAST](
	[CUST_ID] [varchar](10) NOT NULL,
	[PLANT_CODE] [varchar](20) NOT NULL,
	[PLANT_DESC] [varchar](255) NULL,
	[EMAIL_ADDRESS] [varchar](255) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DATE] [datetime] NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[address3] [varchar](35) NULL,
	[tel_no] [varchar](35) NULL,
	[permit_email] [varchar](255) NULL,
 CONSTRAINT [PK__CUST_PLA__85C0231619CB9629] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CUST_PLANT_MAST] TO  SCHEMA OWNER 
GO
