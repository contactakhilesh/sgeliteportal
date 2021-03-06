USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_SEND_US_QUEUE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_SEND_US_QUEUE](
	[doc_queue_no] [numeric](18, 0) NOT NULL,
	[doc_head_no] [varchar](30) NULL,
	[doc_short_name] [varchar](5) NULL,
	[doc_file_name] [varchar](200) NULL,
	[create_ind] [varchar](2) NULL,
	[create_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NULL,
	[cust_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_DOC_SEND_US_QUEUE] PRIMARY KEY CLUSTERED 
(
	[doc_queue_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_SEND_US_QUEUE] TO  SCHEMA OWNER 
GO
