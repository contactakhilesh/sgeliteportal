USE [AMERICA]
GO
/****** Object:  Table [dbo].[DROP_DOWN_DESC_REF]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DROP_DOWN_DESC_REF](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomterId] [varchar](20) NOT NULL,
	[ColumnName] [char](100) NOT NULL,
	[Description] [varchar](1000) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DROP_DOWN_DESC_REF] TO  SCHEMA OWNER 
GO
