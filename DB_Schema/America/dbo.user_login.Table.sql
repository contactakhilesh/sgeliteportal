USE [AMERICA]
GO
/****** Object:  Table [dbo].[user_login]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_login](
	[user_name] [varchar](50) NULL,
	[user_id] [varchar](15) NOT NULL,
	[password] [varchar](20) NULL,
	[user_type] [varchar](20) NULL,
	[cust_id] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[last_login] [datetime] NULL,
	[last_time_password_update] [datetime] NULL,
 CONSTRAINT [PK__user_log__B9BE370F56A130ED] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[user_login] TO  SCHEMA OWNER 
GO
