USE [appdata]
GO
/****** Object:  Table [dbo].[doc_ins_deliver_to]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_ins_deliver_to]
GO
/****** Object:  Table [dbo].[doc_ins_deliver_to]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_ins_deliver_to]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_ins_deliver_to](
	[doc_head_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[attention] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_name] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_instruction] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_trans_deliver_to] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_ins_deliver_to] TO  SCHEMA OWNER 
GO
