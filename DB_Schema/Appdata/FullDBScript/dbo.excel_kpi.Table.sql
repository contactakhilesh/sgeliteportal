USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__z__418F6EC0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__y__409B4A87]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__x__3FA7264E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__w__3EB30215]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__v__3DBEDDDC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__u__3CCAB9A3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__t__3BD6956A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__s__3AE27131]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__r__39EE4CF8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__q__38FA28BF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi] DROP CONSTRAINT IF EXISTS [DF__excel_kpi__p__38060486]
GO
/****** Object:  Table [dbo].[excel_kpi]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[excel_kpi]
GO
/****** Object:  Table [dbo].[excel_kpi]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[excel_kpi](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[a] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[c] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[d] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[e] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[f] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[g] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[h] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[i] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[j] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[k] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[l] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[m] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[n] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[o] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[p] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[r] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[t] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[u] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[v] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[w] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[x] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[y] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[z] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_excel_kpi] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[excel_kpi] TO  SCHEMA OWNER 
GO
