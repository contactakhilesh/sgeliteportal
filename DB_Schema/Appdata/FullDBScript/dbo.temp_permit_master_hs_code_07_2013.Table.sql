USE [appdata]
GO
/****** Object:  Table [dbo].[temp_permit_master_hs_code_07_2013]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_permit_master_hs_code_07_2013]
GO
/****** Object:  Table [dbo].[temp_permit_master_hs_code_07_2013]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_permit_master_hs_code_07_2013]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_permit_master_hs_code_07_2013](
	[hs_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hs_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_permit_master_hs_code_07_2013] TO  SCHEMA OWNER 
GO
