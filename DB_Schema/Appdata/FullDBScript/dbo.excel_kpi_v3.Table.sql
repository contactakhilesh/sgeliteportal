USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__z__6661CC13]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__y__656DA7DA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__x__647983A1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__w__63855F68]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__v__62913B2F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__u__619D16F6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__t__60A8F2BD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__s__5FB4CE84]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__r__5EC0AA4B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__q__5DCC8612]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__p__5CD861D9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__o__5BE43DA0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__n__5AF01967]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__m__59FBF52E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__l__5907D0F5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__k__5813ACBC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__j__571F8883]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__i__562B644A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__h__55374011]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__g__54431BD8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__f__534EF79F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_kpi_v3] DROP CONSTRAINT IF EXISTS [DF__excel_kpi_v3__e__525AD366]
GO
/****** Object:  Table [dbo].[excel_kpi_v3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[excel_kpi_v3]
GO
/****** Object:  Table [dbo].[excel_kpi_v3]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_kpi_v3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[excel_kpi_v3](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[a] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[c] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[d] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[e] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[f] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[g] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[h] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[i] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[j] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[k] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[l] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[m] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[n] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[o] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[remarks] [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_excel_kpi_v3] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[excel_kpi_v3] TO  SCHEMA OWNER 
GO
GRANT DELETE ON [dbo].[excel_kpi_v3] TO [public] AS [dbo]
GO
GRANT INSERT ON [dbo].[excel_kpi_v3] TO [public] AS [dbo]
GO
GRANT SELECT ON [dbo].[excel_kpi_v3] TO [public] AS [dbo]
GO
GRANT UPDATE ON [dbo].[excel_kpi_v3] TO [public] AS [dbo]
GO
