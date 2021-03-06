USE [appdata]
GO
/****** Object:  Table [dbo].[xml_elc_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_elc_mast]
GO
/****** Object:  Table [dbo].[xml_elc_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_elc_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_elc_mast](
	[cust_id] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[document_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[message_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[version_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[revision_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[tag_27] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_40a] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_20] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_23] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_31c] [datetime] NULL,
	[tag_31d] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_51a] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_50] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_59] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_32b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39a] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39c] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_41a] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_42c] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_42a] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_42m] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_42p] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_43p] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_43t] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44a] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44b] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44c] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44d] [varchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_45a] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_46a] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_47a] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_71b] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_48] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_49] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_53a] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_78] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_57a] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_72] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scEnv] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_21] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_52a] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_40e] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44e] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44f] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_50b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_20_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_21_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_23_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_52a_707] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_31c_707] [datetime] NULL,
	[tag_30_707] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_26e_707] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_59_707] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_31e_707] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_32b_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_33b_707] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_34b_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39a_707] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39b_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39c_707] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44a_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44b_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44c_707] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44d_707] [varchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_79_707] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_72_707] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44e_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44f_707] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_xml_elc_mast] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[document_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_elc_mast] TO  SCHEMA OWNER 
GO
