USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_tasks](
	[seq_no] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](30) NULL,
	[last_assign] [varchar](30) NULL,
	[task] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
