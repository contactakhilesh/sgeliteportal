USE [AMERICA]
GO
/****** Object:  Table [dbo].[TRAX_ERROR_LOG]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRAX_ERROR_LOG](
	[ERR_KEY_PK] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[ERROR_ID] [numeric](10, 0) NULL,
	[ERROR_DESC] [varchar](500) NULL,
	[ERROR_DATE] [datetime] NULL,
	[ERROR_TYPE] [char](6) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TRAX_ERROR_LOG] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_TRAX_ERROR_LOG_c_5_1879677744__K5_K2]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE CLUSTERED INDEX [_dta_index_TRAX_ERROR_LOG_c_5_1879677744__K5_K2] ON [dbo].[TRAX_ERROR_LOG]
(
	[ERROR_TYPE] ASC,
	[ERROR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
