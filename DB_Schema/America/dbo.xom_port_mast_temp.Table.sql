USE [AMERICA]
GO
/****** Object:  Table [dbo].[xom_port_mast_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xom_port_mast_temp](
	[port_load_name] [varchar](50) NULL,
	[elite_port_code] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[xom_port_mast_temp] TO  SCHEMA OWNER 
GO
