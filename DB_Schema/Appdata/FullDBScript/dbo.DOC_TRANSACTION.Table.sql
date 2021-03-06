USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANSACTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_TRANSACTION] DROP CONSTRAINT IF EXISTS [DF_DOC_TRANSACTION_insurance_val]
GO
/****** Object:  Table [dbo].[DOC_TRANSACTION]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANSACTION]
GO
/****** Object:  Table [dbo].[DOC_TRANSACTION]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANSACTION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANSACTION](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[load_d] [datetime] NULL,
	[cut_of_d] [datetime] NULL,
	[confirm_sail_d] [datetime] NULL,
	[doc_receive_d] [datetime] NULL,
	[bl_to_d] [datetime] NULL,
	[doc_to_bank_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[consul_to_d] [datetime] NULL,
	[inspector_to_d] [datetime] NULL,
	[us_bank_d] [datetime] NULL,
	[foreign_d] [datetime] NULL,
	[release_d] [datetime] NULL,
	[confirm_load] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sail_d] [datetime] NULL,
	[confirm_sailing] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_display_d] [datetime] NULL,
	[bl_from_d] [datetime] NULL,
	[oseas_bank_d] [datetime] NULL,
	[consul_from_d] [datetime] NULL,
	[inspector_from_d] [datetime] NULL,
	[docs_bank_d] [datetime] NULL,
	[estimated_freight] [numeric](11, 3) NULL,
	[insurance_val] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_pick_d] [datetime] NULL,
 CONSTRAINT [PK_DOC_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANSACTION] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_TRANSACTION] TO [public] AS [dbo]
GO
