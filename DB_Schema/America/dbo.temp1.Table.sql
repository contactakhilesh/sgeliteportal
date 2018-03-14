USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1](
	[exp_imp_n] [numeric](10, 0) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
	[ENTRY_D] [datetime] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp1] TO  SCHEMA OWNER 
GO
