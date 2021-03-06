USE [appdata]
GO
/****** Object:  Table [dbo].[DATE_VALIDATIONS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DATE_VALIDATIONS]
GO
/****** Object:  Table [dbo].[DATE_VALIDATIONS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DATE_VALIDATIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DATE_VALIDATIONS](
	[screen_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[region_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[key_field] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[againts_field] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FROM_D] [numeric](10, 0) NULL,
	[TO_D] [numeric](10, 0) NULL,
 CONSTRAINT [DATE_VALIDATIONS_PK] PRIMARY KEY NONCLUSTERED 
(
	[screen_name] ASC,
	[region_id] ASC,
	[key_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DATE_VALIDATIONS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DATE_VALIDATIONS] TO [public] AS [dbo]
GO
