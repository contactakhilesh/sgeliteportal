USE [AMERICA]
GO
/****** Object:  Table [dbo].[AC_GROUP]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AC_GROUP](
	[G_NO] [numeric](2, 0) NOT NULL,
	[G_DESC] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AC_GROUP] TO  SCHEMA OWNER 
GO
