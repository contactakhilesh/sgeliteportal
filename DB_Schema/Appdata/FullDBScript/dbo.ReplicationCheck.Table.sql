USE [appdata]
GO
/****** Object:  Table [dbo].[ReplicationCheck]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ReplicationCheck]
GO
/****** Object:  Table [dbo].[ReplicationCheck]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplicationCheck]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReplicationCheck](
	[TimeStamp] [int] NOT NULL,
 CONSTRAINT [PK_ReplicationCheck] PRIMARY KEY CLUSTERED 
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ReplicationCheck] TO  SCHEMA OWNER 
GO
