USE [AMERICA]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Environment] [varchar](20) NOT NULL,
	[CustomterId] [varchar](20) NOT NULL,
	[ColumnName] [char](100) NOT NULL,
	[Description] [varchar](1000) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Table_1] TO  SCHEMA OWNER 
GO
