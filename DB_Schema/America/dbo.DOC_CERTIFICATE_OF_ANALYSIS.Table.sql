USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_CERTIFICATE_OF_ANALYSIS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_CERTIFICATE_OF_ANALYSIS](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[material_name] [varchar](50) NULL,
	[material_n] [varchar](50) NULL,
	[material_n_bulk] [varchar](50) NULL,
	[spec_n] [varchar](50) NULL,
	[valid_from] [datetime] NULL,
	[spec_title] [varchar](50) NULL,
	[cust_n] [varchar](50) NULL,
	[order_n] [varchar](50) NULL,
	[delivery_note_n] [varchar](50) NULL,
	[delivery_d] [datetime] NULL,
	[shipment] [varchar](50) NULL,
	[qty] [varchar](50) NULL,
	[cust_ord_n] [varchar](50) NULL,
	[container_n] [varchar](50) NULL,
	[control_lot_n] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[cert_n] [varchar](20) NULL,
	[cert_d] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[print_sign] [varchar](2) NULL,
	[body_text] [varchar](2000) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[header_option_ind] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_CERTIFICATE_OF_ANALYSIS] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_CERTIFICATE_OF_ANALYSIS] TO  SCHEMA OWNER 
GO
