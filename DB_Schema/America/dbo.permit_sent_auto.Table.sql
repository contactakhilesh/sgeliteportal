USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_sent_auto]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_sent_auto](
	[export_n] [numeric](12, 0) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[job_no] [varchar](14) NULL,
	[error] [varchar](255) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_permit_sent_auto] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_sent_auto] TO  SCHEMA OWNER 
GO
