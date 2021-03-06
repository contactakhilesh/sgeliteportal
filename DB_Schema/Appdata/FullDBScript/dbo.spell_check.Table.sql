USE [appdata]
GO
/****** Object:  Table [dbo].[spell_check]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[spell_check]
GO
/****** Object:  Table [dbo].[spell_check]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spell_check]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spell_check](
	[ScreeName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ColumnName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ActiveFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[createdby] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[createddate] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_spell_check] PRIMARY KEY CLUSTERED 
(
	[ScreeName] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[spell_check] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[spell_check] TO [public] AS [dbo]
GO
