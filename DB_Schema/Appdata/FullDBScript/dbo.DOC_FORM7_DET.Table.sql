USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FORM7_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_FORM7_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_FORM7_DET_place]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FORM7_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_FORM7_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_FORM7_DET_create_dt]
GO
/****** Object:  Table [dbo].[DOC_FORM7_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_FORM7_DET]
GO
/****** Object:  Table [dbo].[DOC_FORM7_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FORM7_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_FORM7_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_desc] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[batch_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[country_from] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_desc] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[place] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signature_party] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_FORM7_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_FORM7_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_FORM7_DET] TO [public] AS [dbo]
GO
