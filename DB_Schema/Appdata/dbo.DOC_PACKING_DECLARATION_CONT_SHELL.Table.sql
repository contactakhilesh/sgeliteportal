USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_DECLARATION_CONT_SHELL](
	[doc_head_no] [varchar](50) NULL,
	[title] [varchar](200) NULL,
	[header_option] [varchar](50) NULL,
	[straw_packing] [varchar](5) NULL,
	[cont_num] [varchar](50) NULL,
	[timber_packing] [varchar](5) NULL,
	[treatment] [varchar](5) NULL,
	[show_note] [varchar](5) NULL,
	[note] [varchar](1000) NULL,
	[cleanliness_declaration] [varchar](1000) NULL,
	[created_date] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[print_comp_logo] [varchar](5) NULL,
	[print_address_logo] [varchar](5) NULL
) ON [PRIMARY]

GO
