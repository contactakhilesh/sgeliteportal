USE [AMERICA]
GO
/****** Object:  Table [dbo].[port_fanar_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[port_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[port_id] [varchar](10) NULL,
	[t_zone] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[port_fanar_mast] TO  SCHEMA OWNER 
GO
