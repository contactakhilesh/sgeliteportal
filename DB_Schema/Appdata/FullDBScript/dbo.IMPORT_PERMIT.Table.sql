USE [appdata]
GO
/****** Object:  Trigger [trg_u_import_permit]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_import_permit]
GO
/****** Object:  Trigger [trg_i_import_permit]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_import_permit]
GO
/****** Object:  Trigger [trg_d_import_permit]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_d_import_permit]
GO
/****** Object:  Table [dbo].[IMPORT_PERMIT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[IMPORT_PERMIT]
GO
/****** Object:  Table [dbo].[IMPORT_PERMIT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_PERMIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IMPORT_PERMIT](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[IMPORT_PERMIT] ADD [PERMIT_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[IMPORT_PERMIT] ADD [HBL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[IMPORT_PERMIT] ADD [QTY] [decimal](9, 3) NULL
ALTER TABLE [dbo].[IMPORT_PERMIT] ADD [WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[IMPORT_PERMIT] ADD [export_n] [numeric](10, 0) NULL
 CONSTRAINT [PK_IMP_PMT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[IMPORT_PERMIT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[IMPORT_PERMIT] TO [public] AS [dbo]
GO
