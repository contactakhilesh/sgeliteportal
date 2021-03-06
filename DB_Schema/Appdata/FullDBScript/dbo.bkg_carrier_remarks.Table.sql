USE [appdata]
GO
/****** Object:  Table [dbo].[bkg_carrier_remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[bkg_carrier_remarks]
GO
/****** Object:  Table [dbo].[bkg_carrier_remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bkg_carrier_remarks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bkg_carrier_remarks](
	[indicator] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_bkg_carrier_remarks] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[bkg_carrier_remarks] TO  SCHEMA OWNER 
GO
