USE [AMERICA]
GO
/****** Object:  Table [dbo].[ascii_table]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ascii_table](
	[ascii_code] [int] NULL,
	[char_value] [char](2) NULL,
	[default_value] [varchar](10) NULL,
	[xml_value] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[ascii_table] TO  SCHEMA OWNER 
GO
