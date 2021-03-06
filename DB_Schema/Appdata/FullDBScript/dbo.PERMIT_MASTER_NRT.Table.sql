USE [appdata]
GO
/****** Object:  Table [dbo].[PERMIT_MASTER_NRT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PERMIT_MASTER_NRT]
GO
/****** Object:  Table [dbo].[PERMIT_MASTER_NRT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PERMIT_MASTER_NRT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PERMIT_MASTER_NRT](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nrt] [numeric](10, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PERMIT_MASTER_NRT] TO  SCHEMA OWNER 
GO
