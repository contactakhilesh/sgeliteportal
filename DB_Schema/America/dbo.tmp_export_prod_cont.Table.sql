USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_export_prod_cont]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_export_prod_cont](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[CONT_TYPE_ID] [varchar](20) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[SELECT_IND] [char](1) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_export_prod_cont] TO  SCHEMA OWNER 
GO
