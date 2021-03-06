USE [appdata]
GO
/****** Object:  Trigger [trg_i_gl_entry]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_gl_entry]
GO
/****** Object:  Trigger [postupdate_gl_entry]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_gl_entry]
GO
/****** Object:  Trigger [postdelete_gl_entry]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_gl_entry]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[GL_ENTRY] DROP CONSTRAINT IF EXISTS [DF__GL_ENTRY__IsExpo__4FFD89A8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[GL_ENTRY] DROP CONSTRAINT IF EXISTS [DF__GL_ENTRY__AC_ACT__131E989A]
GO
/****** Object:  Index [GL_X4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_X4] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [GL_X3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_X3] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [GL_X2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_X2] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [GL_X1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [GL_X1] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [gl_entry_idx8]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [gl_entry_idx8] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [gl_entry_idx7]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [gl_entry_idx7] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [gl_entry_idx6]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [gl_entry_idx6] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Index [gl_entry_idx5]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [gl_entry_idx5] ON [dbo].[GL_ENTRY]
GO
/****** Object:  Table [dbo].[GL_ENTRY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[GL_ENTRY]
GO
/****** Object:  Table [dbo].[GL_ENTRY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GL_ENTRY](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[POST_TRANS_NO] [numeric](10, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AR_AP_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_SOURCE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[DOC_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[POST_DT] [datetime] NULL,
	[DOC_DT] [datetime] NULL,
	[PARTY_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DT] [datetime] NULL,
	[CHQ_DT] [datetime] NULL,
	[REMARKS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NET] [numeric](15, 2) NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REV_TRANS_NO] [numeric](10, 0) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[GL_ENTRY] ADD [AC_ACTIVE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[GL_ENTRY] ADD [yy_invoice_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[GL_ENTRY] ADD [yy_invoice_dt] [datetime] NULL
ALTER TABLE [dbo].[GL_ENTRY] ADD [IsExportedToYY] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[GL_ENTRY] ADD [GLFileName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[GL_ENTRY] ADD [cost_centre_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_GL_ENTRY] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[GL_ENTRY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[GL_ENTRY] TO [public] AS [dbo]
GO
/****** Object:  Index [gl_entry_idx5]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'gl_entry_idx5')
CREATE NONCLUSTERED INDEX [gl_entry_idx5] ON [dbo].[GL_ENTRY]
(
	[POST_TRANS_NO] ASC,
	[DOC_NO] ASC,
	[DOC_TYPE] ASC,
	[AC_YEAR] ASC,
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [gl_entry_idx6]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'gl_entry_idx6')
CREATE NONCLUSTERED INDEX [gl_entry_idx6] ON [dbo].[GL_ENTRY]
(
	[REV_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [gl_entry_idx7]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'gl_entry_idx7')
CREATE NONCLUSTERED INDEX [gl_entry_idx7] ON [dbo].[GL_ENTRY]
(
	[GL_TRANS_NO] ASC,
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [gl_entry_idx8]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'gl_entry_idx8')
CREATE NONCLUSTERED INDEX [gl_entry_idx8] ON [dbo].[GL_ENTRY]
(
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_X1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'GL_X1')
CREATE NONCLUSTERED INDEX [GL_X1] ON [dbo].[GL_ENTRY]
(
	[DOC_NO] ASC,
	[GL_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_X2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'GL_X2')
CREATE NONCLUSTERED INDEX [GL_X2] ON [dbo].[GL_ENTRY]
(
	[AC_YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_X3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'GL_X3')
CREATE NONCLUSTERED INDEX [GL_X3] ON [dbo].[GL_ENTRY]
(
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [GL_X4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GL_ENTRY]') AND name = N'GL_X4')
CREATE NONCLUSTERED INDEX [GL_X4] ON [dbo].[GL_ENTRY]
(
	[AC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
