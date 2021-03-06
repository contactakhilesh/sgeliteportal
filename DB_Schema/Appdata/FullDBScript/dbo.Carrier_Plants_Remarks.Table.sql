USE [appdata]
GO
/****** Object:  Table [dbo].[Carrier_Plants_Remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[Carrier_Plants_Remarks]
GO
/****** Object:  Table [dbo].[Carrier_Plants_Remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carrier_Plants_Remarks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Carrier_Plants_Remarks](
	[port_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Remarks_plant] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks_carrier] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Carrier_Plants_Remarks] TO  SCHEMA OWNER 
GO
