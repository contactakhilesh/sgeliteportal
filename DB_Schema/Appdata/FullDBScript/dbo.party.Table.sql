USE [appdata]
GO
/****** Object:  Table [dbo].[party]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[party]
GO
/****** Object:  Table [dbo].[party]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[party]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[party](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[party_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[party_display_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[party_address] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[party_type_id] [int] NOT NULL,
 CONSTRAINT [PK_party_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[party] TO  SCHEMA OWNER 
GO
