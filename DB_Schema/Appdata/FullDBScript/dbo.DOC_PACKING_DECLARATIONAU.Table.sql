USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_print_address_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_print_comp_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_print_footer_left]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_print_footer_right]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_crate_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_declaration]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_ind5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_ind4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_ind3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_ind2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_ind1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_DECLARATIONAU] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_DECLARATIONAU_header_ind]
GO
/****** Object:  Table [dbo].[DOC_PACKING_DECLARATIONAU]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACKING_DECLARATIONAU]
GO
/****** Object:  Table [dbo].[DOC_PACKING_DECLARATIONAU]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATIONAU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACKING_DECLARATIONAU](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_ind] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind1] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind2] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind3] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind4] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind5] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[declaration] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_sign] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[company_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[req_clause] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[note] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_right] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[wood_treated] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[identification] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manufacturer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[supplier] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_title] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[show2b] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[showNote] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[barkTitle] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[showCont] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ispm_or_iccp] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind6] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_PACKING_DECLARATIONAU] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_DECLARATIONAU] TO  SCHEMA OWNER 
GO
