USE [appdata]
GO
/****** Object:  Index [cont_type_mast_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [cont_type_mast_idx1] ON [dbo].[CONT_TYPE_MAST]
GO
/****** Object:  Table [dbo].[CONT_TYPE_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CONT_TYPE_MAST]
GO
/****** Object:  Table [dbo].[CONT_TYPE_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CONT_TYPE_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CONT_TYPE_MAST](
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE_DES] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_M3] [numeric](11, 3) NOT NULL,
	[CONT_WT] [numeric](11, 3) NOT NULL,
	[CONT_MAX_M3] [numeric](11, 3) NOT NULL,
	[CONT_MAX_WT] [numeric](11, 3) NOT NULL,
	[CONT_TEU] [numeric](1, 0) NOT NULL,
	[CONT_SIZE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[customs_cont_type] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TARE_WT] [decimal](10, 2) NULL,
 CONSTRAINT [PK_CONT_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CONT_TYPE_ID] ASC,
	[CONT_TYPE_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CONT_TYPE_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CONT_TYPE_MAST] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [cont_type_mast_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CONT_TYPE_MAST]') AND name = N'cont_type_mast_idx1')
CREATE NONCLUSTERED INDEX [cont_type_mast_idx1] ON [dbo].[CONT_TYPE_MAST]
(
	[CONT_TYPE_ID] ASC,
	[CONT_TEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
