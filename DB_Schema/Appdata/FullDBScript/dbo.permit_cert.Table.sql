USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cert]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cert]
GO
/****** Object:  Table [dbo].[permit_cert]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cert](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[app_prod_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[app_prod_desc] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_type1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_desc1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_type2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_desc2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_copy1] [decimal](2, 0) NULL,
	[cert_copy2] [decimal](2, 0) NULL,
	[currency_code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_year] [decimal](4, 0) NULL,
	[gsp_donor_cty] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gsp_donor_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[content_percent] [decimal](3, 0) NULL,
	[add_cert_dtl] [varchar](175) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tpt_dtl] [varchar](175) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cert] TO  SCHEMA OWNER 
GO
