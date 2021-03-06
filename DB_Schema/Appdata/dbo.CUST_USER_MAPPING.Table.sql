USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_USER_MAPPING](
	[custid] [varchar](50) NOT NULL,
	[roleid] [numeric](18, 0) NOT NULL,
	[rolename] [varchar](20) NULL,
	[userid] [varchar](10) NOT NULL,
	[username] [varchar](20) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK_CUST_USER_MAPPING] PRIMARY KEY CLUSTERED 
(
	[custid] ASC,
	[roleid] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
