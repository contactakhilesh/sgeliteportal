USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_TEMP_TABLE](
	[job_n] [numeric](9, 0) NOT NULL,
	[old_code] [varchar](50) NOT NULL,
	[new_code] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
