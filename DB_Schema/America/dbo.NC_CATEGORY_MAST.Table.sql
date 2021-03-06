USE [AMERICA]
GO
/****** Object:  Table [dbo].[NC_CATEGORY_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NC_CATEGORY_MAST](
	[NC_CATE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_DESC] [varchar](100) NOT NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) NULL,
 CONSTRAINT [NC_CATEG_PK] PRIMARY KEY CLUSTERED 
(
	[NC_CATE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[NC_CATEGORY_MAST] TO  SCHEMA OWNER 
GO
