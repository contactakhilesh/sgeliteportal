USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_BU_ASSINGED](
	[user_id] [varchar](50) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[bu_name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
