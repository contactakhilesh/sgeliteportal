USE [appdata]
GO
/****** Object:  Index [GL_Y4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_Y4] ON [dbo].[GL_ENTRY_DET]
GO
/****** Object:  Index [GL_Y3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_Y3] ON [dbo].[GL_ENTRY_DET]
GO
/****** Object:  Index [GL_Y2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_Y2] ON [dbo].[GL_ENTRY_DET]
GO
/****** Object:  Index [GL_Y1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_Y1] ON [dbo].[GL_ENTRY_DET]
GO
/****** Object:  Table [dbo].[GL_ENTRY_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[GL_ENTRY_DET]
GO
/****** Object:  Table [dbo].[GL_ENTRY_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GL_ENTRY_DET](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[GL_LINE_NO] [numeric](4, 0) NOT NULL,
	[AC_SOURCE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[DOC_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_DT] [datetime] NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[PARTY_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AR_AP_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NET] [numeric](15, 2) NULL,
	[PAID_DOC] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAID_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_DT] [datetime] NULL,
	[GST_TYPE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PERSON_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_GL_ENTRY_DET] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC,
	[GL_LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[GL_ENTRY_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[GL_ENTRY_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [GL_Y1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY_DET]') AND name = N'GL_Y1')
CREATE NONCLUSTERED INDEX [GL_Y1] ON [dbo].[GL_ENTRY_DET]
(
	[DOC_NO] ASC,
	[GL_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_Y2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY_DET]') AND name = N'GL_Y2')
CREATE NONCLUSTERED INDEX [GL_Y2] ON [dbo].[GL_ENTRY_DET]
(
	[AC_YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_Y3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY_DET]') AND name = N'GL_Y3')
CREATE NONCLUSTERED INDEX [GL_Y3] ON [dbo].[GL_ENTRY_DET]
(
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_Y4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY_DET]') AND name = N'GL_Y4')
CREATE NONCLUSTERED INDEX [GL_Y4] ON [dbo].[GL_ENTRY_DET]
(
	[AC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
