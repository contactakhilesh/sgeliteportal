USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_DECLARATIONAU](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[header_ind] [varchar](15) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[ind1] [varchar](5) NULL,
	[ind2] [varchar](5) NULL,
	[ind3] [varchar](5) NULL,
	[ind4] [varchar](5) NULL,
	[ind5] [varchar](5) NULL,
	[declaration] [varchar](400) NULL,
	[print_sign] [varchar](2) NULL,
	[create_dt] [datetime] NULL,
	[company_name] [varchar](200) NULL,
	[req_clause] [varchar](500) NULL,
	[note] [varchar](3000) NULL,
	[order_n] [varchar](50) NULL,
	[print_footer_right] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[bl_n] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
	[wood_treated] [varchar](500) NULL,
	[identification] [varchar](50) NULL,
	[manufacturer] [varchar](50) NULL,
	[supplier] [varchar](50) NULL,
	[booking_n] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[user_title] [varchar](100) NULL,
	[user_tel] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[show2b] [varchar](5) NULL,
	[showNote] [varchar](5) NULL,
	[barkTitle] [varchar](100) NULL,
	[showCont] [varchar](5) NULL,
	[ispm_or_iccp] [varchar](2) NULL,
	[signagent] [varchar](1) NULL,
	[ind6] [varchar](5) NULL,
 CONSTRAINT [PK_DOC_PACKING_DECLARATIONAU] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
