USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_BU]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_BU](
	[bu_parent_id] [int] NULL,
	[bu_name] [varchar](100) NULL,
	[cust_id] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_BU] TO  SCHEMA OWNER 
GO
