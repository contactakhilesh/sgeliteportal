USE [appdata]
GO
/****** Object:  Table [dbo].[temp_role4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_role4]
GO
/****** Object:  Table [dbo].[temp_role4]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_role4]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_role4](
	[cont_seq_n] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_role4] TO  SCHEMA OWNER 
GO
