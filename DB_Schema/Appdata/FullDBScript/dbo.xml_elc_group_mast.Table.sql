USE [appdata]
GO
/****** Object:  Table [dbo].[xml_elc_group_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_elc_group_mast]
GO
/****** Object:  Table [dbo].[xml_elc_group_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_elc_group_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_elc_group_mast](
	[cust_group_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_group_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_xml_elc_group_mast] PRIMARY KEY CLUSTERED 
(
	[cust_group_id] ASC,
	[cust_group_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_elc_group_mast] TO  SCHEMA OWNER 
GO
