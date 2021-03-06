USE [AMERICA]
GO
/****** Object:  Table [dbo].[excel_kpi_v3]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excel_kpi_v3](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[a] [varchar](10) NULL,
	[b] [varchar](100) NULL,
	[c] [varchar](15) NULL,
	[d] [varchar](255) NULL,
	[e] [varchar](15) NULL,
	[f] [varchar](15) NULL,
	[g] [varchar](15) NULL,
	[h] [varchar](15) NULL,
	[i] [varchar](15) NULL,
	[j] [varchar](15) NULL,
	[k] [varchar](15) NULL,
	[l] [varchar](15) NULL,
	[m] [varchar](15) NULL,
	[n] [varchar](15) NULL,
	[o] [varchar](15) NULL,
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
	[remarks] [varchar](256) NULL,
 CONSTRAINT [PK_excel_kpi_v3] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[excel_kpi_v3] TO  SCHEMA OWNER 
GO
