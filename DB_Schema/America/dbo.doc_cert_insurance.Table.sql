USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_cert_insurance]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_cert_insurance](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[cert_n] [varchar](20) NULL,
	[policy_n] [varchar](20) NULL,
	[premium_amt] [decimal](12, 3) NULL,
	[premium_rate] [decimal](12, 3) NULL,
	[premium_date] [datetime] NULL,
	[premium_place] [varchar](50) NULL,
	[header_ind] [varchar](15) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[port_of_load] [varchar](40) NULL,
	[port_of_discharge] [varchar](40) NULL,
	[product_desc] [varchar](500) NULL,
	[num_of_packages] [varchar](30) NULL,
	[cover_text] [varchar](550) NULL,
	[insured_amt] [decimal](12, 2) NULL,
	[insured_value] [decimal](12, 2) NULL,
	[currency_id] [varchar](5) NULL,
	[assured] [varchar](255) NULL,
	[marks_and_num] [varchar](600) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[user_id] [varchar](50) NULL,
	[cause_text] [varchar](50) NULL,
	[port_rec_name] [varchar](40) NULL,
	[port_del_name] [varchar](40) NULL,
	[duplicate_ind] [varchar](2) NULL,
	[fin_dest] [varchar](50) NULL,
	[certagent] [varchar](1) NULL,
	[signagent] [varchar](1) NULL,
	[po_no] [varchar](255) NULL,
	[print_po] [varchar](2) NULL,
	[type] [int] NULL,
	[lc_issuing_bank] [varchar](500) NULL,
	[print_lc_issuing_bank] [varchar](2) NULL,
	[lc_dated] [datetime] NULL,
	[print_lc_dated] [varchar](2) NULL,
 CONSTRAINT [PK_doc_cert_insurance] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_cert_insurance] TO  SCHEMA OWNER 
GO
