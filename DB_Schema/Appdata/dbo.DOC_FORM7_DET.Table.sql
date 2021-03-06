USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FORM7_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[product_desc] [varchar](800) NULL,
	[batch_no] [varchar](50) NULL,
	[shipper1] [varchar](70) NULL,
	[shipper2] [varchar](70) NULL,
	[shipper3] [varchar](70) NULL,
	[shipper4] [varchar](70) NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL,
	[lc_no] [varchar](100) NULL,
	[lc_desc] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[place] [varchar](50) NULL,
	[signature_party] [varchar](200) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
 CONSTRAINT [PK_DOC_FORM7_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
