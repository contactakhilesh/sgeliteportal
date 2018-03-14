USE [appdata]
GO
/****** Object:  Table [dbo].[entity_types]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[entity_types]
GO
/****** Object:  Table [dbo].[entity_types]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_types]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entity_types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[display_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__entity_t__3213E83F544ED427] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[entity_types] TO  SCHEMA OWNER 
GO
