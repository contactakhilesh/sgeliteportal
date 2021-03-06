USE [appdata]
GO
/****** Object:  Table [dbo].[BUSINESS_UNIT_ASSIGNED]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[BUSINESS_UNIT_ASSIGNED]
GO
/****** Object:  Table [dbo].[BUSINESS_UNIT_ASSIGNED]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_UNIT_ASSIGNED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_UNIT_ASSIGNED](
	[user_id] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[business_unit_id] [int] NOT NULL,
 CONSTRAINT [PK_BUSINESS_UNIT_ASSIGNED] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[parent_acct_id] ASC,
	[business_unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[BUSINESS_UNIT_ASSIGNED] TO  SCHEMA OWNER 
GO
