USE [AMERICA]
GO
/****** Object:  Table [dbo].[EGS_DEFAULT_VALUES]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EGS_DEFAULT_VALUES](
	[tab_location] [varchar](100) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[column_name] [varchar](100) NOT NULL,
	[default_value] [varchar](250) NULL,
	[different_logic] [varchar](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EGS_DEFAULT_VALUES] TO  SCHEMA OWNER 
GO
