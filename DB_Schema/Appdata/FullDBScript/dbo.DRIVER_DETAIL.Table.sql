USE [appdata]
GO
/****** Object:  Table [dbo].[DRIVER_DETAIL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DRIVER_DETAIL]
GO
/****** Object:  Table [dbo].[DRIVER_DETAIL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DRIVER_DETAIL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DRIVER_DETAIL](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[driver_seq] [decimal](18, 0) NOT NULL,
	[driver_id] [decimal](18, 0) NULL,
	[driver_name] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[driver_ic_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[driver_tel_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DRIVER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[driver_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DRIVER_DETAIL] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DRIVER_DETAIL] TO [public] AS [dbo]
GO
