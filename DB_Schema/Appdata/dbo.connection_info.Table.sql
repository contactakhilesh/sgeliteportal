USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [connection_info](
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[spid] [int] NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[application] [varchar](255) NULL,
	[country_id] [varchar](10) NOT NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_connection_info] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [connection_info_idx1] UNIQUE NONCLUSTERED 
(
	[spid] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
