USE [AMERICA]
GO
/****** Object:  Table [dbo].[NC_TEMP_TABLE]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NC_TEMP_TABLE](
	[job_n] [numeric](9, 0) NOT NULL,
	[old_code] [varchar](50) NOT NULL,
	[new_code] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[NC_TEMP_TABLE] TO  SCHEMA OWNER 
GO
