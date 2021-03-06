USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_casc_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_casc_dt] DROP CONSTRAINT IF EXISTS [DF_permit_casc_dt_item_n]
GO
/****** Object:  Table [dbo].[permit_casc_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_casc_dt]
GO
/****** Object:  Table [dbo].[permit_casc_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_casc_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_casc_dt](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[prod_code] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_n] [numeric](4, 0) NOT NULL,
	[casc_code1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[casc_code2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[casc_code3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduse_desc1] [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduse_desc2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduse_desc3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[item_n] [numeric](4, 0) NOT NULL,
 CONSTRAINT [PK_permit_casc_dt] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[prod_code] ASC,
	[line_n] ASC,
	[item_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_casc_dt] TO  SCHEMA OWNER 
GO
