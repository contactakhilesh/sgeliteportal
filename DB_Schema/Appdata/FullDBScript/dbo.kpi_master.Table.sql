USE [appdata]
GO
/****** Object:  Table [dbo].[kpi_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[kpi_master]
GO
/****** Object:  Table [dbo].[kpi_master]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kpi_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kpi_master](
	[parentacctid] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](3, 0) NOT NULL,
	[kpi_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[date1_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[date2_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_kpi] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[external_kpi] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[external_party] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_kpi_master] PRIMARY KEY CLUSTERED 
(
	[parentacctid] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[kpi_master] TO  SCHEMA OWNER 
GO
