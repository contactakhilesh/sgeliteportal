USE [AMERICA]
GO
/****** Object:  Table [dbo].[port_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[port_temp](
	[port_id] [varchar](10) NOT NULL,
	[port_name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[port_temp] TO  SCHEMA OWNER 
GO
