USE [appdata]
GO
/****** Object:  Table [dbo].[doc_app_collect_DefaultDocs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_app_collect_DefaultDocs]
GO
/****** Object:  Table [dbo].[doc_app_collect_DefaultDocs]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect_DefaultDocs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_app_collect_DefaultDocs](
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COUNTRY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[draft_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comm_inv_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comm_inv_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_list_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_list_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_lading_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_lading_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insur_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insur_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[co_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[co_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc4_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc4_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc5_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc5_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__doc_app___31027163016171C0] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_app_collect_DefaultDocs] TO  SCHEMA OWNER 
GO
