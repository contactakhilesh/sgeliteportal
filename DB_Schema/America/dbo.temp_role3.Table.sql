USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_role3]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_role3](
	[cont_n] [varchar](30) NULL,
	[seal1] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_role3] TO  SCHEMA OWNER 
GO
