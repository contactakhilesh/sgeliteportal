USE [appdata]
GO
/****** Object:  Table [dbo].[permit_product_auto]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_product_auto]
GO
/****** Object:  Table [dbo].[permit_product_auto]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_product_auto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_product_auto](
	[CUST_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PRODUCT_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COMP_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_origin] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_permit_product_auto] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_product_auto] TO  SCHEMA OWNER 
GO
