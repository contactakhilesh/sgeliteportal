USE [appdata]
GO
/****** Object:  Table [dbo].[permit_item_cert]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_item_cert]
GO
/****** Object:  Table [dbo].[permit_item_cert]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_item_cert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_item_cert](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hs_code_hd] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[text_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_n] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri2] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri3] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_item_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[hs_code_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_item_cert] TO  SCHEMA OWNER 
GO
