USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_item_cert]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_item_cert](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[hs_code_hd] [varchar](10) NOT NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [varchar](255) NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) NULL,
	[text_desc] [varchar](255) NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) NULL,
	[invoice_n] [varchar](17) NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[hs_code] [varchar](10) NULL,
	[cont_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_item_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[hs_code_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_item_cert] TO  SCHEMA OWNER 
GO
