USE [appdata]
GO
/****** Object:  Table [dbo].[REF_ORDER_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[REF_ORDER_DET]
GO
/****** Object:  Table [dbo].[REF_ORDER_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REF_ORDER_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REF_ORDER_DET](
	[ORDER_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[CONT_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEQ_N] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_REF_ORDER_DET] PRIMARY KEY NONCLUSTERED 
(
	[ORDER_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[REF_ORDER_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[REF_ORDER_DET] TO [public] AS [dbo]
GO
