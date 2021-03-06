USE [appdata]
GO
/****** Object:  Table [dbo].[doc_cert_insurance_shell]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_cert_insurance_shell]
GO
/****** Object:  Table [dbo].[doc_cert_insurance_shell]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance_shell]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_cert_insurance_shell](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[indent_n] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policy_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[name_assured] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[depature_dt] [datetime] NULL,
	[from_location] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_location] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_tot_value] [numeric](14, 3) NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[apply_percentage] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_cert_value] [numeric](14, 3) NULL,
	[prop_insured_line_1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prop_insured_line_2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prop_insured_line_3] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prop_insured_line_4] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_approve_line1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_approve_line2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address_4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cause_text] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[telephone] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_dt] [datetime] NULL,
	[print_certificate] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consg_type] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_cert_insurance_shell] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_cert_insurance_shell] TO  SCHEMA OWNER 
GO
