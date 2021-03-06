USE [appdata]
GO
/****** Object:  Table [dbo].[CONTAINER_VGM_Contact]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CONTAINER_VGM_Contact]
GO
/****** Object:  Table [dbo].[CONTAINER_VGM_Contact]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CONTAINER_VGM_Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CONTAINER_VGM_Contact](
	[contact_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[contact_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[contact_email] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[contact_phone] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Container_VGM_Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CONTAINER_VGM_Contact] TO  SCHEMA OWNER 
GO
