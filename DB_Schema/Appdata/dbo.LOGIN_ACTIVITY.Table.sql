USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LOGIN_ACTIVITY](
	[login_name] [varchar](100) NOT NULL,
	[login_id] [varchar](50) NOT NULL,
	[login_date] [datetime] NOT NULL,
	[locacion] [varchar](50) NOT NULL,
	[ramarks] [varchar](500) NULL,
 CONSTRAINT [PK_LOGIN_ACTIVITY] PRIMARY KEY CLUSTERED 
(
	[login_name] ASC,
	[login_id] ASC,
	[login_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
