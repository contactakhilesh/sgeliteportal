USE [AMERICA]
GO
/****** Object:  Table [dbo].[Domestic_nc_type_mast]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domestic_nc_type_mast](
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_DESC] [varchar](100) NULL,
	[NC_TYPE_DESC] [varchar](100) NOT NULL,
	[NC_CATE_CODE] [varchar](10) NULL,
	[USER_ID] [varchar](20) NULL,
	[CREATE_D] [datetime] NULL,
 CONSTRAINT [PK__Domestic_nc_type__43E1002F] PRIMARY KEY CLUSTERED 
(
	[NC_TYPE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Domestic_nc_type_mast] TO  SCHEMA OWNER 
GO
