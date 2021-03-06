USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_MT700]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_MT700](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[document_type] [varchar](50) NOT NULL,
	[message_type] [varchar](2) NOT NULL,
	[version_no] [varchar](50) NOT NULL,
	[revision_no] [varchar](50) NOT NULL,
	[document_d] [datetime] NOT NULL,
	[BankID] [varchar](100) NOT NULL,
	[ffid] [varchar](100) NOT NULL,
	[cust_id] [varchar](100) NOT NULL,
	[cust_ref_no] [varchar](100) NULL,
	[bank_ref_no] [varchar](100) NOT NULL,
	[tag_27] [varchar](100) NOT NULL,
	[tag_40a] [varchar](100) NOT NULL,
	[tag_20] [varchar](100) NOT NULL,
	[tag_23] [varchar](100) NULL,
	[tag_31c] [datetime] NULL,
	[tag_31d] [varchar](100) NOT NULL,
	[tag_51a] [varchar](200) NULL,
	[tag_50] [varchar](200) NOT NULL,
	[tag_59] [varchar](200) NULL,
	[tag_32b] [varchar](100) NOT NULL,
	[tag_39a] [varchar](100) NULL,
	[tag_39b] [varchar](100) NULL,
	[tag_39c] [varchar](200) NULL,
	[tag_41a] [varchar](200) NULL,
	[tag_42c] [varchar](150) NULL,
	[tag_42a] [varchar](150) NULL,
	[tag_42m] [varchar](200) NULL,
	[tag_42p] [varchar](200) NULL,
	[tag_43p] [varchar](100) NULL,
	[tag_43t] [varchar](100) NULL,
	[tag_44a] [varchar](100) NULL,
	[tag_44b] [varchar](200) NULL,
	[tag_44c] [varchar](100) NULL,
	[tag_44d] [varchar](450) NULL,
	[tag_45a] [text] NULL,
	[tag_46a] [text] NULL,
	[tag_47a] [text] NULL,
	[tag_71b] [varchar](250) NULL,
	[tag_48] [varchar](200) NULL,
	[tag_49] [text] NULL,
	[tag_53a] [varchar](1000) NULL,
	[tag_78] [varchar](1000) NULL,
	[tag_57a] [varchar](250) NULL,
	[tag_72] [varchar](250) NULL,
	[apply_change_d] [datetime] NULL,
	[user_id] [varchar](15) NULL,
	[job_n] [varchar](15) NULL,
	[scEnv] [varchar](10) NULL,
	[tag_21] [varchar](16) NULL,
	[tag_52a] [varchar](200) NULL,
	[lc_no_separator] [varchar](100) NULL,
	[pdf_sent_dt] [datetime] NULL,
	[tag_40e] [varchar](100) NULL,
	[tag_44e] [varchar](100) NULL,
	[tag_44f] [varchar](100) NULL,
	[tag_50b] [varchar](140) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_MT700] TO  SCHEMA OWNER 
GO
