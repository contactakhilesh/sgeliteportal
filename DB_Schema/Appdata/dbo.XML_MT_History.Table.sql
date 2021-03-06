USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_MT_History](
	[seq_n] [numeric](18, 0) NOT NULL,
	[msg_seq_n] [numeric](18, 0) NOT NULL,
	[lc_no] [varchar](100) NOT NULL,
	[user_id] [varchar](15) NOT NULL,
	[event_d] [datetime] NOT NULL,
	[action_v_a] [varchar](50) NOT NULL,
	[job_n] [varchar](15) NULL,
 CONSTRAINT [PK_XML_MT_History] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
