USE [AMERICA]
GO
/****** Object:  Table [dbo].[user_tasks]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_tasks](
	[seq_no] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](30) NULL,
	[last_assign] [varchar](30) NULL,
	[task] [varchar](30) NOT NULL,
	[payment_terms] [varchar](20) NULL,
 CONSTRAINT [PK__user_tas__4B660EB162D1FDA8] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[user_tasks] TO  SCHEMA OWNER 
GO
