USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vendor_group](
	[group_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[group_name] [varchar](150) NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
 CONSTRAINT [PK_vendor_group] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
