USE [AMERICA]
GO
/****** Object:  Table [dbo].[email_log_details]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_log_details](
	[party_type] [varchar](10) NOT NULL,
	[ref_no] [numeric](9, 0) NOT NULL,
	[email_to] [varchar](255) NULL,
	[email_cc] [varchar](255) NULL,
	[user_id] [varchar](50) NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_email_log_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[email_log_details] TO  SCHEMA OWNER 
GO
