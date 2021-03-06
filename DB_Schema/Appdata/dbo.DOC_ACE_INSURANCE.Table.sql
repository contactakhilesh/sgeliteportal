USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_ACE_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[elite_ref_no] [varchar](50) NULL,
	[elite_hos_ref_no] [varchar](50) NULL,
	[po_no] [varchar](20) NULL,
	[insurer] [varchar](50) NULL,
	[amount_fig] [varchar](50) NULL,
	[amount_words] [varchar](500) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](400) NULL,
 CONSTRAINT [PK_DOC_ACE_INSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
