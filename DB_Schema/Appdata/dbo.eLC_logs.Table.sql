USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [eLC_logs](
	[msg_seq_n] [numeric](18, 0) NOT NULL,
	[msg_type] [varchar](10) NULL,
	[lcNo] [varchar](50) NULL,
	[ref_1] [varchar](100) NULL,
	[job_n] [varchar](15) NULL,
	[user_id] [varchar](15) NULL,
	[apply_d] [datetime] NULL,
	[scEnv] [varchar](10) NULL
) ON [PRIMARY]

GO
