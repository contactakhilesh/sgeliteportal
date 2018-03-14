USE [appdata]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp1]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp1](
	[exp_imp_n] [numeric](10, 0) NULL,
	[QUICK_TRACK_NO] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp1] TO  SCHEMA OWNER 
GO
