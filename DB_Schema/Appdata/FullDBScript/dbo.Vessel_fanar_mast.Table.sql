USE [appdata]
GO
/****** Object:  Table [dbo].[Vessel_fanar_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Vessel_fanar_mast]
GO
/****** Object:  Table [dbo].[Vessel_fanar_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vessel_fanar_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vessel_fanar_mast](
	[Plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Vessel_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fanar_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_date] [datetime] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Vessel_f__4B5BD7F8432F351D] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Vessel_fanar_mast] TO  SCHEMA OWNER 
GO
