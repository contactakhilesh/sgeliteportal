USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_loc_code_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_loc_code_temp]
GO
/****** Object:  Table [dbo].[permit_master_loc_code_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_loc_code_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_loc_code_temp](
	[loc_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[loc_descs] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_permit_master_loc_code_temp] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_loc_code_temp] TO  SCHEMA OWNER 
GO
