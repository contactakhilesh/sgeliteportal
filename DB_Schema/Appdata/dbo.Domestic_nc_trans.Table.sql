USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Domestic_nc_trans](
	[NC_TRAN_NO] [numeric](18, 0) NOT NULL,
	[NC_LINE_NO] [numeric](18, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_JOB_N] [numeric](18, 0) NOT NULL,
	[NC_REMARKS] [varchar](1000) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATE_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
