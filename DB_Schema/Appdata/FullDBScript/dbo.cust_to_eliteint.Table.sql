USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cust_to_eliteint]') AND type in (N'U'))
ALTER TABLE [dbo].[cust_to_eliteint] DROP CONSTRAINT IF EXISTS [DF_cust_to_eliteint_valid]
GO
/****** Object:  Table [dbo].[cust_to_eliteint]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[cust_to_eliteint]
GO
/****** Object:  Table [dbo].[cust_to_eliteint]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cust_to_eliteint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cust_to_eliteint](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[valid] [tinyint] NULL,
	[remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pdf_upload] [tinyint] NULL,
 CONSTRAINT [PK_cust_to_eliteint] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[cust_to_eliteint] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[cust_to_eliteint] TO [public] AS [dbo]
GO
