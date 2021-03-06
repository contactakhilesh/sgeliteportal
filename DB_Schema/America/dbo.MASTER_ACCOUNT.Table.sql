USE [AMERICA]
GO
/****** Object:  Table [dbo].[MASTER_ACCOUNT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_ACCOUNT](
	[ACCT_ID] [int] NULL,
	[SHORTDESC] [char](50) NULL,
	[LONGDESC] [char](500) NULL,
	[MANAGER_ID] [char](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[MASTER_ACCOUNT] TO  SCHEMA OWNER 
GO
