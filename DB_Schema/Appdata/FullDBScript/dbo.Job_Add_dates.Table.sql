USE [appdata]
GO
/****** Object:  Table [dbo].[Job_Add_dates]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Job_Add_dates]
GO
/****** Object:  Table [dbo].[Job_Add_dates]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Job_Add_dates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Job_Add_dates](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Date_Label] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_value] [datetime] NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Job_Add_dates] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Job_Add_dates] TO [public] AS [dbo]
GO
