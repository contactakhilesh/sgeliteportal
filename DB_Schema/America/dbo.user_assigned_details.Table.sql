USE [AMERICA]
GO
/****** Object:  Table [dbo].[user_assigned_details]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_assigned_details](
	[job_no] [numeric](20, 0) NOT NULL,
	[user_id] [varchar](30) NULL,
	[date] [datetime] NULL,
	[action] [varchar](30) NOT NULL,
	[assigned_by] [varchar](20) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[user_assigned_details] TO  SCHEMA OWNER 
GO
