USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__compa__33E20495]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__conta__32EDE05C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__title__31F9BC23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__user___310597EA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__produ__301173B1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN] DROP CONSTRAINT IF EXISTS [DF__DOC_DECLA__impor__29647622]
GO
/****** Object:  Table [dbo].[DOC_DECLARATION_OF_ORIGIN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_DECLARATION_OF_ORIGIN]
GO
/****** Object:  Table [dbo].[DOC_DECLARATION_OF_ORIGIN]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DECLARATION_OF_ORIGIN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_DECLARATION_OF_ORIGIN](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[document_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signature_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cosignee] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[is_deleted] [int] NULL,
	[consigneeAddress1] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consigneeAddress2] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consigneeAddress3] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consigneeAddress4] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_by] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[producer_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[producer_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_info] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__DOC_DECL__3213E83F5FF590FD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_DECLARATION_OF_ORIGIN] TO  SCHEMA OWNER 
GO
