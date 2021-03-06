USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_INV_CHARGES_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_INV_CHARGES_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_INV_CHARGES_DET_gst_amt]
GO
/****** Object:  Table [dbo].[DOC_INV_CHARGES_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_INV_CHARGES_DET]
GO
/****** Object:  Table [dbo].[DOC_INV_CHARGES_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_INV_CHARGES_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_INV_CHARGES_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sub_tot] [decimal](12, 3) NULL,
	[sub_tot_desc] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gst_per] [int] NULL,
	[gst_amt] [decimal](12, 3) NULL,
	[gst_desc] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[total] [decimal](12, 3) NULL,
	[price_term] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_term_country] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amt_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_term_port] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_INV_CHARGES_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_INV_CHARGES_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_INV_CHARGES_DET] TO [public] AS [dbo]
GO
