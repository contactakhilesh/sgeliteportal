USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_user_profile]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_user_profile]
GO
/****** Object:  Table [dbo].[permit_master_user_profile]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_user_profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_user_profile](
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dec_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dec_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_name] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_contact] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[active] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_user_profile] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[dec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_user_profile] TO  SCHEMA OWNER 
GO
