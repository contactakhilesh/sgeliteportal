USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TAWUNIYA_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TAWUNIYA_INSURANCE]
GO
/****** Object:  Table [dbo].[DOC_TAWUNIYA_INSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TAWUNIYA_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TAWUNIYA_INSURANCE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dated_on] [datetime] NULL,
	[amount] [numeric](11, 3) NULL,
	[amount_words] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage_from] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage_to] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cover_text] [varchar](550) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claim_set_agent] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policy_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[num_of_packages] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_TAWUNIYA_INSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TAWUNIYA_INSURANCE] TO  SCHEMA OWNER 
GO
