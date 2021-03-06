USE [appdata]
GO
/****** Object:  Table [dbo].[MASTER_OFFICE_NOT_BE_USED]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[MASTER_OFFICE_NOT_BE_USED]
GO
/****** Object:  Table [dbo].[MASTER_OFFICE_NOT_BE_USED]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MASTER_OFFICE_NOT_BE_USED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MASTER_OFFICE_NOT_BE_USED](
	[mapmid] [int] NOT NULL,
	[officecode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hqofficecode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ipaddress] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[adminemail] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[valid] [int] NOT NULL,
	[lastupdate] [datetime] NULL,
	[dbEnv] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tes_offipmaster] PRIMARY KEY CLUSTERED 
(
	[mapmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[MASTER_OFFICE_NOT_BE_USED] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[MASTER_OFFICE_NOT_BE_USED] TO [public] AS [dbo]
GO
