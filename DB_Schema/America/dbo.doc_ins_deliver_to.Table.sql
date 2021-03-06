USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_ins_deliver_to]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_ins_deliver_to](
	[doc_head_no] [varchar](100) NOT NULL,
	[line_no] [int] NOT NULL,
	[attention] [varchar](100) NULL,
	[company] [varchar](50) NULL,
	[address] [varchar](300) NULL,
	[remarks] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[cust_name] [varchar](500) NULL,
	[special_instruction] [varchar](100) NULL,
 CONSTRAINT [PK_doc_trans_deliver_to] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_ins_deliver_to] TO  SCHEMA OWNER 
GO
