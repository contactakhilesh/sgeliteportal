USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [emailNotifier](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[is_past_data] [varchar](1) NULL,
	[email_sent] [datetime] NOT NULL,
	[type] [varchar](8) NULL,
	[seq_n] [int] NOT NULL,
	[actiondate] [datetime] NULL,
 CONSTRAINT [PK_EmailNotifier_Id] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
