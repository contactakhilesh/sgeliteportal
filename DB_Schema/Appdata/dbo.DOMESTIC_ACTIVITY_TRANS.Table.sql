USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_ACTIVITY_TRANS](
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) NOT NULL,
	[act_type] [varchar](20) NOT NULL,
	[est_dt] [datetime] NULL,
	[actual_dt] [datetime] NULL,
	[act_text] [varchar](200) NULL,
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[cust_id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_TRANS] PRIMARY KEY CLUSTERED 
(
	[group_seq] ASC,
	[act_seq] ASC,
	[domestic_job_n] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
