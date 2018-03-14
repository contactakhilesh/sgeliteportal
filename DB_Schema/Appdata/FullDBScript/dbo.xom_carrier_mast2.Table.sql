USE [appdata]
GO
/****** Object:  Table [dbo].[xom_carrier_mast2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xom_carrier_mast2]
GO
/****** Object:  Table [dbo].[xom_carrier_mast2]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xom_carrier_mast2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xom_carrier_mast2](
	[carrier_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xom_carrier_mast2] TO  SCHEMA OWNER 
GO
