USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [direct_collection_approver](
	[approver_id] [varchar](50) NOT NULL,
	[approver_name] [varchar](50) NOT NULL,
	[approver_email] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
