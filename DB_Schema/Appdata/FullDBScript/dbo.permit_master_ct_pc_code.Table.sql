USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_ct_pc_code]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_ct_pc_code]
GO
/****** Object:  Table [dbo].[permit_master_ct_pc_code]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_ct_pc_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_ct_pc_code](
	[ct_pc_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ct_pc_descs] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_permit_master_ct_pc_code] PRIMARY KEY NONCLUSTERED 
(
	[ct_pc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_ct_pc_code] TO  SCHEMA OWNER 
GO
