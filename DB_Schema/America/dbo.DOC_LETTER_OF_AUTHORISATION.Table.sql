USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_LETTER_OF_AUTHORISATION]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[top_address1] [varchar](80) NULL,
	[top_address2] [varchar](80) NULL,
	[top_address3] [varchar](80) NULL,
	[top_address4] [varchar](80) NULL,
	[top_address5] [varchar](80) NULL,
	[authorise_name] [varchar](100) NULL,
	[ic_no] [varchar](50) NULL,
	[user_name] [varchar](80) NULL,
	[user_desig] [varchar](80) NULL,
	[create_dt] [datetime] NULL,
	[ref_no] [varchar](80) NULL,
	[certificate_no1] [varchar](50) NULL,
	[certificate_no2] [varchar](50) NULL,
	[certificate_no3] [varchar](50) NULL,
	[certificate_no4] [varchar](50) NULL,
	[certificate_no5] [varchar](50) NULL,
	[hs_code1] [varchar](50) NULL,
	[hs_code2] [varchar](50) NULL,
	[hs_code3] [varchar](50) NULL,
	[hs_code4] [varchar](50) NULL,
	[hs_code5] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_LETTER_OF_AUTHORISATION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_LETTER_OF_AUTHORISATION] TO  SCHEMA OWNER 
GO
