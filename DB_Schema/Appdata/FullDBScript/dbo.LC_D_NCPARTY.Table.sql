USE [appdata]
GO
/****** Object:  Table [dbo].[LC_D_NCPARTY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LC_D_NCPARTY]
GO
/****** Object:  Table [dbo].[LC_D_NCPARTY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LC_D_NCPARTY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LC_D_NCPARTY](
	[LC_NC_PARTYID] [decimal](10, 0) NOT NULL,
	[LC_NC_PARTYNAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_CATE_CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LC_D_NCPARTY] PRIMARY KEY CLUSTERED 
(
	[LC_NC_PARTYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LC_D_NCPARTY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[LC_D_NCPARTY] TO [public] AS [dbo]
GO
