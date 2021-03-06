USE [appdata]
GO
/****** Object:  Index [I_holidaydate]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_holidaydate] ON [dbo].[PUBLIC_HOLIDAYS]
GO
/****** Object:  Table [dbo].[PUBLIC_HOLIDAYS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PUBLIC_HOLIDAYS]
GO
/****** Object:  Table [dbo].[PUBLIC_HOLIDAYS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUBLIC_HOLIDAYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PUBLIC_HOLIDAYS](
	[officecode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[holidayyear] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[holidaydate] [datetime] NOT NULL,
	[holidayname] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[holidayremark] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[holidayid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK__PUBLIC_HOLIDAYS__16700691] PRIMARY KEY CLUSTERED 
(
	[holidayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PUBLIC_HOLIDAYS] TO  SCHEMA OWNER 
GO
/****** Object:  Index [I_holidaydate]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLIC_HOLIDAYS]') AND name = N'I_holidaydate')
CREATE NONCLUSTERED INDEX [I_holidaydate] ON [dbo].[PUBLIC_HOLIDAYS]
(
	[holidaydate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
