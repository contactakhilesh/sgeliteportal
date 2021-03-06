USE [appdata]
GO
/****** Object:  Trigger [postupdate_audit_transhipmentheader]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_transhipmentheader]
GO
/****** Object:  Trigger [postinsert_audit_transhipmentheader]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_transhipmentheader]
GO
/****** Object:  Trigger [postdelete_audit_transhipmentheader]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_transhipmentheader]
GO
/****** Object:  Table [dbo].[TranshipmentHeader]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TranshipmentHeader]
GO
/****** Object:  Table [dbo].[TranshipmentHeader]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TranshipmentHeader]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TranshipmentHeader](
	[TranshipmentId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[officeintref] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OrderType] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[recordFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TranshipmentPort] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Vessel] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OriginalETADate] [datetime] NULL,
	[OriginalETDDate] [datetime] NULL,
	[RevisedETADate] [datetime] NULL,
	[RevisedETDDate] [datetime] NULL,
	[Reason] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TranshipmentATD] [datetime] NULL,
	[ChangesInETAatDischarge] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RevisedProjectedETA] [datetime] NULL,
	[recordStatus] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[createdby] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[updatedby] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[ref_n] [numeric](9, 0) NULL,
	[transhipmentcountry] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TranshipmentATA] [datetime] NULL,
 CONSTRAINT [PK__TranshipmentHead__63EEA865] PRIMARY KEY CLUSTERED 
(
	[TranshipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TranshipmentHeader] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[TranshipmentHeader] TO [public] AS [dbo]
GO
