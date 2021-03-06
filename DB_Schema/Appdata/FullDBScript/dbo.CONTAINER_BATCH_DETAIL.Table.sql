USE [appdata]
GO
/****** Object:  Table [dbo].[CONTAINER_BATCH_DETAIL]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CONTAINER_BATCH_DETAIL]
GO
/****** Object:  Table [dbo].[CONTAINER_BATCH_DETAIL]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CONTAINER_BATCH_DETAIL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CONTAINER_BATCH_DETAIL](
	[export_n] [numeric](9, 0) NULL,
	[container_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[batch_order] [int] NULL,
	[batch_number] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[quantity] [numeric](12, 3) NULL,
	[package_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manufacture_date] [datetime] NULL,
	[expiry_date] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CONTAINER_BATCH_DETAIL] TO  SCHEMA OWNER 
GO
