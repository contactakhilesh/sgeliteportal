USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BKG_SI_EMAIL_ATTCH](
	[rowid] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[field_label] [varchar](255) NULL,
	[bc_req] [varchar](1) NULL
) ON [PRIMARY]

GO
