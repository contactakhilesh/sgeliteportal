USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_RIDER_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_RIDER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[vessel] [varchar](50) NULL,
	[voyer] [varchar](50) NULL,
	[pol] [varchar](80) NULL,
	[pod] [varchar](80) NULL,
	[member_of] [varchar](50) NULL,
	[since] [varchar](50) NULL,
	[reg_no] [varchar](30) NULL,
	[tdb_cr_no] [varchar](30) NULL,
	[company_name] [varchar](100) NULL,
	[user_name] [varchar](80) NULL,
	[user_design] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_RIDER_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_RIDER_DET] TO  SCHEMA OWNER 
GO
