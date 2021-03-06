USE [appdata]
GO
/****** Object:  Trigger [TRG_EPC_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_EPC_JOBS_UPDATED]
GO
/****** Object:  Trigger [postupdate_audit_export_prod_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_prod_cont]
GO
/****** Object:  Trigger [postinsert_audit_export_prod_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_prod_cont]
GO
/****** Object:  Trigger [postdelete_audit_export_prod_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_prod_cont]
GO
/****** Object:  Table [dbo].[EXPORT_PROD_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_PROD_CONT]
GO
/****** Object:  Table [dbo].[EXPORT_PROD_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PROD_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_PROD_CONT](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SIZE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SELECT_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_EXP_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_PROD_CONT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_PROD_CONT] TO [public] AS [dbo]
GO
