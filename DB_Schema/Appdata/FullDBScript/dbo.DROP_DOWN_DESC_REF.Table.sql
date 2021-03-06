USE [appdata]
GO
/****** Object:  Table [dbo].[DROP_DOWN_DESC_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DROP_DOWN_DESC_REF]
GO
/****** Object:  Table [dbo].[DROP_DOWN_DESC_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DROP_DOWN_DESC_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DROP_DOWN_DESC_REF](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomterId] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ColumnName] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DROP_DOWN_DESC_REF] TO  SCHEMA OWNER 
GO
