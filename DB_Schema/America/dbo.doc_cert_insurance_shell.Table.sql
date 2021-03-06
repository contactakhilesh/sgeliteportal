USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_cert_insurance_shell]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_cert_insurance_shell](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[indent_n] [varchar](200) NULL,
	[policy_n] [varchar](20) NULL,
	[name_assured] [varchar](50) NULL,
	[depature_dt] [datetime] NULL,
	[from_location] [varchar](50) NULL,
	[to_location] [varchar](50) NULL,
	[invoice_tot_value] [numeric](14, 3) NULL,
	[vessel] [varchar](50) NULL,
	[currency] [varchar](10) NULL,
	[apply_percentage] [varchar](2) NULL,
	[tot_cert_value] [numeric](14, 3) NULL,
	[prop_insured_line_1] [varchar](500) NULL,
	[prop_insured_line_2] [varchar](500) NULL,
	[prop_insured_line_3] [varchar](500) NULL,
	[prop_insured_line_4] [varchar](500) NULL,
	[insurance_approve_line1] [varchar](500) NULL,
	[insurance_approve_line2] [varchar](500) NULL,
	[address_1] [varchar](100) NULL,
	[address_2] [varchar](100) NULL,
	[address_3] [varchar](100) NULL,
	[address_4] [varchar](100) NULL,
	[contact_name] [varchar](100) NULL,
	[cause_text] [varchar](50) NULL,
	[telephone] [varchar](100) NULL,
	[doc_dt] [datetime] NULL,
	[print_certificate] [varchar](2) NULL,
	[consg_type] [varchar](30) NULL,
 CONSTRAINT [PK_doc_cert_insurance_shell] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_cert_insurance_shell] TO  SCHEMA OWNER 
GO
