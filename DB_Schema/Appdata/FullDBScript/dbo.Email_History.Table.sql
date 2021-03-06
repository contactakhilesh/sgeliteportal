USE [appdata]
GO
/****** Object:  Table [dbo].[Email_History]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Email_History]
GO
/****** Object:  Table [dbo].[Email_History]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email_History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Email_History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceivedDate] [datetime] NOT NULL,
	[Sender] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SenderEmail] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Recipients] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RecipientEmails] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Ccs] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CcEmails] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailSubject] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Body] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AttachmentFilename] [varchar](4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HasRepliedBack] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RepliedDate] [datetime] NULL,
	[EmailId] [bigint] NULL,
 CONSTRAINT [PK__Email_Hi__3214EC077D50E9BA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Email_History] TO  SCHEMA OWNER 
GO
