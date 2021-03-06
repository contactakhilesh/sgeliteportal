USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Email_History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceivedDate] [datetime] NOT NULL,
	[Sender] [varchar](1024) NULL,
	[SenderEmail] [varchar](1024) NOT NULL,
	[Recipients] [varchar](4096) NULL,
	[RecipientEmails] [varchar](4096) NOT NULL,
	[Ccs] [varchar](4096) NULL,
	[CcEmails] [varchar](4096) NULL,
	[EmailSubject] [varchar](4096) NULL,
	[Body] [varchar](8000) NULL,
	[AttachmentFilename] [varchar](4096) NULL,
	[HasRepliedBack] [varchar](1) NULL,
	[RepliedDate] [datetime] NULL,
	[EmailId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
