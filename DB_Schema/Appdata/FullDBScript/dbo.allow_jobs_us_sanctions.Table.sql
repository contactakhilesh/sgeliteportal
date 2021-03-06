USE [appdata]
GO
/****** Object:  Table [dbo].[allow_jobs_us_sanctions]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[allow_jobs_us_sanctions]
GO
/****** Object:  Table [dbo].[allow_jobs_us_sanctions]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[allow_jobs_us_sanctions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[allow_jobs_us_sanctions](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[APPROVED_BY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[APPROVED_DT] [datetime] NOT NULL,
	[REMARKS] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_allow_jobs_us_sanctions] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[CUST_ORD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[allow_jobs_us_sanctions] TO  SCHEMA OWNER 
GO
