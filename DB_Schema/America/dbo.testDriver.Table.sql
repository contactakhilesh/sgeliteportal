USE [AMERICA]
GO
/****** Object:  Table [dbo].[testDriver]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testDriver](
	[field1] [varchar](10) NULL,
	[field2] [varchar](20) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[testDriver] TO  SCHEMA OWNER 
GO
