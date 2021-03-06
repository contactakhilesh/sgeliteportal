USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [customs_query](
	[export_n] [numeric](10, 0) NULL,
	[job_no] [varchar](14) NULL,
	[user_id] [varchar](10) NULL,
	[complete_ind] [varchar](1) NULL,
	[remarks] [varchar](500) NULL,
 CONSTRAINT [customs_query_idx] UNIQUE NONCLUSTERED 
(
	[export_n] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
