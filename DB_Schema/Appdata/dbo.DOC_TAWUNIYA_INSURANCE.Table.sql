USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TAWUNIYA_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[dated_on] [datetime] NULL,
	[amount] [numeric](11, 3) NULL,
	[amount_words] [varchar](600) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[voyage_from] [varchar](200) NULL,
	[voyage_to] [varchar](200) NULL,
	[cover_text] [varchar](550) NULL,
	[claim_set_agent] [varchar](300) NULL,
	[policy_n] [varchar](50) NULL,
	[lc_no] [varchar](70) NULL,
	[num_of_packages] [varchar](50) NULL,
	[currency_id] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[signagent] [varchar](1) NULL,
	[prod_desc] [varchar](300) NULL,
 CONSTRAINT [PK_DOC_TAWUNIYA_INSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
