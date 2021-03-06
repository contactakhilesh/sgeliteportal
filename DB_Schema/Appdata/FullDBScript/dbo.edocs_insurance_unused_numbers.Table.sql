USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[edocs_insurance_unused_numbers]') AND type in (N'U'))
ALTER TABLE [dbo].[edocs_insurance_unused_numbers] DROP CONSTRAINT IF EXISTS [DF_edocs_insurance_unused_numbers_entry_dt]
GO
/****** Object:  Table [dbo].[edocs_insurance_unused_numbers]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[edocs_insurance_unused_numbers]
GO
/****** Object:  Table [dbo].[edocs_insurance_unused_numbers]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[edocs_insurance_unused_numbers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[edocs_insurance_unused_numbers](
	[cust_id] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[insurance_n] [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entry_by] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_dt] [datetime] NULL,
 CONSTRAINT [PK_edocs_insurance_unused_numbers] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[insurance_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[edocs_insurance_unused_numbers] TO  SCHEMA OWNER 
GO
