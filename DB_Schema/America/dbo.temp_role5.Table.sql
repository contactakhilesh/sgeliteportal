USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_role5]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_role5](
	[custid] [varchar](50) NOT NULL,
	[roleid] [numeric](18, 0) NOT NULL,
	[rolename] [varchar](20) NULL,
	[userid] [varchar](10) NOT NULL,
	[username] [varchar](20) NULL,
	[email] [varchar](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_role5] TO  SCHEMA OWNER 
GO
