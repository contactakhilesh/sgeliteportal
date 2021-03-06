USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEAM_MEMBERS_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEAM_MEMBERS_MAST](
	[user_id] [varchar](20) NOT NULL,
	[team] [varchar](20) NOT NULL,
	[team_lead] [varchar](20) NOT NULL,
	[date_created] [datetime] NULL,
	[created_by] [varchar](20) NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
 CONSTRAINT [PK_TEAM_MEMBERS] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[team] ASC,
	[team_lead] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEAM_MEMBERS_MAST] TO  SCHEMA OWNER 
GO
