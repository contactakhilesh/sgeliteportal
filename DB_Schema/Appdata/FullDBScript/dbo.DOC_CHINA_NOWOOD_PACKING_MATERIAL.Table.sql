USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] DROP CONSTRAINT IF EXISTS [DF_DOC_CHINA_NOWOOD_PACKING_MATERIAL_wood_text]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] DROP CONSTRAINT IF EXISTS [DF_DOC_CHINA_NOWOOD_PACKING_MATERIAL_emcc_letterhead]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] DROP CONSTRAINT IF EXISTS [DF_DOC_CHINA_NOWOOD_PACKING_MATERIAL_create_dt]
GO
/****** Object:  Table [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]
GO
/****** Object:  Table [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ship_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[sign_party] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[declare_clause] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_ind] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_voyage] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[req_clause] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_right] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[emcc_letterhead] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[wood_text] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_CHINA_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] TO [public] AS [dbo]
GO
