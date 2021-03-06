USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_MANUFACTURER_DECLARATION](
	[doc_head_no] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[lot_no] [varchar](255) NULL,
	[q1] [varchar](5) NULL,
	[q2] [varchar](5) NULL,
	[q3] [varchar](5) NULL,
	[q4] [varchar](5) NULL,
	[q5] [varchar](5) NULL,
	[q6] [varchar](5) NULL,
	[q7a] [varchar](5) NULL,
	[q7b] [varchar](5) NULL,
	[q7c] [varchar](5) NULL,
	[q8] [varchar](5) NULL,
	[q9] [varchar](5) NULL,
	[q10] [varchar](5) NULL,
	[user_id] [varchar](50) NULL,
	[created_date] [datetime] NULL,
	[producer_by] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[date_issued] [datetime] NULL,
	[line_no] [varchar](50) NULL,
	[cont_num] [varchar](50) NULL
) ON [PRIMARY]

GO
