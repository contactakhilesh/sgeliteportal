USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_sent_auto_error_log](
	[export_n] [numeric](12, 0) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[job_no] [varchar](14) NULL,
	[error] [varchar](255) NULL,
	[rowid] [numeric](20, 0) NOT NULL
) ON [PRIMARY]

GO
