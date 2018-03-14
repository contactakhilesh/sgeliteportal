USE [AMERICA]
GO
/****** Object:  Table [dbo].[AutoInvCode_Mast]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoInvCode_Mast](
	[autoinvcode] [varchar](5) NOT NULL,
	[autoinvdesc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AutoInvCode_Mast] TO  SCHEMA OWNER 
GO
