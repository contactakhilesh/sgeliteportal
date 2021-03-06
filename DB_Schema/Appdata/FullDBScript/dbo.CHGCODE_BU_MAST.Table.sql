USE [appdata]
GO
/****** Object:  Index [CHGCODE_BU_MAST_idx]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP INDEX IF EXISTS [CHGCODE_BU_MAST_idx] ON [dbo].[CHGCODE_BU_MAST] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[CHGCODE_BU_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CHGCODE_BU_MAST]
GO
/****** Object:  Table [dbo].[CHGCODE_BU_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHGCODE_BU_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHGCODE_BU_MAST](
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DEPT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CHGCODE_BU_MAST] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHGCODE_BU_MAST_idx]    Script Date: 3/14/2018 6:12:00 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CHGCODE_BU_MAST]') AND name = N'CHGCODE_BU_MAST_idx')
CREATE UNIQUE CLUSTERED INDEX [CHGCODE_BU_MAST_idx] ON [dbo].[CHGCODE_BU_MAST]
(
	[CHGCODE_ID] ASC,
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
