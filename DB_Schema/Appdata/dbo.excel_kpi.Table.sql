USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [excel_kpi](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[a] [varchar](max) NULL,
	[b] [varchar](100) NULL,
	[c] [varchar](100) NULL,
	[d] [varchar](100) NULL,
	[e] [varchar](255) NULL,
	[f] [varchar](255) NULL,
	[g] [varchar](max) NULL,
	[h] [varchar](255) NULL,
	[i] [varchar](100) NULL,
	[j] [varchar](100) NULL,
	[k] [varchar](100) NULL,
	[l] [varchar](100) NULL,
	[m] [varchar](max) NULL,
	[n] [varchar](max) NULL,
	[o] [varchar](max) NULL,
	[p] [varchar](15) NULL,
	[q] [varchar](15) NULL,
	[r] [varchar](15) NULL,
	[s] [varchar](15) NULL,
	[t] [varchar](15) NULL,
	[u] [varchar](15) NULL,
	[v] [varchar](15) NULL,
	[w] [varchar](15) NULL,
	[x] [varchar](15) NULL,
	[y] [varchar](15) NULL,
	[z] [varchar](15) NULL,
 CONSTRAINT [PK_excel_kpi] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
