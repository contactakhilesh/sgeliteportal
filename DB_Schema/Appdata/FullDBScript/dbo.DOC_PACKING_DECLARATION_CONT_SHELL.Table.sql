USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PACKING_DECLARATION_CONT_SHELL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACKING_DECLARATION_CONT_SHELL]
GO
/****** Object:  Table [dbo].[DOC_PACKING_DECLARATION_CONT_SHELL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_DECLARATION_CONT_SHELL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACKING_DECLARATION_CONT_SHELL](
	[doc_head_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_option] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[straw_packing] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_num] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[timber_packing] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[treatment] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[show_note] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[note] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cleanliness_declaration] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_date] [datetime] NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_DECLARATION_CONT_SHELL] TO  SCHEMA OWNER 
GO
