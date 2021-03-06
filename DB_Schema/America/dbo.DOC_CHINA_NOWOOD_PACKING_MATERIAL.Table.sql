USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) NOT NULL,
	[ship_ref] [varchar](50) NULL,
	[create_dt] [datetime] NULL,
	[sign_party] [varchar](80) NULL,
	[declare_clause] [varchar](1000) NULL,
	[title] [varchar](200) NULL,
	[header_ind] [varchar](20) NULL,
	[lc_no] [varchar](2000) NULL,
	[contract_no] [varchar](50) NULL,
	[vessel_voyage] [varchar](80) NULL,
	[po_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[req_clause] [varchar](500) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[emcc_letterhead] [varchar](2) NULL,
	[wood_text] [varchar](500) NULL,
	[signagent] [varchar](1) NULL,
 CONSTRAINT [PK_DOC_CHINA_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_CHINA_NOWOOD_PACKING_MATERIAL] TO  SCHEMA OWNER 
GO
