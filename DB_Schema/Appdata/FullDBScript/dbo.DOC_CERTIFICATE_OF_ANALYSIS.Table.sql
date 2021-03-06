USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_CERTIFICATE_OF_ANALYSIS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_CERTIFICATE_OF_ANALYSIS]
GO
/****** Object:  Table [dbo].[DOC_CERTIFICATE_OF_ANALYSIS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CERTIFICATE_OF_ANALYSIS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_CERTIFICATE_OF_ANALYSIS](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[material_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[material_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[material_n_bulk] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[spec_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid_from] [datetime] NULL,
	[spec_title] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_note_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_d] [datetime] NULL,
	[shipment] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[container_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[control_lot_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_d] [datetime] NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_sign] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[body_text] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_right] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_option_ind] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_CERTIFICATE_OF_ANALYSIS] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_CERTIFICATE_OF_ANALYSIS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_CERTIFICATE_OF_ANALYSIS] TO [public] AS [dbo]
GO
