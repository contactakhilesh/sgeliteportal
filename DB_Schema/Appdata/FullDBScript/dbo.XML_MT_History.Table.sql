USE [appdata]
GO
/****** Object:  Table [dbo].[XML_MT_History]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_MT_History]
GO
/****** Object:  Table [dbo].[XML_MT_History]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_MT_History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_MT_History](
	[seq_n] [numeric](18, 0) NOT NULL,
	[msg_seq_n] [numeric](18, 0) NOT NULL,
	[lc_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[user_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_d] [datetime] NOT NULL,
	[action_v_a] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_n] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_MT_History] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_MT_History] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_MT_History] TO [public] AS [dbo]
GO
