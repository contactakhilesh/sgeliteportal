USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_DELIVERY_ORDER_DETAILS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_DELIVERY_ORDER_DETAILS]
GO
/****** Object:  Table [dbo].[DOC_DELIVERY_ORDER_DETAILS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DELIVERY_ORDER_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_DELIVERY_ORDER_DETAILS](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_title] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[from_text] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[to_text] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[collection_period_text] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[collection_period_entry] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[lob_attn] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_attn_position] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_tel] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_fax] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_direct_line] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_mobile] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tank_fare] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_addr1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_addr2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lob_addr3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmp_prod_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmp_port_load] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmp_port_del] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_DELIVERY_ORDER_DETAILS] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_DELIVERY_ORDER_DETAILS] TO  SCHEMA OWNER 
GO
