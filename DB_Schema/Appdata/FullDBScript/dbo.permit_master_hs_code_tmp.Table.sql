USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_hs_code_tmp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_hs_code_tmp]
GO
/****** Object:  Table [dbo].[permit_master_hs_code_tmp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_hs_code_tmp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_hs_code_tmp](
	[hs_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_uon] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_permit_master_hs_code_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_hs_code_tmp] TO  SCHEMA OWNER 
GO
