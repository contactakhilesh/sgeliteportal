USE [appdata]
GO
/****** Object:  Table [dbo].[Domestic_nc_type_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Domestic_nc_type_mast]
GO
/****** Object:  Table [dbo].[Domestic_nc_type_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domestic_nc_type_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domestic_nc_type_mast](
	[NC_TYPE_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_CATE_DESC] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_TYPE_DESC] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_CATE_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
 CONSTRAINT [PK__Domestic_nc_type__7C30464A] PRIMARY KEY CLUSTERED 
(
	[NC_TYPE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Domestic_nc_type_mast] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Domestic_nc_type_mast] TO [public] AS [dbo]
GO
