USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HOME_ASSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[amount] [varchar](50) NULL,
	[insurance_no] [varchar](20) NULL,
	[place] [varchar](80) NULL,
	[ins_date] [datetime] NULL,
	[comp_name] [varchar](200) NULL,
	[policy_no] [varchar](20) NULL,
	[amount_words] [varchar](500) NULL,
	[inv_ref_remarks] [varchar](100) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[bl_date] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL,
	[payable_to] [varchar](50) NULL,
	[markings1] [varchar](80) NULL,
	[markings2] [varchar](80) NULL,
	[markings3] [varchar](80) NULL,
	[markings4] [varchar](80) NULL,
	[markings5] [varchar](80) NULL,
	[remarks] [varchar](300) NULL,
 CONSTRAINT [PK_DOC_HOME_ASSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
