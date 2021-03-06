USE [appdata]
GO
/****** Object:  Table [dbo].[DOMESTIC_PROD_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_PROD_CONT]
GO
/****** Object:  Table [dbo].[DOMESTIC_PROD_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_PROD_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_PROD_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[prod_line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seal_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_type_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[select_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DOMESTIC_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[prod_line_no] ASC,
	[prod_id] ASC,
	[cont_line_no] ASC,
	[cont_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_PROD_CONT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_PROD_CONT] TO [public] AS [dbo]
GO
