USE [AMERICA]
GO
/****** Object:  Table [dbo].[UOM_MAP]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOM_MAP](
	[PKG_CODE] [varchar](20) NULL,
	[DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[UOM_MAP] TO  SCHEMA OWNER 
GO
