USE [appdata]
GO
/****** Object:  Trigger [TRG_DCONT_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_DCONT_JOBS_UPDATED]
GO
/****** Object:  Table [dbo].[DOMESTIC_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_CONT]
GO
/****** Object:  Table [dbo].[DOMESTIC_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seal_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_type_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lot_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOMESTIC_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_CONT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_CONT] TO [public] AS [dbo]
GO
