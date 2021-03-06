USE [AMERICA]
GO
/****** Object:  Table [dbo].[dbo.user_assigned_details]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo.user_assigned_details](
	[job_no] [numeric](20, 0) NOT NULL,
	[user_id] [varchar](30) NULL,
	[date] [datetime] NULL,
	[action] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dbo.user_assigned_details] TO  SCHEMA OWNER 
GO
