USE [appdata]
GO
/****** Object:  Trigger [TRG_DNC_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_DNC_JOBS_UPDATED]
GO
/****** Object:  Table [dbo].[Domestic_nc_trans]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Domestic_nc_trans]
GO
/****** Object:  Table [dbo].[Domestic_nc_trans]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domestic_nc_trans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domestic_nc_trans](
	[NC_TRAN_NO] [numeric](18, 0) NOT NULL,
	[NC_LINE_NO] [numeric](18, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_JOB_N] [numeric](18, 0) NOT NULL,
	[NC_REMARKS] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
 CONSTRAINT [PK__Domestic_nc_tran__7A47FDD8] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Domestic_nc_trans] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Domestic_nc_trans] TO [public] AS [dbo]
GO
