USE [AMERICA]
GO
/****** Object:  Table [dbo].[office_master]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[office_master](
	[mapmid] [float] NULL,
	[officecode] [char](10) NULL,
	[hqofficecode] [char](10) NULL,
	[description] [char](100) NULL,
	[ipaddress] [char](40) NULL,
	[adminemail] [char](100) NULL,
	[valid] [float] NULL,
	[lastupdate] [datetime] NULL,
	[seaconnectdbEnv] [char](10) NULL,
	[portCode] [char](50) NULL,
	[seaconnectDBName] [char](50) NULL,
	[seaconnectDBIP] [char](50) NULL,
	[iojt_email_add] [char](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[office_master] TO  SCHEMA OWNER 
GO
