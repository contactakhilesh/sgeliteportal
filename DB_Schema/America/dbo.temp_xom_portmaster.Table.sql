USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_xom_portmaster]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_xom_portmaster](
	[port_load_name] [varchar](50) NULL,
	[msg_seq_n] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_xom_portmaster] TO  SCHEMA OWNER 
GO
