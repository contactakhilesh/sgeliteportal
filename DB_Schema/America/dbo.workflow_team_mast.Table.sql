USE [AMERICA]
GO
/****** Object:  Table [dbo].[workflow_team_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflow_team_mast](
	[team_id] [varchar](10) NOT NULL,
	[team_desc] [varchar](100) NULL,
 CONSTRAINT [PK_workflow_team_mast] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[workflow_team_mast] TO  SCHEMA OWNER 
GO
