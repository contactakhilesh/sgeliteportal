USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FORM3_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_FORM3_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_FORM3_DET_create_dt]
GO
/****** Object:  Table [dbo].[DOC_FORM3_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_FORM3_DET]
GO
/****** Object:  Table [dbo].[DOC_FORM3_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FORM3_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_FORM3_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[whereas_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_desc] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[batch_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[shipper2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_det] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[country_from] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_FORM3_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_FORM3_DET] TO [public] AS [dbo]
GO
