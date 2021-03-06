USE [appdata]
GO
/****** Object:  Table [dbo].[doc_inv_sabic_calculate]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_inv_sabic_calculate]
GO
/****** Object:  Table [dbo].[doc_inv_sabic_calculate]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_inv_sabic_calculate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_inv_sabic_calculate](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_no] [numeric](10, 0) NOT NULL,
	[net_wt] [decimal](18, 3) NULL,
	[price] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_doc_inv_sabic_calculate] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_inv_sabic_calculate] TO  SCHEMA OWNER 
GO
