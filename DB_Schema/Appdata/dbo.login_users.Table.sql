USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [login_users](
	[userid] [varchar](10) NOT NULL,
	[msg] [text] NULL,
	[login_d] [datetime] NULL,
	[terminate] [varchar](1) NULL,
	[loop_yn] [char](1) NULL,
 CONSTRAINT [PK_login_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
