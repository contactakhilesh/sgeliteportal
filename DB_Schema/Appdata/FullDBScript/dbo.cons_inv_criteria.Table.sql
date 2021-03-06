USE [appdata]
GO
/****** Object:  Index [cons_inv_criteria_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [cons_inv_criteria_idx1] ON [dbo].[cons_inv_criteria]
GO
/****** Object:  Table [dbo].[cons_inv_criteria]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[cons_inv_criteria]
GO
/****** Object:  Table [dbo].[cons_inv_criteria]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cons_inv_criteria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cons_inv_criteria](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ac_tr_no] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_cons_inv_criteria] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[cons_inv_criteria] TO  SCHEMA OWNER 
GO
/****** Object:  Index [cons_inv_criteria_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cons_inv_criteria]') AND name = N'cons_inv_criteria_idx1')
CREATE NONCLUSTERED INDEX [cons_inv_criteria_idx1] ON [dbo].[cons_inv_criteria]
(
	[ac_tr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
