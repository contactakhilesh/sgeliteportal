USE [appdata]
GO
/****** Object:  Table [dbo].[material_property]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[material_property]
GO
/****** Object:  Table [dbo].[material_property]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[material_property]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[material_property](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_head_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[analysis_property] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[unit_of_measure] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[results] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[specifications] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[test_method] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__material_propert__751ACB15] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[material_property] TO  SCHEMA OWNER 
GO
