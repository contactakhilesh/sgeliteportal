USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [material_property](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_head_no] [varchar](255) NULL,
	[analysis_property] [varchar](255) NULL,
	[unit_of_measure] [varchar](50) NULL,
	[results] [varchar](50) NULL,
	[specifications] [varchar](50) NULL,
	[test_method] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
