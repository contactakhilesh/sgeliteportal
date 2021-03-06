USE [appdata]
GO
/****** Object:  Table [dbo].[xom_log]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xom_log]
GO
/****** Object:  Table [dbo].[xom_log]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xom_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xom_log](
	[file_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[edi_type] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[error_msg] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[process_date] [datetime] NULL,
	[scEnv] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_xom_log] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xom_log] TO  SCHEMA OWNER 
GO
