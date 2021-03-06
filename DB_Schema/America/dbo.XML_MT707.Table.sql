USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_MT707]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_MT707](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[document_type] [varchar](50) NOT NULL,
	[message_type] [varchar](2) NOT NULL,
	[version_no] [varchar](50) NOT NULL,
	[revision_no] [varchar](50) NOT NULL,
	[document_d] [datetime] NOT NULL,
	[BankID] [varchar](50) NOT NULL,
	[ffid] [varchar](50) NOT NULL,
	[cust_id] [varchar](50) NOT NULL,
	[cust_ref_no] [varchar](50) NOT NULL,
	[bank_ref_no] [varchar](50) NOT NULL,
	[tag_20] [varchar](100) NOT NULL,
	[tag_21] [varchar](100) NOT NULL,
	[tag_23] [varchar](100) NULL,
	[tag_52a] [varchar](200) NULL,
	[tag_31c] [datetime] NULL,
	[tag_30] [varchar](50) NULL,
	[tag_26e] [varchar](50) NULL,
	[tag_59] [varchar](200) NOT NULL,
	[tag_31e] [varchar](50) NULL,
	[tag_32b] [varchar](100) NULL,
	[tag_33b] [varchar](100) NULL,
	[tag_34b] [varchar](100) NULL,
	[tag_39a] [varchar](50) NULL,
	[tag_39b] [varchar](100) NULL,
	[tag_39c] [varchar](200) NULL,
	[tag_44a] [varchar](100) NULL,
	[tag_44b] [varchar](100) NULL,
	[tag_44c] [varchar](50) NULL,
	[tag_44d] [varchar](450) NULL,
	[tag_79] [varchar](2000) NULL,
	[tag_72] [varchar](250) NULL,
	[apply_change_d] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[job_n] [varchar](50) NULL,
	[scEnv] [varchar](10) NULL,
	[lc_no_separator] [varchar](100) NULL,
	[pdf_sent_dt] [datetime] NULL,
	[tag_44e] [varchar](100) NULL,
	[tag_44f] [varchar](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_MT707] TO  SCHEMA OWNER 
GO
