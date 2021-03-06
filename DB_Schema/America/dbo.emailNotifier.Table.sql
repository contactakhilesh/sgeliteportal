USE [AMERICA]
GO
/****** Object:  Table [dbo].[emailNotifier]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailNotifier](
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
ALTER AUTHORIZATION ON [dbo].[emailNotifier] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [emailnotifier_NonClusteredIdx]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [emailnotifier_NonClusteredIdx] ON [dbo].[emailNotifier]
(
	[type] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
