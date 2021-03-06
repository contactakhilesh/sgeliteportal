USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gz_hk_request](
	[title] [char](100) NULL,
	[status] [char](10) NULL,
	[application] [char](20) NULL,
	[assigned_to] [char](20) NULL,
	[description] [char](4099) NULL,
	[dept_code] [char](10) NULL,
	[reqested_dt] [char](10) NULL,
	[requested_by] [char](20) NULL
) ON [PRIMARY]

GO
