USE [appdata]
GO
/****** Object:  Index [IX_INVOICE_DET_CHG_ID3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_INVOICE_DET_CHG_ID3] ON [dbo].[DR_NOTE_DET]
GO
/****** Object:  Table [dbo].[DR_NOTE_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DR_NOTE_DET]
GO
/****** Object:  Table [dbo].[DR_NOTE_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DR_NOTE_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DR_NOTE_DET](
	[FY] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_DES1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_DES2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_DES3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_DES4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_GST_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 3) NULL,
	[LINE_CHG_UNIT] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_EX_RATE] [numeric](11, 5) NULL,
	[LINE_GST_P] [numeric](11, 3) NULL,
	[LINE_GST_A] [numeric](11, 2) NULL,
	[LINE_TOT_A] [numeric](11, 2) NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NULL,
	[LINE_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[DR_NOTE_DET] ADD [LINE_EX_RATE_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE_DET] ADD [LINE_EX_RATE_ENTRY_D] [datetime] NULL
 CONSTRAINT [PK_DR_NOTE_DET] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC,
	[INV_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DR_NOTE_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DR_NOTE_DET] TO [public] AS [dbo]
GO
/****** Object:  Index [IX_INVOICE_DET_CHG_ID3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DR_NOTE_DET]') AND name = N'IX_INVOICE_DET_CHG_ID3')
CREATE NONCLUSTERED INDEX [IX_INVOICE_DET_CHG_ID3] ON [dbo].[DR_NOTE_DET]
(
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
