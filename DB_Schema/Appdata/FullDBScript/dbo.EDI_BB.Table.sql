USE [appdata]
GO
/****** Object:  Table [dbo].[EDI_BB]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EDI_BB]
GO
/****** Object:  Table [dbo].[EDI_BB]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDI_BB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDI_BB](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REC_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MBL] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CNTR] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CSIZE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CTYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_NO] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IMPORT_REF_N] [numeric](10, 0) NULL,
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EDIBB] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EDI_BB] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EDI_BB] TO [public] AS [dbo]
GO
