USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXXON_PGK_GUIDE_ALI]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXXON_PGK_GUIDE_ALI](
	[PROD_GRADE] [varchar](30) NULL,
	[cont_size] [numeric](3, 0) NULL,
	[pkg_type] [varchar](30) NULL,
	[net_wt] [numeric](15, 3) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXXON_PGK_GUIDE_ALI] TO  SCHEMA OWNER 
GO
