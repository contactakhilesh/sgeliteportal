USE [appdata]
GO
/****** Object:  Table [dbo].[DRIVER_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DRIVER_MAST]
GO
/****** Object:  Table [dbo].[DRIVER_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DRIVER_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DRIVER_MAST](
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[driver_id] [decimal](18, 0) NOT NULL,
	[driver_name] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[driver_ic_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[driver_tel_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[active_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_updated_dt] [datetime] NULL,
	[JOINING_DATE] [datetime] NULL,
	[TRAINED_BY] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRAINING_START_DATE] [datetime] NULL,
	[TRAINING_END_DATE] [datetime] NULL,
	[REMARK] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DRIVER_MAST] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DRIVER_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DRIVER_MAST] TO [public] AS [dbo]
GO
