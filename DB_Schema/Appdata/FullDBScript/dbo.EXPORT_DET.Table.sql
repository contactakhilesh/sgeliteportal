USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_DET]
GO
/****** Object:  Table [dbo].[EXPORT_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_DET](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_ON_BOARD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_ON_BOARD_D] [datetime] NULL,
	[DESC1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESC2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPRESS_BL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_LOAD_COUNT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PERMIT_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_DESC1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_DESC2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_DESC3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_DESC4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_DESC5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_A1] [numeric](11, 3) NULL,
	[FR_COLLECT_A2] [numeric](11, 3) NULL,
	[FR_COLLECT_A3] [numeric](11, 3) NULL,
	[FR_COLLECT_A4] [numeric](11, 3) NULL,
	[FR_COLLECT_A5] [numeric](11, 3) NULL,
	[FR_COLLECT_TOT] [numeric](11, 3) NOT NULL,
	[FR_COLLECT_CURRENCY] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PRINT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR2_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR3_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR4_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR5_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_CODE2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_CODE3] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_CODE4] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FR_COLLECT_CODE5] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WT_ENTRY_IND1] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND2] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND3] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND4] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND5] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FC_UNIT_A1] [numeric](11, 3) NULL,
	[FC_UNIT_A2] [numeric](11, 3) NULL,
	[FC_UNIT_A3] [numeric](11, 3) NULL,
	[FC_UNIT_A4] [numeric](11, 3) NULL,
	[FC_UNIT_A5] [numeric](11, 3) NULL,
	[FC_UNIT_QTY1] [numeric](11, 3) NULL,
	[FC_UNIT_QTY2] [numeric](11, 3) NULL,
	[FC_UNIT_QTY3] [numeric](11, 3) NULL,
	[FC_UNIT_QTY4] [numeric](11, 3) NULL,
	[FC_UNIT_QTY5] [numeric](11, 3) NULL,
	[FR_COLLECT_DESC6] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_DESC7] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_DESC8] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_DESC9] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_DESC10] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_A6] [numeric](11, 3) NULL,
	[FR_COLLECT_A7] [numeric](11, 3) NULL,
	[FR_COLLECT_A8] [numeric](11, 3) NULL,
	[FR_COLLECT_A9] [numeric](11, 3) NULL,
	[FR_COLLECT_A10] [numeric](11, 3) NULL,
	[FR6_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR7_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR8_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR9_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR10_PR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE6] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE7] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE8] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE9] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_CODE10] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND6] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND7] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND8] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND9] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_ENTRY_IND10] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FC_UNIT_A6] [numeric](11, 3) NULL,
	[FC_UNIT_A7] [numeric](11, 3) NULL,
	[FC_UNIT_A8] [numeric](11, 3) NULL,
	[FC_UNIT_A9] [numeric](11, 3) NULL,
	[FC_UNIT_A10] [numeric](11, 3) NULL,
	[FC_UNIT_QTY6] [numeric](11, 3) NULL,
	[FC_UNIT_QTY7] [numeric](11, 3) NULL,
	[FC_UNIT_QTY8] [numeric](11, 3) NULL,
	[FC_UNIT_QTY9] [numeric](11, 3) NULL,
	[FC_UNIT_QTY10] [numeric](11, 3) NULL,
 CONSTRAINT [PK_EXPORT_DE] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[TRA_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_DET] TO [public] AS [dbo]
GO
