USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[party_type]') AND type in (N'U'))
ALTER TABLE [dbo].[party_type] DROP CONSTRAINT IF EXISTS [DF__party_typ__displ__39FA0547]
GO
/****** Object:  Table [dbo].[party_type]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[party_type]
GO
/****** Object:  Table [dbo].[party_type]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[party_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[party_type](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[display_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[logical_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__party_type__3905E10E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[party_type] TO  SCHEMA OWNER 
GO
