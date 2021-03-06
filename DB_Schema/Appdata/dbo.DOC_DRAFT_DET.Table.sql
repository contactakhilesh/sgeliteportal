USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_DRAFT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[tenor] [varchar](150) NULL,
	[payable_to] [varchar](500) NULL,
	[amount] [varchar](50) NULL,
	[amount_words] [varchar](500) NULL,
	[drawn_on] [varchar](500) NULL,
	[drawer_name] [varchar](200) NULL,
	[invoice_no] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[elite_ref] [varchar](50) NULL,
	[currency_id] [varchar](10) NULL,
	[msg1] [varchar](500) NULL,
	[msg2] [varchar](10) NULL,
	[place_drawing] [varchar](50) NULL,
	[draft_n] [varchar](100) NULL,
	[user_id] [varchar](50) NULL,
	[signagent] [varchar](1) NULL,
	[issuing_bank] [varchar](200) NULL,
	[drawee_name] [varchar](200) NULL
) ON [PRIMARY]

GO
