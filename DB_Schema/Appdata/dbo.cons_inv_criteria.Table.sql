USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cons_inv_criteria](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ac_tr_no] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_cons_inv_criteria] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
