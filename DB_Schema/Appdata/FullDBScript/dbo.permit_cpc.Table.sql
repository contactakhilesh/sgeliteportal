USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cpc]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cpc]
GO
/****** Object:  Table [dbo].[permit_cpc]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cpc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cpc](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[ct_pc_idx] [numeric](4, 0) NOT NULL,
	[ct_pc_code] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cpc] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[ct_pc_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cpc] TO  SCHEMA OWNER 
GO
GRANT DELETE ON [dbo].[permit_cpc] TO [public] AS [dbo]
GO
GRANT INSERT ON [dbo].[permit_cpc] TO [public] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[permit_cpc] TO [public] AS [dbo]
GO
GRANT SELECT ON [dbo].[permit_cpc] TO [public] AS [dbo]
GO
GRANT UPDATE ON [dbo].[permit_cpc] TO [public] AS [dbo]
GO
