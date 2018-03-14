USE [AMERICA]
GO
/****** Object:  Table [dbo].[onhold_reason_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onhold_reason_mast](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[onhold_reason] [varchar](255) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[onhold_reason_mast] TO  SCHEMA OWNER 
GO
