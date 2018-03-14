USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_XOM_CHECK_LTO]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_XOM_CHECK_LTO](
	[from_SO_n] [varchar](50) NOT NULL,
	[from_LTO_n] [varchar](50) NOT NULL,
	[to_SO_n] [varchar](50) NOT NULL,
	[to_LTO_n] [varchar](50) NOT NULL,
	[cancel] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_CHECK_LTO] TO  SCHEMA OWNER 
GO
