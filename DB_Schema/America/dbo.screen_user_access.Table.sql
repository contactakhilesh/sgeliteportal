USE [AMERICA]
GO
/****** Object:  Table [dbo].[screen_user_access]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screen_user_access](
	[role_id] [varchar](20) NOT NULL,
	[module] [varchar](20) NOT NULL,
	[screen_name] [varchar](50) NOT NULL,
	[object_name] [varchar](50) NOT NULL,
	[s_read] [varchar](1) NULL,
	[s_write] [varchar](1) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_screen_user_access] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[module] ASC,
	[screen_name] ASC,
	[object_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[screen_user_access] TO  SCHEMA OWNER 
GO
