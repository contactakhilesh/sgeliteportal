USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_BU_ASSINGED]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_BU_ASSINGED](
	[user_id] [varchar](50) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[bu_name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_BU_ASSINGED] TO  SCHEMA OWNER 
GO
